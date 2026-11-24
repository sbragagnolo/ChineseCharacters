building
buildReminderView

	| pane wordLabel meaningsLabel input okButton hintButton giveUpButton resultLabel page updateView |

	page := HSKReminderPage on: app.

	pane := ToPane vertical.

	wordLabel := ToLabel text: (page currentSpelling asRopedText fontName: 'NSimSun'; fontSize: 48; yourself).

	meaningsLabel := ToLabel text: ((', ' join: page currentMeanings asArray) asRopedText fontName: 'NSimSun'; yourself).

	input := ToTextField new.

	input text: ''.

	input placeholderText: 'enter the pinyin'.

	resultLabel := ToLabel text: ('' asRopedText fontName: 'NSimSun'; yourself).

	updateView := [ wordLabel text: (page currentSpelling asRopedText fontName: 'NSimSun'; fontSize: 48; yourself).

		meaningsLabel text: ((', ' join: page currentMeanings asArray) asRopedText fontName: 'NSimSun'; yourself).

		input text: ''.

		resultLabel text: ('' asRopedText fontName: 'NSimSun'; yourself) ].

	okButton := ToButton new.

	okButton label: (ToLabel text: ('Accept' asRopedText fontName: 'NSimSun'; yourself)).

	okButton addEventHandlerOn: ToClickedSkinEvent do: [ :anEvent |

		| wasRight |

		wasRight := page answer: input text asString.

		resultLabel text: (((wasRight ifTrue: [ 'Right! ' ] ifFalse: [ 'Wrong. ' ]) , page hintText) asRopedText fontName: 'NSimSun'; yourself).

		page next.

		updateView value ].

	hintButton := ToButton new.

	hintButton label: (ToLabel text: ('Hint' asRopedText fontName: 'NSimSun'; yourself)).

	hintButton addEventHandlerOn: ToClickedSkinEvent do: [ :anEvent | resultLabel text: (page hintText asRopedText fontName: 'NSimSun'; yourself) ].

	giveUpButton := ToButton new.

	giveUpButton label: (ToLabel text: ('Give up' asRopedText fontName: 'NSimSun'; yourself)).

	giveUpButton addEventHandlerOn: ToClickedSkinEvent do: [ :anEvent | page giveUp. page next. updateView value ].

	pane addChildren: { wordLabel. meaningsLabel. input. resultLabel. okButton. hintButton. giveUpButton }.

	^ pane