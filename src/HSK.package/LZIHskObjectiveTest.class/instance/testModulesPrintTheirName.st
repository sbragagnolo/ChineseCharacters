tests
testModulesPrintTheirName

	self assert: HSKModule hsk1 printString equals: 'Module (hsk1)'.

	self assert: HSKModule nohsk printString equals: 'Module (nohsk)'