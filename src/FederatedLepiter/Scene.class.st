"
Scene.vrse File

.vrse file is like .st file; it is a file out format. .st file had !s and methodFor: and those stuff that are not meant for human to write. [wiki](https://wiki.ralfbarkow.ch/view/scenevrse-file)
"
Class {
	#name : #Scene,
	#superclass : #Object,
	#instVars : [
		'rawData'
	],
	#category : #FederatedLepiter
}

{ #category : #accessing }
Scene >> data [
	^ self rawData at: #data
]

{ #category : #accessing }
Scene >> gtRawDataFor: aView [
	<gtView>
	self rawData ifNil: [ ^ aView empty ].
	
	^ aView forward
		title: 'Raw Data';
		object: [ self rawData];
		view: #gtItemsFor:
]

{ #category : #accessing }
Scene >> rawData [
	^ rawData
]

{ #category : #accessing }
Scene >> rawData: dictionary [
	rawData := dictionary 
]
