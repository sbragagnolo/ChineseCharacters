tests
testTheExerciseMenuEntriesUseThePageTitlesAndExplanations
	| entries |
	entries := HSKDesktopShell menuEntries.
	self assert: (entries detect: [ :each | each first = #reminderButton ]) second equals: HSKReminderPage title.
	self assert: (entries detect: [ :each | each first = #reminderButton ]) third equals: HSKReminderPage explanation.
	self assert: (entries detect: [ :each | each first = #quizButton ]) second equals: HSKQuizPage title.
	self assert: (entries detect: [ :each | each first = #quizButton ]) third equals: HSKQuizPage explanation