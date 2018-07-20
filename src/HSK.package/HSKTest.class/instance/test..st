tests
test: aCollectionOfCharacters
	tests := aCollectionOfCharacters
		collect: [ :c | 
			HSKPhoneticTest new
				subject: c;
				yourself ]