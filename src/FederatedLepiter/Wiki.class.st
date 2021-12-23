Class {
	#name : #Wiki,
	#superclass : #Object,
	#instVars : [
		'rawData'
	],
	#category : #FederatedLepiter
}

{ #category : #accessing }
Wiki >> gtRawDataFor: aView [
	<gtView>
	^ aView list
		title: 'Raw Data';
		items: [ rawData associations]
]

{ #category : #accessing }
Wiki >> rawData: dictionary [ 
	rawData := dictionary
	
]

{ #category : #accessing }
Wiki >> slugs [
	^ rawData collect: [:dictionary | Slug new rawData: dictionary]
]
