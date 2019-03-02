convenience
deleteHolders
	instances := instances reject: [ : i | i isKindOf: HSKCharacterHolder  ]