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
		'url'
	],
	#category : 'FederatedLepiter'
}

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
FedWikiPage >> host [

^ self url host
]

{ #category : #accessing }
FedWikiPage >> isView [

^ self url firstPathSegment = 'view'
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
FedWikiPage >> scheme [

	^ self url scheme
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
