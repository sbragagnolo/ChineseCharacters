filtering
charactersFor: aSkillTag
	^ self characters select: [ :c | c hasToReview: aSkillTag ]