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
			baseline: 'FederatedLepiter' with: [
				spec 
					
					repository: 'github://RalfBarkow/federated-lepiter' ];

]
