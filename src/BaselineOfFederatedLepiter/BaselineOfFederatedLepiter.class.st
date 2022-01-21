"
I am the Baseline of the Federated Lepiter
"
Class {
	#name : #BaselineOfFederatedLepiter,
	#superclass : #BaselineOf,
	#category : #BaselineOfFederatedLepiter
}

{ #category : #accessing }
BaselineOfFederatedLepiter class >> loadLepiter [
	| currentProperties |
	currentProperties := LeDatabasesRegistry defaultLogicalDatabase properties.
	currentProperties
		addRegisteredDirectory: FileLocator imageDirectory
			/ 'pharo-local'
			/ 'iceberg'
			/ 'RalfBarkow'
			/ 'federated-lepiter'
			/ 'lepiter'.
	
	LeDatabasesRegistry default defaultLogicalDatabase reload.
]

{ #category : #baseline }
BaselineOfFederatedLepiter >> baseline: spec [
	<baseline>
	spec for: #common do: [
		spec
			package: 'FederatedLepiter' ]
]
