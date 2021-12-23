Class {
	#name : #Slug,
	#superclass : #Object,
	#instVars : [
		'rawData'
	],
	#category : #FederatedLepiter
}

{ #category : #accessing }
Slug >> gtRawDataFor: aView [
	<gtView>
	self rawData ifNil: [ ^ aView empty ].
	
	^ aView forward
		title: 'Raw Data';
		priority: 20;
		object: [ self rawData ];
		view: #gtItemsFor:
]

{ #category : #accessing }
Slug >> rawData [
	^ rawData
]

{ #category : #accessing }
Slug >> rawData: slug [ 
	rawData := slug
]
