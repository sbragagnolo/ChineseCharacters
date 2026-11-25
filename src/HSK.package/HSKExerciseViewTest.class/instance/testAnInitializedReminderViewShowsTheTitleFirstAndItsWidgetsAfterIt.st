tests
testAnInitializedReminderViewShowsTheTitleFirstAndItsWidgetsAfterIt
	| view |
	view := HSKReminderView page: (HSKReminderPage on: app) factory: factory.
	view initializeWidgets.
	self assert: view children first text asString equals: 'Pinyin Reminder'.
	self assert: view hasTooltip.
	#(word meanings input result) do: [ :each | self assert: (view childWithId: each) notNil ]