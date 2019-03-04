initialization
hasToReviewAt: anActualDate
	^ self isUnlocked
		and: [ level hasToReview: anActualDate - lastReviewDate ]