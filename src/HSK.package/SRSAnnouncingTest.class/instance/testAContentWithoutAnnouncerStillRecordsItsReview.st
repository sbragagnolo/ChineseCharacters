tests
testAContentWithoutAnnouncerStillRecordsItsReview

	| content |

	content := self aKnownContent.

	content submitReview: true at: self reviewDate on: #writing withAnnouncer: nil.

	self assert: content overAllLevel level equals: 2