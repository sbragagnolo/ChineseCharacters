tests
testNextReviewDateFollowsTheLevelRate

	| content |

	content := self aKnownContent.

	content submitReview: true at: self reviewDate on: #writing withAnnouncer: nil.

	self assert: content nextReviewDate equals: self reviewDate + 25 seconds