comparing
min: aSRSKnowledgeLevel
	^ level < aSRSKnowledgeLevel level
		ifTrue: [ ^ self ]
		ifFalse: [ ^ aSRSKnowledgeLevel ]