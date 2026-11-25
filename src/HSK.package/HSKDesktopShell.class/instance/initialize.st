initialization
initialize

	super initialize.

	self vertical: true.

	self matchParent.

	factory := HSKWidgetFactory withFont: 'NSimSun'.

	self buildToolbar.

	self buildBody.