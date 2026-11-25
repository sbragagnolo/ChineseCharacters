tests
testTheQuizMenuButtonShowsItsTitleAndTooltip
	| button |
	button := shell childWithId: #quizButton.
	self assert: button label text asString equals: 'Pinyin Quiz'.
	self assert: button hasTooltip