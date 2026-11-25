tests
testAQuizPageAnswersATitleAndAnExplanation
	| page |
	page := HSKQuizPage on: app.
	self assert: HSKQuizPage title equals: 'Pinyin Quiz'.
	self assert: (HSKQuizPage explanation isKindOf: String).
	self assert: HSKQuizPage explanation notEmpty.
	self assert: page title equals: 'Pinyin Quiz'.
	self assert: page explanation equals: HSKQuizPage explanation