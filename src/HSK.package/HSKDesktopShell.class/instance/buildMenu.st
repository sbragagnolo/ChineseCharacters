building
buildMenu
	| knowledgeButton reminderButton quizButton gameButton |
	knowledgeButton := factory buttonFor: 'Knowledge' action: [ self showKnowledgePage ].
	knowledgeButton id: #knowledgeButton.
	reminderButton := factory buttonFor: HSKReminderPage title action: [ self showReminderPage ].
	reminderButton id: #reminderButton.
	reminderButton tooltipText: HSKReminderPage explanation.
	quizButton := factory buttonFor: HSKQuizPage title action: [ self showQuizPage ].
	quizButton id: #quizButton.
	quizButton tooltipText: HSKQuizPage explanation.
	gameButton := factory buttonFor: 'Game' action: [ self showGamePage ].
	gameButton id: #gameButton.
	menuPane addChildren: { knowledgeButton. reminderButton. quizButton. gameButton }