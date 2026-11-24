tests
testAStringModuleIsTheWorstOfItsModules

	self assert: (HSKString fromString: '我龺') module == HSKModule nohsk.

	self assert: (HSKString fromString: '我我') module == HSKModule hsk1