tests
testTheShellIsAMenuAndAViewport

	shell := HSKDesktopShell on: app.

	self assert: (shell isKindOf: ToPane).

	self assert: (shell childWithId: #menu) notNil.

	self assert: (shell childWithId: #viewport) notNil.

	self assert: (shell childWithId: #knowledgeButton) notNil.

	self assert: (shell childWithId: #reminderButton) notNil.

	self assert: (shell childWithId: #quizButton) notNil.

	self assert: (shell childWithId: #gameButton) notNil.

	self assert: (shell childWithId: #newUserButton) notNil.

	self assert: (shell childWithId: #styleButton) notNil.

	self assert: (shell childWithId: #status) notNil.