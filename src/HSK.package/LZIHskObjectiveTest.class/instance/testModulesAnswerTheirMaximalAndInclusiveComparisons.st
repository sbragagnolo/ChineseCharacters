tests
testModulesAnswerTheirMaximalAndInclusiveComparisons

	self assert: (HSKModule hsk2 max: HSKModule hsk1) == HSKModule hsk2.

	self assert: (HSKModule hsk1 max: HSKModule hsk2) == HSKModule hsk2.

	self assert: HSKModule hsk2 <= HSKModule hsk2.

	self deny: HSKModule hsk2 <= HSKModule hsk1