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
Scene >> gtRawDataFor: aView [
	<gtView>
	^ aView list
		title: 'Raw Data';
		items: [ rawData]
]

{ #category : #accessing }
Scene >> rawData: array [
	rawData := array 
]
