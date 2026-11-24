tests
testAMaximalLevelContentHasToBeReviewedAfterItsRateAgain

	| content |

	content := self aKnownContentWithSuccesses: 13.

	self assert: content overAllLevel isMaximal.

	self deny: (content hasToReview: #writing at: self reviewDate + 1000 days).

	self assert: (content hasToReview: #writing at: self reviewDate + 1001 days)