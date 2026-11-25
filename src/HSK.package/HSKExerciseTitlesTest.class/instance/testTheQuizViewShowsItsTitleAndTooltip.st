tests
testTheQuizViewShowsItsTitleAndTooltip
	| view |
	view := HSKQuizView page: (HSKQuizPage on: app) factory: (HSKWidgetFactory withFont: 'NSimSun').
	view initializeWidgets.
	self assert: view children first text asString equals: 'Pinyin Quiz'.
	self assert: view hasTooltip