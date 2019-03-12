tests
testANewContentHasToBeReviewed
	self assert: (SRSKnownContent new unlock; hasToReview: #writing)