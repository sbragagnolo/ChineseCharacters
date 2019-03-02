edges
dealWith: aHSKCharacter thatIsAbsentWith: aBlockClosure
	^ aHSKCharacter isHolder
		ifTrue: [ | edge |
			edge := self createEdgeFor: aHSKCharacter.
			edge node word: aHSKCharacter asHSKString.
			edge ]
		ifFalse: [ aBlockClosure value ]