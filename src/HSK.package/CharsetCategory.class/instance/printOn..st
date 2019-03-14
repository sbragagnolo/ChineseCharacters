instance creation
printOn: aStream
	aStream
		nextPutAll: 'UC(';
		nextPutAll: category;
		nextPutAll: ')'