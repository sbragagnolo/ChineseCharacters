adding
tileFor: anEntry

	^ factory labelFor: (self overview spellingOf: anEntry), ' - ' , (self overview levelOf: anEntry) asString