tests
testTheShellIsAPaneWithTheApplicationStructure

	app newUser.

	shell := HSKDesktopShell on: app.

	self assert: (shell isKindOf: ToPane).

	self assert: (shell childWithId: #header) notNil.

	self assert: (shell childWithId: #knowledge) notNil.

	self assert: (shell childWithId: #exercises) notNil.

	self assert: (shell childWithId: #status) notNil.

	self assert: (shell childWithId: #newUserButton) notNil.

	self assert: (shell childWithId: #styleButton) notNil.