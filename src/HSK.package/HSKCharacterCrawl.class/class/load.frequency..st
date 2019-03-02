actions
load: aCode frequency: aNumber
	| content stream char |
	content := (ZnEasy get: ('https://en.wiktionary.org/wiki/' , aCode asString urlEncoded) asUrl)
		entity string.
	stream := content readStream.
	char := self new.
	char traditional: (self fetchTraditionalCharacter: stream).
	char simplified: (self fetchSimplifiedCharacter: stream).
	(char traditional isNil and: [ char simplified isNil ])
		ifTrue: [ | both |
			both := self fetchTraditionalAndSimplified: stream.
			both
				ifNil: [ (self hasSeeAlso: stream)
						ifTrue: [ ^ self loadSeeAlso: stream frequency: aNumber ]
						ifFalse: [ both := aCode.
							char hasErrorLoading ] ].
			char
				traditional: both;
				simplified: both ].
	self assert: (char traditional = aCode or: [ char simplified = aCode ]).
	char pinyin: (self fetchPinyin: stream).
	char zhuyin: (self fetchZhuyin: stream).
	char definition: (self fetchDefinition: stream).
	char frequency: aNumber.
	^ char