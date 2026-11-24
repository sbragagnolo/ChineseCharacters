tests
testAStringPrintsAsItsTraditionalSpelling

	| hsks printed |

	hsks := HSKString fromString: '爱'.

	self assert: hsks printString equals: '愛'.

	printed := String streamContents: [ :stream | hsks printOn: stream ].

	self assert: printed equals: '愛'.

	self assert: hsks asHSKString == hsks