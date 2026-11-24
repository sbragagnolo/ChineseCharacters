tests
testSelectingTheCorpusIsSafeEvenWithHolders

	HSKCharacterProvider default detectOrCreateHolder: $龺.

	self assert: (HSKCharacterProvider default select: [ :c | c hasError not and: [ c frequency notNil ] ]) notEmpty.