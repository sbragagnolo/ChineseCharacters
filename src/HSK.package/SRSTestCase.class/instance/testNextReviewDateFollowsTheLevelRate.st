tests
testNextReviewDateFollowsTheLevelRate

	| content reviewDate |

	content := SRSKnownContent new.

	content unlock.

	reviewDate := DateAndTime now.

	content submitReview: true at: reviewDate on: #writing withAnnouncer: nil.

	self assert: content nextReviewDate equals: reviewDate + 25 seconds