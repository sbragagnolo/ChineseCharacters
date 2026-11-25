tests
testAQuizPageSpellsItsTargetFollowingTheStyle

	| page |

	app newUser.

	page := HSKQuizPage on: app.

	self assert: page targetSpelling equals: (page target knowledge asHSKString simplifiedString).

	app style: #traditional.

	self assert: page targetSpelling equals: (page target knowledge asHSKString traditionalString).