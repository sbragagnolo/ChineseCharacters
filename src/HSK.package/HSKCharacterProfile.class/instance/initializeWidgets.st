initialization
initializeWidgets
	character := self instantiate: AthensStaticPresenter.
	character surfaceExtent: 50 @ 50.
	character drawBlock: [ :aCanvas | self drawCharacterOn: aCanvas ].
	date := self newLabel.
	level := self newSlider.
	level value: 500.
	level
		min: 1;
		max: 1000;
		quantum: 1