showing
showReminderPage

	self app currentUser ifNil: [ self showInViewport: (factory labelFor: 'Create a user first') ] ifNotNil: [
			| view |
			view := HSKReminderView page: (HSKReminderPage on: app) factory: factory.
			view initializeWidgets.
			self showInViewport: view ]