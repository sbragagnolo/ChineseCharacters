building
buildMenu
	menuPane addChildren: (self class menuEntries collect: [ :each |
		| button |
		button := factory buttonFor: each second action: [ self perform: each fourth ].
		button id: each first.
		button tooltipText: each third.
		button ])