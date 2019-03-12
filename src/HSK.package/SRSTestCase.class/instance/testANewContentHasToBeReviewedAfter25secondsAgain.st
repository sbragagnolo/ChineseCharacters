tests
testANewContentHasToBeReviewedAfter25secondsAgain
	| content |
	content := SRSKnownContent new.
	content unlock.
	content submitReview: true on:#writing.
	self deny: (content  hasToReview:#writing at:  DateAndTime now).
	self assert: (content  hasToReview:#writing at:  DateAndTime now + 26 seconds)