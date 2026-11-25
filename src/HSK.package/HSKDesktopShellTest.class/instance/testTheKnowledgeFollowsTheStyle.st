tests
testTheKnowledgeFollowsTheStyle

	| simplified traditional label |

	app newUser.

	shell := HSKDesktopShell on: app.

	label := (shell childWithId: #tiles) children first.

	simplified := app spellingOf: (app currentUser goal unlockedContent first knowledge).

	self assert: (label text asString beginsWith: simplified).

	app style: #traditional.

	traditional := app spellingOf: (app currentUser goal unlockedContent first knowledge).

	self assert: (label text asString beginsWith: traditional).