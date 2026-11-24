tests
testAMaximalLevelContentStillAnnouncesItsSteadySuccess

	| content collected |

	content := self aKnownContent.

	collected := self

		collectAnnouncementsOf: {SRSLevelIncreased. SRSLevelUp}

		during: [ :announcer | 13 timesRepeat: [ content submitReview: true at: self reviewDate on: #writing withAnnouncer: announcer ] ].

	self assert: (collected at: SRSLevelIncreased) size equals: 13.

	self assert: (collected at: SRSLevelUp) size equals: 13.

	self assert: content overAllLevel isMaximal