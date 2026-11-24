tests
testAStringAnswersItsSpellings

	| hsks |

	hsks := HSKString fromString: '爱'.

	self assert: hsks traditionalString equals: '愛'.

	self assert: hsks simplifiedString equals: '爱'