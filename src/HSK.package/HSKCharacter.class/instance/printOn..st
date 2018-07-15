accessing
printOn: aStream
	aStream
		nextPutAll: 'HSK(';
		nextPut: traditional;
		nextPut: $)