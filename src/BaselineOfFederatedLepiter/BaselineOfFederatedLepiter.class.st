"
I am the Baseline of the Federated Lepiter
"
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
			baseline: 'PharoEnhancements' with: [
				spec repository: 'github://seandenigris/Pharo-Enhancements' ]
			].
]
