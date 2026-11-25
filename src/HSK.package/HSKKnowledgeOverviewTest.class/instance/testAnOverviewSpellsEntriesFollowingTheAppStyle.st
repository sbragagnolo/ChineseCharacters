tests
testAnOverviewSpellsEntriesFollowingTheAppStyle

	| love entry overview |

	app newUser.

	love := HSKCharacterProvider default detect: [ :c | c traditional = $愛 ].

	entry := app currentUser knowledgeFor: love.

	overview := HSKKnowledgeOverview on: app.

	self assert: (overview spellingOf: entry) equals: '爱'.

	app style: #traditional.

	self assert: (overview spellingOf: entry) equals: '愛'.