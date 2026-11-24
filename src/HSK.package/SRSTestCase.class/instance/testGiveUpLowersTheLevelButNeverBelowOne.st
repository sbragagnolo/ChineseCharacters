tests
testGiveUpLowersTheLevelButNeverBelowOne

	| content |

	content := SRSKnownContent new.

	content unlock.

	3 timesRepeat: [ content giveUp: #writing ].

	self assert: content overAllLevel level equals: 1