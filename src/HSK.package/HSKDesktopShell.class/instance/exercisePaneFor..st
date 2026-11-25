building
exercisePaneFor: aTitle

	aTitle = 'Pinyin Reminder'

		ifTrue: [ ^ self buildReminderView ].

	^ self buildQuizView