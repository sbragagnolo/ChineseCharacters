instance creation
on: anHSKApp factory: aWidgetFactory

	| view |

	view := self basicNew initialize.

	view app: anHSKApp.

	view factory: aWidgetFactory.

	^ view