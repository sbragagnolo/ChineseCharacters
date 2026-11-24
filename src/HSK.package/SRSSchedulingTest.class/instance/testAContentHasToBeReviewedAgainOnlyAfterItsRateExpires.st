tests
testAContentHasToBeReviewedAgainOnlyAfterItsRateExpires

	| content secondReview |

	content := self aKnownContent.

	content submitReview: true at: self reviewDate on: #writing withAnnouncer: nil.

	secondReview := self reviewDate + 7000 days.

	self deny: (content hasToReview: #writing at: self reviewDate + 25 seconds).

	self assert: (content hasToReview: #writing at: secondReview).

	content submitReview: true at: secondReview on: #writing withAnnouncer: nil.

	self deny: (content hasToReview: #writing at: secondReview + 2 minutes).

	self assert: (content hasToReview: #writing at: secondReview + 2 minutes + 1 second)