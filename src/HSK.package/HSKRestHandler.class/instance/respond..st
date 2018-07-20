initialization
respond: anObject
	^ String
		streamContents: [ :str | 
			STON jsonWriter
				on: str;
				nextPut: anObject ]