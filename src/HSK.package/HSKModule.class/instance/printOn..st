accessing
printOn: aStream
	aStream
		nextPutAll: 'Module (';
		nextPutAll: name;
		nextPut: $)