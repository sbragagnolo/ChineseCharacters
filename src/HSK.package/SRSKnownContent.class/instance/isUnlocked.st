accessing
isUnlocked
	^ (locked ifNil: [ locked := true ]) not