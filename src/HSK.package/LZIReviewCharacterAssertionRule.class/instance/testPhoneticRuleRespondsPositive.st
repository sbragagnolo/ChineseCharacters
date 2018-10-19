running
testPhoneticRuleRespondsPositive
	| test result | 
	test := self phoneticTest.
	result := test assertWith: 'you3'.
	self assert: result value. 