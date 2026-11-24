tests
testAFailedReviewAnnouncesOnlyItsDecrease

	| content collected |

	content := self aKnownContent.

	collected := self

		collectAnnouncementsOf: {SRSLevelDecreased. SRSLevelIncreased. SRSLevelUp}

		during: [ :announcer | content submitReview: false at: self reviewDate on: #writing withAnnouncer: announcer ].

	self assert: (collected at: SRSLevelDecreased) size equals: 1.

	self assert: (collected at: SRSLevelIncreased) isEmpty.

	self assert: (collected at: SRSLevelUp) isEmpty.

	self assert: (collected at: SRSLevelDecreased) anyOne oldLevel equals: 1.

	self assert: content overAllLevel level equals: 1