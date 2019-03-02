edges
detectEdgeFor: aHSKCharacter ifNotFound: aBlockClosure
	^ edges
		at: aHSKCharacter
		ifAbsent: [ self dealWith: aHSKCharacter thatIsAbsentWith: aBlockClosure ]