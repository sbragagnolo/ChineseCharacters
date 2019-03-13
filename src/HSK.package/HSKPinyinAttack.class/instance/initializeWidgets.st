initialization
initializeWidgets
	entry := self newTextInput.
	viewport := self instantiate: AthensAnimatedPresenter.
	viewport surfaceExtent: 900 @ 500.
	viewport drawBlock: [ : canvas | self drawOn: canvas ].
	viewport updateBlock: [ : tick | self updateModelTo: tick ]