initialization
initializeWidgets
	word := self instantiate: AthensStaticPresenter.
	word surfaceExtent: 100 @ 100.
	word drawBlock: [ :canvas | self drawCurrentWordOn: canvas ].
	meanings := self newList.
	pinyin := self newTextInput.
	pinyin autoAccept: true.
	ok := self newButton.
	ok label: 'Accept'.
	hint := self newButton.
	hint label: 'Hint'.
	inspectChar := self newButton.
	inspectChar label: 'Inspect'.
	giveup := self newButton.
	giveup label: 'Give up'.
	status := self newLabel.
	inspectChar action: [ self inspectCurrentChar ].
	ok action: [ self acceptEntry ].
	hint action: [ self hintNeeded ].
	giveup action: [ self giveUp ].
	todo := self instantiate: ComponentListPresenter.
	done := self instantiate: ComponentListPresenter