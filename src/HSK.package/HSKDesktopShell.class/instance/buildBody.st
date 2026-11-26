building
buildBody

	| body |
	body := ToPane horizontal.
	body matchParent.
	menuPane := ToPane vertical.
	menuPane id: #menu.

	self buildMenu.
	viewport := ToPane vertical.
	viewport id: #viewport.
	viewport matchParent.

	body addChild: menuPane.
	body addChild: viewport.
	self addChild: body