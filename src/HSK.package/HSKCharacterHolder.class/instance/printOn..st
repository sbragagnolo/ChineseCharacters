as yet unclassified
printOn: aStream
	aStream
		nextPutAll: 'H(';
		nextPut: self traditional;
		nextPutAll: ')'