running
testFriendlyPronunciationRuleRespondsNegative
	| test result | 
	test := self friendlyPronounciationTest.
	result := test assertWith: 'iou'.
	self deny: result value. 