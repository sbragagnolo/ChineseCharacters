tests
testAnUnlockedContentHasToBeReviewedImmediately

	self assert: (self aKnownContent hasToReview: #writing at: self reviewDate + 1 second)