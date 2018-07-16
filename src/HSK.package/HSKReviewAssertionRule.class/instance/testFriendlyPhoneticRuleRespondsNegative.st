running
testFriendlyPhoneticRuleRespondsNegative
	| test result | 
	test := self friendlyPhoneticTest.
	result := test assertWith: 'iou'.
	self deny: result value. 