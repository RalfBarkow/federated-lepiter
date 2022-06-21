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
