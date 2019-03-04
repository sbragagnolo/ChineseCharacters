tests
testANewContentHasNotToBeReviewedAfterSubmition
	self
		deny:
			(SRSKnownContent new
				submitReview: true ;
				hasToReview)