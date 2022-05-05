"
I am a Federated Wiki page.
"
Class {
	#name : #FedWikiPage,
	#superclass : #Object,
	#instVars : [
		'title',
		'story',
		'importJournal',
		'url',
		'rawData'
	],
	#classInstVars : [
		'aDictionary',
		'rawData'
	],
	#category : #FederatedLepiter
}

{ #category : #accessing }
FedWikiPage class >> journal [ 
	^ ZnClient new 
	url: 'http://localhost:3000/merge-logic.json', (rawData at:#journal) asString;
	get.
]

{ #category : #accessing }
FedWikiPage >> dataDictionary [

	| dataUrl |
	self isView ifFalse: [
		self inform: 'Please provide a view url for the FedWiki page.'.
		^ self].
	dataUrl := self scheme , '://', self host, '/', self titleSegmentUrl, '.json'.
	^ STONJSON fromString: dataUrl asUrl retrieveContents

]

{ #category : #accessing }
FedWikiPage >> gtDetailsFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Details';
		items: [
			{
				'Journal' -> self journal.
				'Title' -> self title.
				'Story' -> self story.
			}
		];
		column: 'Key' text: [:association | association key];
		column: 'Value' text:  [:association | association value]
]

{ #category : #accessing }
FedWikiPage >> host [

^ self url host
]

{ #category : #accessing }
FedWikiPage >> isView [

^ self url firstPathSegment = 'view'
]

{ #category : #accessing }
FedWikiPage >> journal [
	^ Journal new rawData: (rawData at: #journal).

]

{ #category : #accessing }
FedWikiPage >> jsonData [

	| dataUrl |
	self isView ifFalse: [
		self inform: 'Please provide a view url for the FedWiki page.'.
		^ self].
	dataUrl := self scheme , '://', self host, self titleSegmentUrl, '.json'

]

{ #category : #accessing }
FedWikiPage >> rawData: pageDict [ 
	rawData := pageDict
]

{ #category : #accessing }
FedWikiPage >> scheme [

	^ self url scheme
]

{ #category : #accessing }
FedWikiPage >> story [
	^ (rawData at: #story)
]

{ #category : #accessing }
FedWikiPage >> title [
	^ (rawData at: #title)
]

{ #category : #accessing }
FedWikiPage >> titleSegmentUrl [

	self isView ifFalse: [
		self inform: 'Please provide a view url for the FedWiki page.'.
		^ self].
	^ self url segments last.
]

{ #category : #accessing }
FedWikiPage >> url [

^ url
]

{ #category : #accessing }
FedWikiPage >> url: aString [

url  := aString asZnUrl

]
