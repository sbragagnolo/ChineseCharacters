tests
testAnExerciseViewIsAnHSKExerciseViewWiredWithItsPage
	| reminderPage quizPage |
	reminderPage := HSKReminderPage on: app.
	quizPage := HSKQuizPage on: app.
	self assert: (HSKReminderView new isKindOf: HSKExerciseView).
	self assert: (HSKQuizView new isKindOf: HSKExerciseView).
	self assert: ((HSKReminderView page: reminderPage factory: factory) page) == reminderPage.
	self assert: ((HSKQuizView page: quizPage factory: factory) page) == quizPage