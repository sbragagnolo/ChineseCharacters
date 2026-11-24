instance creation
page: aReminderPage factory: aWidgetFactory

	| view |

	view := self basicNew initialize.

	view page: aReminderPage.

	view factory: aWidgetFactory.

	^ view