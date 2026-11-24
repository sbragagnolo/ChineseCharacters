tests
testTheShellAnswersSpellingsRespectingTheStyle

	| love entry |

	app newUser.

	shell := HSKDesktopShell on: app.

	love := HSKCharacterProvider default detect: [ :c | c traditional = $愛 ].

	entry := app currentUser knowledgeFor: love.

	self assert: (shell knowledgeSpellingOf: entry) equals: '爱'.

	app style: #traditional.

	self assert: (shell knowledgeSpellingOf: entry) equals: '愛'.