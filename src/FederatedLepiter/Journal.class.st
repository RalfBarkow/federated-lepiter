"
a `Journal` class creates a `journal` instance with `title` and `story`,

{
  ""title"": ""Computation"",
  ""story"": [],
  ""journal"": [
    {
      ""type"": ""create"",
      ""item"": {
        ""title"": ""Computation"",
        ""story"": []
      },
      ""date"": 1651225765617
    }
  ]
}

and the `title` and `story` are copied up one level so that they are stored before the `journal` and evolve at the same level as the `journal` instance. 
"
Class {
	#name : #Journal,
	#superclass : #Object,
	#instVars : [
		'rawData'
	],
	#category : #FederatedLepiter
}

{ #category : #accessing }
Journal >> create [
	"creates a `journal` instance with `title` and `story`"
	^ NeoJSONObject fromString:'{
  "title": "Computation",
  "story": [],
  "journal": [
    {
      "type": "create",
      "item": {
        "title": "Computation",
        "story": []
      },
      "date": 1651225765617
    }
  ]
}'
]

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
