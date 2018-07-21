tests
testANewContentHasNotToBeReviewedAfterSubmition
	self
		deny:
			(SRSKnownContent new
				submitReview: true withAnnouncer: nil;
				hasToReview)