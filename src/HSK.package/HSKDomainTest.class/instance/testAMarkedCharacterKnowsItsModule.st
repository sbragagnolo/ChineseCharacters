tests
testAMarkedCharacterKnowsItsModule

	| me |

	me := HSKCharacter new traditional: $我; simplified: $我.

	me mark: #hsk1.

	self assert: me module == HSKModule hsk1.

	me mark: #hsk6.

	self assert: me module == HSKModule hsk6.

	me mark: #hsk1.

	me setupModule.

	self assert: me module == HSKModule hsk1