"
See *Writing And Running TDD Style Tests In Pharo (Smalltalk)* [post](https://becca9941.github.io/principles/2019/07/25/writing-and-running-a-test-in-pharo-smalltalk-tdd-style.html)

"
Class {
	#name : #JournalTest,
	#superclass : #TestCase,
	#category : #FederatedLepiter
}

{ #category : #tests }
JournalTest >> testCreate [
	"See Writing And Running TDD Style Tests In Pharo (Smalltalk)"
	"https://becca9941.github.io/principles/2019/07/25/writing-and-running-a-test-in-pharo-smalltalk-tdd-style.html"
	
	self assert: ((Journal new create) isKindOf: NeoJSONObject).
	self assert: Journal new create asString equals: '{"title":"Computation","story":[],"journal":[{"type":"create","item":{"title":"Computation","story":[]},"date":1651225765617}]}'.
]
