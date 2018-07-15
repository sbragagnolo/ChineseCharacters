running
testPronunciationRuleRespondsPositive
	| test result | 
	test := self pronounciationTest.
	result := test assertWith: 'you3'.
	self assert: result value. 