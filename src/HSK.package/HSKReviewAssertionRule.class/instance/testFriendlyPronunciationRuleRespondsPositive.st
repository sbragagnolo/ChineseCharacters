running
testFriendlyPronunciationRuleRespondsPositive
	| test result | 
	test := self friendlyPronounciationTest.
	result := test assertWith: 'you'.
	self assert: result value. 