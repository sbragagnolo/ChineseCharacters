accessing
basicCharacters
	^ HSKCharacter instances select: [ :i | i radicals includes: i ]