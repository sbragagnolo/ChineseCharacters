tests
testAnOverviewWithoutUserOffersNothing

	self assert: (HSKKnowledgeOverview on: app) entries isEmpty.

	self assert: (HSKKnowledgeOverview on: app) totalAmount equals: 0.

	self assert: (HSKKnowledgeOverview on: app) unlockedAmount equals: 0.