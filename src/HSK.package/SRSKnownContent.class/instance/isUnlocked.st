accessing
isUnlocked
	^ knowledge isHSKString
		ifTrue:
			[ knowledge allSatisfy: [ :k | (session knowledgeFor: k) isUnlocked ] ]
		ifFalse: [ level isUnlocked ]