accessing
printOn: aStream
	aStream
		nextPutAll: 'TN(';
		nextPutAll: self word;
		nextPut: $)