tests
testAStringOfUnknownCharactersBecomesHolders

	| hsks |

	hsks := HSKString fromString: '龺龺'.

	self assert: (hsks allSatisfy: #isHolder).

	self assert: hsks simplifiedString equals: '龺龺'.

	self assert: hsks module == HSKModule nohsk