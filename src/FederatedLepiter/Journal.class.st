Class {
	#name : #Journal,
	#superclass : #Object,
	#instVars : [
		'rawData'
	],
	#category : #FederatedLepiter
}

{ #category : #accessing }
Journal >> getDetailsFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Details';
		items: [ rawData ];
		column: 'Value' text: #value
]

{ #category : #accessing }
Journal >> rawData: array [ 
	rawData := array
]
