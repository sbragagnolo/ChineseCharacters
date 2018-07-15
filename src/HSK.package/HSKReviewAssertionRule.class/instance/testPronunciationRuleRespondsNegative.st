running
testPronunciationRuleRespondsNegative
	| test result | 
	test := self pronounciationTest.
	result := test assertWith: 'you'.
	self deny: result value. 