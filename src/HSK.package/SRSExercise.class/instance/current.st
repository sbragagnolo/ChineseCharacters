initialization
current
	^ current ifNil: [ self next ]