as yet unclassified
treatCharacter: traditional and: simplified fromCedictLine: line
	| char pinyin |
	(HSKCharacter instances
		anySatisfy:
			[ :c | c traditional = traditional and: [ c simplified = simplified ] ])
		ifTrue: [ ^ self ].
	(HSKCharacter instances
		select:
			[ :c | c traditional = traditional xor: [ c simplified = simplified ] ])
		ifNotEmpty: [ :col | 
			col size = 1
				ifTrue: [ col first traditional: traditional.
					col first simplified: simplified ].
			^ self ].
		
	char := HSKCharacter new.
	HSKCharacter instances add: char.
	char
		traditional: traditional;
		simplified: simplified.
	line upTo: $[.
	pinyin := line upTo: $].
	char pinyin: (',' split: pinyin trimBoth).
	char mark: HSKModule dictionary.
	line upTo: $/.
	char
		definition: ((('/' split: line upToEnd) collect: #trimBoth) reject: #isEmpty)