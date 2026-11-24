tests
testTheNewUserButtonCreatesAUser

	app newUser.

	shell := HSKDesktopShell on: app.

	(shell childWithId: #newUserButton) fireEvent: ToClickedSkinEvent new.

	self assert: app users size equals: 2.