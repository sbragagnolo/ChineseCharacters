initialization
initializeWidgets
	character := self instantiate: AthensStaticPresenter.
	character surfaceExtent: 50 @ 50.
	character drawBlock: [ :aCanvas | self drawCharacterOn: aCanvas ].
	date := self newLabel.
	level := self newSlider.
	level
		min: 1;
		max: SRSKnowledgeLevel rateValues last;
		quantum: 1;
		value: 500.
	SRSKnowledgeLevel rateValues
		with: SRSKnowledgeLevel rateTexts
		do: [ :val :text | level addMark: text at: val  ]