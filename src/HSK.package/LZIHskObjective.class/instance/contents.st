accessing
contents
	^ (HSKCharacter instances select: [ :i | i module < LZIModule nohsk ])
		asSortedCollection: [ :a :b | 
			a module <= b module
				ifTrue: [ true ]
				ifFalse: [ a module = b module and: [ a frequency < b frequency ] ] ]