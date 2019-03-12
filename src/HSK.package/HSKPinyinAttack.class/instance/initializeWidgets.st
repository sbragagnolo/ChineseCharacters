initialization
initializeWidgets
	entry := self newTextInput.
	viewport := Morph new
		extent: 900 @ 500;
		color: Color white;
		asSpecAdapter