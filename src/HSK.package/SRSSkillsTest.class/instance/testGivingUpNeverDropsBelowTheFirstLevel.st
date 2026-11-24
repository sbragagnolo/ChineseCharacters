tests
testGivingUpNeverDropsBelowTheFirstLevel

	| content |

	content := self aKnownContentWithSuccesses: 2.

	3 timesRepeat: [ content giveUp: #writing ].

	self assert: content overAllLevel level equals: 1