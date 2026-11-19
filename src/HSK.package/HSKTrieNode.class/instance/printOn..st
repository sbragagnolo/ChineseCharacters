accessing
printOn: aStream
	aStream
		nextPutAll: 'TN(';
		print: self word;
		nextPut: $)