tests
testTheStyleButtonTogglesTheWritingStyle

	app newUser.

	shell := HSKDesktopShell on: app.

	(shell childWithId: #styleButton) fireEvent: ToClickedSkinEvent new.

	self assert: app isTraditional.

	(shell childWithId: #styleButton) fireEvent: ToClickedSkinEvent new.

	self assert: app isSimplified.