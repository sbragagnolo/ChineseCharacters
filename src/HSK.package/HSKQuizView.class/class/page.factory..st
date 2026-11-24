instance creation
page: aQuizPage factory: aWidgetFactory

	| view |

	view := self basicNew initialize.

	view page: aQuizPage.

	view factory: aWidgetFactory.

	^ view