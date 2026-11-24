tests
testOverAllLevelIsTheMinimumOfTheSkillLevels

	| content |

	content := SRSKnownContent new.

	content unlock.

	content submitReview: true on: #writing.

	content submitReview: true on: #writing.

	self assert: content overAllLevel level equals: 3.

	content submitReview: true on: #reading.

	self assert: content overAllLevel level equals: 2