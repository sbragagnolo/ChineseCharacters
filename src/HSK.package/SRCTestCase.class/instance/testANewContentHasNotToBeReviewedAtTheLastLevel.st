tests
testANewContentHasNotToBeReviewedAtTheLastLevel
	| content |
	content := SRSKnownContent new.
	13 timesRepeat: [ content submitReview: true ].
	self deny: (content hasToReviewAt: DateAndTime now).
	self deny: (content hasToReviewAt: DateAndTime now + 7000 days)