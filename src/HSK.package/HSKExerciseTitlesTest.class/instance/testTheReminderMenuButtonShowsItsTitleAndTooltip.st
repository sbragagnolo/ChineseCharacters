tests
testTheReminderMenuButtonShowsItsTitleAndTooltip
	| button |
	button := shell childWithId: #reminderButton.
	self assert: button label text asString equals: 'Pinyin Reminder'.
	self assert: button hasTooltip