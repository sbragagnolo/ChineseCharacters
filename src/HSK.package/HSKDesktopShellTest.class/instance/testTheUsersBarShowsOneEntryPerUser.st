tests
testTheUsersBarShowsOneEntryPerUser

	app newUser.

	app newUser.

	shell := HSKDesktopShell on: app.

	self assert: (shell childWithId: #usersBar) childrenCount equals: app users size.