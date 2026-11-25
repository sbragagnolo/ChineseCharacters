running
setUp
	super setUp.
	HSKDictionaryLoader reset.
	app := HSKApp new.
	shell := HSKDesktopShell on: app.
	app newUser