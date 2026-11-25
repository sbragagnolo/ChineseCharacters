initialization
initializeWidgets
	| wordLabel meaningsLabel input okButton hintButton giveUpButton resultLabel updateView |
	super initializeWidgets.
	wordLabel := factory bigLabelFor: page currentSpelling.
	wordLabel id: #word.
	meaningsLabel := factory labelFor: (', ' join: page currentMeanings asArray).
	meaningsLabel id: #meanings.
	input := ToTextField new.
	input id: #input.
	input text: ''.
	input placeholderText: 'enter the pinyin'.
	resultLabel := factory labelFor: ''.
	resultLabel id: #result.
	updateView := [ wordLabel text: (factory styledText: page currentSpelling fontSize: 48).
		meaningsLabel text: (factory styledText: (', ' join: page currentMeanings asArray)).
		input text: ''.
		resultLabel text: (factory styledText: '') ].
	okButton := factory buttonFor: 'Accept' action: [
		| wasRight |
		wasRight := page answer: input text asString.
		resultLabel text: (factory styledText: ((wasRight ifTrue: [ "Right! " ] ifFalse: [ "Wrong. " ]) , page hintText)).
		page next.
		updateView value ].
	hintButton := factory buttonFor: 'Hint' action: [ resultLabel text: (factory styledText: page hintText) ].
	giveUpButton := factory buttonFor: 'Give up' action: [ page giveUp. page next. updateView value ].
	self addChildren: { wordLabel. meaningsLabel. input. resultLabel. okButton. hintButton. giveUpButton }