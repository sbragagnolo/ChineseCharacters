initialization
hasToReview: aSkill at: anActualDate
	^ self isUnlocked
		and: [( self skill: aSkill) hasToReview: anActualDate - lastReviewDate ]