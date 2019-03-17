accessing
detectOrCreateHolder: aCharacter
	^ self
		detect: [ :i | i simplified = aCharacter or: [ i traditional = aCharacter ] ]
		ifNone: [ hskCharacters
				add:
					(HSKCharacterHolder new
						char: aCharacter;
						yourself) ]