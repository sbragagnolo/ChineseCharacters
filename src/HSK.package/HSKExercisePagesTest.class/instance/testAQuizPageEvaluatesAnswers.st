tests
testAQuizPageEvaluatesAnswers

	| page wrong |

	app newUser.

	page := HSKQuizPage on: app.

	self assert: (page answer: page target).

	self assert: page target overAllLevel level equals: 2.

	wrong := page options detect: [ :o | o ~= page target ].

	self deny: (page answer: wrong).