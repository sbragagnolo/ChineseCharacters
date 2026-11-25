tests
testAReminderPageAnswersATitleAndAnExplanation
	| page |
	page := HSKReminderPage on: app.
	self assert: HSKReminderPage title equals: 'Pinyin Reminder'.
	self assert: (HSKReminderPage explanation isKindOf: String).
	self assert: HSKReminderPage explanation notEmpty.
	self assert: page title equals: 'Pinyin Reminder'.
	self assert: page explanation equals: HSKReminderPage explanation