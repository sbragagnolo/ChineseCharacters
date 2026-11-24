tests
testModulesHaveAFixedOrder

	self assert: HSKModule latinLetter order equals: 0.

	self assert: HSKModule hsk1 order equals: 1.

	self assert: HSKModule hsk2 order equals: 2.

	self assert: HSKModule hsk3 order equals: 3.

	self assert: HSKModule hsk4 order equals: 4.

	self assert: HSKModule hsk5 order equals: 5.

	self assert: HSKModule hsk6 order equals: 6.

	self assert: HSKModule dictionary order equals: 7.

	self assert: HSKModule nohsk order equals: 50