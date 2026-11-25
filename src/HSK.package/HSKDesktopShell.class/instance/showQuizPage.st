showing
showQuizPage

	self app currentUser isNil

		ifTrue: [ self showInViewport: (factory labelFor: 'Create a user first') ]

		ifFalse: [ | view |

			view := HSKQuizView page: (HSKQuizPage on: app) factory: factory.

			view initializeWidgets.

			self showInViewport: view ]