tests
testANewContentHasToBeReviewedAfter25secondsAgain
	| content |
	content := SRSKnownContent new.
	content submitReview: true withAnnouncer: nil.
	self deny: (content hasToReviewAt: DateAndTime now).
	self assert: (content hasToReviewAt: DateAndTime now + 26 seconds)