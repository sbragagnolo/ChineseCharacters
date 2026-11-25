menu
menuEntries
	^ {
		{ #knowledgeButton. 'Knowledge'. 'Overview of the characters you know and the ones due for review.'. #showKnowledgePage }.
		{ #reminderButton. HSKReminderPage title. HSKReminderPage explanation. #showReminderPage }.
		{ #quizButton. HSKQuizPage title. HSKQuizPage explanation. #showQuizPage }.
		{ #gameButton. 'Game'. 'A game to practice with your characters (coming in the next initiative).'. #showGamePage } }