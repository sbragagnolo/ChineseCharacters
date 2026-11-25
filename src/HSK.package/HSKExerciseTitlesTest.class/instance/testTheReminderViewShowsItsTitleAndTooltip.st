tests
testTheReminderViewShowsItsTitleAndTooltip
	| view |
	view := HSKReminderView page: (HSKReminderPage on: app) factory: (HSKWidgetFactory withFont: 'NSimSun').
	view initializeWidgets.
	self assert: view children first text asString equals: 'Pinyin Reminder'.
	self assert: view hasTooltip