tests
testAQuizPageAdvancesWithoutRepeatingItsTarget

	| page oldTarget |

	app newUser.

	page := HSKQuizPage on: app.

	oldTarget := page target.

	page next.

	self assert: page target ~~ oldTarget.