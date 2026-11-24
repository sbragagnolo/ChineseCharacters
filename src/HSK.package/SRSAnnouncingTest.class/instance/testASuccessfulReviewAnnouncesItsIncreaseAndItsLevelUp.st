tests
testASuccessfulReviewAnnouncesItsIncreaseAndItsLevelUp

	| content collected |

	content := self aKnownContent.

	collected := self

		collectAnnouncementsOf: {SRSLevelIncreased. SRSLevelUp}

		during: [ :announcer | content submitReview: true at: self reviewDate on: #writing withAnnouncer: announcer ].

	self assert: (collected at: SRSLevelIncreased) size equals: 1.

	self assert: (collected at: SRSLevelUp) size equals: 1.

	self assert: (collected at: SRSLevelIncreased) anyOne levelObject == (content skill: #writing).

	self assert: (collected at: SRSLevelIncreased) anyOne oldLevel equals: 1.

	self assert: (collected at: SRSLevelIncreased) anyOne currentDate equals: self reviewDate