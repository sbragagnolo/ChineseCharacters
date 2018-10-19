edges
detectEdgeFor: aHSKCharacter ifNotFound: aBlockClosure
	^ edges at: aHSKCharacter ifAbsent: aBlockClosure