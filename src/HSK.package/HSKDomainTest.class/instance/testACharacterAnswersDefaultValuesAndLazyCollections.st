tests
testACharacterAnswersDefaultValuesAndLazyCollections

	| me |

	me := HSKCharacter new traditional: $我; simplified: $我.

	self assert: me frequency equals: 4000.

	self assert: me wordsAmount equals: 0.

	self assert: me pinyin class equals: Set.

	self assert: me definition class equals: Set.

	self assert: me phonems class equals: Set.

	self assert: me radicals class equals: Set.

	self assert: me graphicals class equals: Set.

	self assert: me hfwords class equals: Set.

	self assert: me mdwords class equals: Set.

	self assert: me radicals == me radicals