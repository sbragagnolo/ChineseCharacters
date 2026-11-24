tests
testOverAllLevelIsTheMinimumOfTheSkillLevels

	| content |

	content := self aKnownContentWithSuccesses: 2.

	content submitReview: true at: self reviewDate on: #reading withAnnouncer: nil.

	self assert: content overAllLevel == (content skill: #reading).

	self assert: content overAllLevel level equals: 2