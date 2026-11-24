tests
testTheGamePageIsAPlaceholder

	| game |

	app newUser.

	shell := HSKDesktopShell on: app.

	(shell childWithId: #gameButton) fireEvent: ToClickedSkinEvent new.

	game := (shell childWithId: #viewport) children detect: [ :each | each isKindOf: HSKGameView ].

	self assert: game childrenCount >= 1.

	self assert: (game respondsTo: #gamePage:).