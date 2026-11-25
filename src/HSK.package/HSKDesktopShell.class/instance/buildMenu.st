building
buildMenu

	| knowledgeButton reminderButton quizButton gameButton |

	knowledgeButton := factory menuButtonFor: '知' action: [ self showKnowledgePage ].

	knowledgeButton id: #knowledgeButton.

	reminderButton := factory menuButtonFor: '练' action: [ self showReminderPage ].

	reminderButton id: #reminderButton.

	quizButton := factory menuButtonFor: '测' action: [ self showQuizPage ].

	quizButton id: #quizButton.

	gameButton := factory menuButtonFor: '戏' action: [ self showGamePage ].

	gameButton id: #gameButton.

	menuPane addChildren: { knowledgeButton. reminderButton. quizButton. gameButton }.