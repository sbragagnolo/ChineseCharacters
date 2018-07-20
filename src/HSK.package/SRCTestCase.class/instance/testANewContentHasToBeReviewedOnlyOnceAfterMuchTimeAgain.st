tests
testANewContentHasToBeReviewedOnlyOnceAfterMuchTimeAgain
	| content |
	content := SRSKnownContent new.
	content submitReview: true withAnnouncer: nil.
	self deny: (content hasToReviewAt: DateAndTime now).
	self assert: (content hasToReviewAt: DateAndTime now + 7000 days).
	content submitReview: true withAnnouncer: nil.
	self deny: (content hasToReviewAt: DateAndTime now)