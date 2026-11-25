tests
testEveryMenuEntryHasAnIdATitleATooltipAndAnAction
	self assert: HSKDesktopShell menuEntries size equals: 4.
	HSKDesktopShell menuEntries do: [ :each |
		self assert: (each first isKindOf: Symbol).
		self assert: (each second isKindOf: String).
		self assert: each second notEmpty.
		self assert: (each third isKindOf: String).
		self assert: each third notEmpty.
		self assert: (each fourth isKindOf: Symbol).
		self assert: (shell respondsTo: each fourth) ]