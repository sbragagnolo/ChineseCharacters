tests
testAQuizPageOffersFourOptionsIncludingItsTarget

	| page |

	app newUser.

	page := HSKQuizPage on: app.

	self assert: page options size equals: 4.

	self assert: (page options includes: page target).

	self assert: (page options anySatisfy: [ :o | o ~= page target ]).