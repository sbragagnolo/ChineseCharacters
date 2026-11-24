tests
testAnOverviewListsTheUnlockedContentOfTheUser

	| overview |

	app newUser.

	overview := HSKKnowledgeOverview on: app.

	self assert: overview entries notEmpty.

	self assert: overview entries equals: app currentUser goal unlockedContent.

	self assert: overview unlockedAmount equals: overview entries size.

	self assert: overview unlockedAmount < overview totalAmount.

	self assert: overview lockedAmount equals: overview totalAmount - overview unlockedAmount.