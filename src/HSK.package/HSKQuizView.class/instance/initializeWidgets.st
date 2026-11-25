building
initializeWidgets

	| targetLabel optionsPane resultLabel redraw |

	self removeChildren.

	targetLabel := factory bigLabelFor: page targetSpelling.

	targetLabel id: #target.

	optionsPane := ToPane horizontal.

	optionsPane id: #options.

	resultLabel := factory labelFor: ''.

	resultLabel id: #result.

	redraw := [

		targetLabel text: (factory styledText: page targetSpelling fontSize: 48).

		optionsPane removeChildren.

		page options

			do: [ :each | optionsPane addChild: (self optionButtonFor: each result: resultLabel redrawing: redraw) ] ].

	redraw value.

	self addChildren: { targetLabel. optionsPane. resultLabel }