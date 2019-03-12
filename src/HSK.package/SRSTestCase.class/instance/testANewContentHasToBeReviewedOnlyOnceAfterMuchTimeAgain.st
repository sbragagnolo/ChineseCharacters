tests
testANewContentHasToBeReviewedOnlyOnceAfterMuchTimeAgain
	| content |
	content := SRSKnownContent new.
	content unlock.
	content submitReview: true on: #writing.
	self deny: (content hasToReview: #writing at: DateAndTime now).
	self
		assert: (content hasToReview: #writing at: DateAndTime now + 7000 days).
	content submitReview: true on: #writing.
	self deny: (content hasToReview: #writing at: DateAndTime now)