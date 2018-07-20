initialization
characters
	<get>
	^ self respond: (HSKCharacter instances collect: [ :c | c traditional asString ]) asArray 