instance creation
allCharacters
	^ interval collect: [ :c | Character value: c ]