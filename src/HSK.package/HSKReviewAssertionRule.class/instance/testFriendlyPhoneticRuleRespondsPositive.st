running
testFriendlyPhoneticRuleRespondsPositive
	| test result | 
	test := self friendlyPhoneticTest.
	result := test assertWith: 'you'.
	self assert: result value. 