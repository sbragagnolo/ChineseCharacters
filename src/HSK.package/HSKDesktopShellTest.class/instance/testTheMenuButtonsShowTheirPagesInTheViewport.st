tests
testTheMenuButtonsShowTheirPagesInTheViewport

	app newUser.

	shell := HSKDesktopShell on: app.

	(shell childWithId: #reminderButton) fireEvent: ToClickedSkinEvent new.

	self assert: ((shell childWithId: #viewport) children anySatisfy: [ :each | each isKindOf: HSKReminderView ]).

	(shell childWithId: #quizButton) fireEvent: ToClickedSkinEvent new.

	self assert: ((shell childWithId: #viewport) children anySatisfy: [ :each | each isKindOf: HSKQuizView ]).

	(shell childWithId: #gameButton) fireEvent: ToClickedSkinEvent new.

	self assert: ((shell childWithId: #viewport) children anySatisfy: [ :each | each isKindOf: HSKGameView ]).

	(shell childWithId: #knowledgeButton) fireEvent: ToClickedSkinEvent new.

	self assert: ((shell childWithId: #viewport) children anySatisfy: [ :each | each isKindOf: HSKKnowledgeView ]).