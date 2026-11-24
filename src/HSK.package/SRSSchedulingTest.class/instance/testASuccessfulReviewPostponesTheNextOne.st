tests
testASuccessfulReviewPostponesTheNextOne

	| content |

	content := self aKnownContent.

	content submitReview: true at: self reviewDate on: #writing withAnnouncer: nil.

	self deny: (content hasToReview: #writing at: self reviewDate + 25 seconds).

	self assert: (content hasToReview: #writing at: self reviewDate + 26 seconds)