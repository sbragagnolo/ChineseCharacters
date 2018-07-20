rendering
initialize
	super initialize.
	characters := HSKCharacter instances select: [ :i | i isRoot and: [ #(hsk1 hsk2) includes: i module ] ].
	position := 1.