accessing
printOn: aStream
	aStream
		nextPutAll: 'UK(';
		nextPutAll: self word;
		nextPut: $)