tests
testAnOverviewAnswersLevelsAndNextReviews

	| overview entry |

	app newUser.

	overview := HSKKnowledgeOverview on: app.

	entry := overview entries anyOne.

	self assert: (overview levelOf: entry) equals: 1.

	self assert: (overview nextReviewOf: entry) notNil.

	entry submitReview: true on: #writing.

	self assert: (overview levelOf: entry) equals: 2.