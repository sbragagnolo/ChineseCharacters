running
testPhoneticRuleRespondsNegative
	| test result | 
	test := self phoneticTest.
	result := test assertWith: 'you'.
	self deny: result value. 