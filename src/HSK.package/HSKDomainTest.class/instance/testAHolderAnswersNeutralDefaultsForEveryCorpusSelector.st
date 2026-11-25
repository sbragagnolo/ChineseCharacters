tests
testAHolderAnswersNeutralDefaultsForEveryCorpusSelector

	| holder copy |

	holder := HSKCharacterHolder new char: $龺.

	self assert: holder hfwords isEmpty.

	self assert: holder mdwords isEmpty.

	self assert: holder graphicals isEmpty.

	self assert: holder phonems isEmpty.

	self assert: holder frequency equals: 4000.

	self assert: holder wordsAmount equals: 0.

	self assert: holder zhuyin isNil.

	self assert: holder asCharacter equals: $龺.

	self assert: holder asUnicode equals: $龺 asUnicode.