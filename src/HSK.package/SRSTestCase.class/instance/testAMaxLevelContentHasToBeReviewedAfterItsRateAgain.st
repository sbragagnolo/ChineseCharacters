tests
testAMaxLevelContentHasToBeReviewedAfterItsRateAgain

	| content |

	content := SRSKnownContent new.

	content unlock.

	13 timesRepeat: [ content submitReview: true on: #writing ].

	self assert: content overAllLevel isMaximal.

	self deny: (content hasToReview: #writing at: DateAndTime now + 1000 days).

	self assert: (content hasToReview: #writing at: DateAndTime now + 1001 days)