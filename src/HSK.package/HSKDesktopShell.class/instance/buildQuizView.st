building
buildQuizView

	| pane targetLabel optionsPane resultLabel page redraw |

	page := HSKQuizPage on: app.

	pane := ToPane vertical.

	targetLabel := ToLabel text: (page targetSpelling asRopedText fontName: 'NSimSun'; fontSize: 48; yourself).

	optionsPane := ToPane horizontal.

	resultLabel := ToLabel text: ('' asRopedText fontName: 'NSimSun'; yourself).

	redraw := [

		targetLabel text: (page targetSpelling asRopedText fontName: 'NSimSun'; fontSize: 48; yourself).

		optionsPane removeChildren.

		page options

			do: [ :each | optionsPane addChild: (self quizOptionButtonFor: page answering: each redrawing: redraw) ] ].

	redraw value.

	pane addChildren: { targetLabel. optionsPane. resultLabel }.

	^ pane