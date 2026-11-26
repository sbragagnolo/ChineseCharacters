showing
showQuizPage

	self app currentUser ifNil: [ self showInViewport: (factory labelFor: 'Create a user first') ] ifNotNil: [
			| view |
			view := HSKQuizView page: (HSKQuizPage on: app) factory: factory.
			view initializeWidgets.
			self showInViewport: view ]