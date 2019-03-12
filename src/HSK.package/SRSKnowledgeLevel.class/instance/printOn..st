initialization
printOn: aStream
	aStream
		nextPutAll: 'Lvl(';
		nextPutAll: level asString;
		nextPutAll: ')'