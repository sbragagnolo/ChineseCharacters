as yet unclassified
detectOrCreateHolder: aCharacter
	^ instances 
		detect: [ :i | i simplified = aCharacter or: [ i traditional = aCharacter ] ]
		ifNone: [ instances
				add:
					(HSKCaracterHolder new
						char: aCharacter;
						yourself) ]