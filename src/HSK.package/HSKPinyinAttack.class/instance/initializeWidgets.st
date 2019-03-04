initialization
initializeWidgets
	word := self newLabel.
	meanings := self newList.
	pinyin := self newTextInput.
	pinyin autoAccept .
	ok := self newButton.
	ok label: 'Accept'.
	hint := self newButton.
	hint label: 'Hint'.
	giveup := self newButton.
	giveup label: 'Give up'.
	status := self newLabel.
	ok action: [ self acceptEntry ].
	hint action: [ self hintNeeded ].
	giveup action: [ self giveUp ].