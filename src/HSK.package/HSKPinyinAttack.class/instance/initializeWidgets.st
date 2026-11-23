initialization
initializeWidgets
	entry := self newTextInput.
	viewport := self instantiate: SpAthensPresenter.
"	viewport timeline: self timeline."
	viewport surfaceExtent: 900 @ 500.
	viewport drawBlock: [ : canvas | self drawOn: canvas ].
"	viewport updateBlock: [ : newTick | self updateModelTo: newTick.  ]"