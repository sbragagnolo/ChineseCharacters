running
setUp
	super setUp.
	HSKDictionaryLoader reset.
	app := HSKApp new.
	factory := HSKWidgetFactory withFont: 'NSimSun'.
	shell := HSKDesktopShell on: app.
	app newUser