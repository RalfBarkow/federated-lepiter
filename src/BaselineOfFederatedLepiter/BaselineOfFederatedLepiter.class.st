Class {
	#name : #BaselineOfFederatedLepiter,
	#superclass : #BaselineOf,
	#category : #BaselineOfFederatedLepiter
}

{ #category : #baseline }
BaselineOfFederatedLepiter >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec 
			baseline: 'Magritte' with: [
				spec repository: 'github://seandenigris/Magritte' ];
			baseline: 'Mocketry' with: [
				spec repository: 'github://dionisiydk/Mocketry' ];
			baseline: 'PharoEnhancements' with: [
				spec repository: 'github://seandenigris/Pharo-Enhancements' ];
			baseline: 'SimplePersistence' with: [
				spec repository: 'github://seandenigris/Simple-Persistence' ].
		spec package: 'Ideas' with: [
			spec requires: #('Magritte' 'Mocketry' 'PharoEnhancements' 'SimplePersistence') ] ].
]

{ #category : #accessing }
BaselineOfIdeas >> customProjectAttributes [
	^ self isGTImage
			ifFalse: [ #(notGToolkit) ]
			ifTrue: [ #(GToolkit) ]
]

{ #category : #accessing }
BaselineOfIdeas >> isGTImage [
	^ RPackageOrganizer default packageNames anySatisfy: [ :pn | pn beginsWith: 'GToolkit-' ]
]

