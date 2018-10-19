as yet unclassified
definitionsFor: anHSKString ifNone: aBlock
	^ (anHSKString
		inject: root
		into: [ : edge :char | edge node detectEdgeFor: char ifNotFound: [ ^ aBlock value ] ]) node definitions