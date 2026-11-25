tests
testTheMenuBuildsATitledAndTooltippedButtonPerEntry
	HSKDesktopShell menuEntries do: [ :each |
		| button |
		button := shell childWithId: each first.
		self assert: (button isKindOf: ToButton).
		self assert: button label text asString equals: each second.
		self assert: button hasTooltip ]