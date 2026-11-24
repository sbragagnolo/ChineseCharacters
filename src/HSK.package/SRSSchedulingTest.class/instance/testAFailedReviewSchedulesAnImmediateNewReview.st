tests
testAFailedReviewSchedulesAnImmediateNewReview

	| content |

	content := self aKnownContentWithSuccesses: 2.

	content submitReview: false at: self reviewDate on: #writing withAnnouncer: nil.

	self assert: content overAllLevel level equals: 1.

	self assert: content nextReviewDate equals: self reviewDate.

	self assert: (content hasToReview: #writing at: self reviewDate + 1 second)