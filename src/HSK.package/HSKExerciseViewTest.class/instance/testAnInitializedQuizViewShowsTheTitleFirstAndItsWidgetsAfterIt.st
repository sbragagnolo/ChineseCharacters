tests
testAnInitializedQuizViewShowsTheTitleFirstAndItsWidgetsAfterIt
	| view |
	view := HSKQuizView page: (HSKQuizPage on: app) factory: factory.
	view initializeWidgets.
	self assert: view children first text asString equals: 'Pinyin Quiz'.
	self assert: view hasTooltip.
	#(target options result) do: [ :each | self assert: (view childWithId: each) notNil ]