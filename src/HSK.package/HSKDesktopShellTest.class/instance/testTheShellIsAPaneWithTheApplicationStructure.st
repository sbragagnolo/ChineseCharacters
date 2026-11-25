tests
testTheShellIsAPaneWithTheApplicationStructure
	app newUser.
	shell := HSKDesktopShell on: app.
	self assert: (shell isKindOf: ToPane).
	self assert: (shell childWithId: #usersBar) notNil.
	self assert: (shell childWithId: #menu) notNil.
	self assert: (shell childWithId: #viewport) notNil.
	self assert: (shell childWithId: #status) notNil.
	self assert: (shell childWithId: #newUserButton) notNil.
	self assert: (shell childWithId: #styleButton) notNil.