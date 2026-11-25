tests
testTheShellFollowsAppAnnouncements

	shell := HSKDesktopShell on: app.

	app newUser.

	self assert: (shell childWithId: #tiles) childrenCount >= 1.

	self assert: (shell childWithId: #usersBar) childrenCount equals: 1.

	app newUser.

	self assert: (shell childWithId: #usersBar) childrenCount equals: 2.