initialization
hasToReview
	^ level hasToReview: (DateAndTime now - lastReviewDate)