testing
hasToReview: aDuration
	^ (self class rateTable at: level) < aDuration