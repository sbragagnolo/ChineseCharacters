tests
testAFreshContentHasTheMinimalOverAllLevel

	| content fresh |

	content := self aLockedKnownContent.

	fresh := content overAllLevel.

	self assert: fresh level equals: 1.

	self assert: (content instVarNamed: #skills) isEmpty.

	self deny: fresh == (content skill: #writing)