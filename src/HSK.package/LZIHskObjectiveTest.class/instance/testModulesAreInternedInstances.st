tests
testModulesAreInternedInstances

	self assert: (HSKModule module: #hsk3) == HSKModule hsk3.

	self assert: (HSKModule module: #nohsk) == HSKModule nohsk.

	self assert: (HSKModule module: #dictionary) == HSKModule dictionary.

	self assert: (HSKModule module: #latinLetter) == HSKModule latinLetter