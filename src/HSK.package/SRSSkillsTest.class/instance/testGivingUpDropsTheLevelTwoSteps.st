tests
testGivingUpDropsTheLevelTwoSteps

	| content |

	content := self aKnownContentWithSuccesses: 4.

	self assert: content overAllLevel level equals: 5.

	content giveUp: #writing.

	self assert: content overAllLevel level equals: 3