tests
testANewContentHasNotToBeReviewedAfterSubmition
	self
		deny:
			(SRSKnownContent new
				unlock;
				submitReview: true on: #whatever;
				hasToReview: #whatever)