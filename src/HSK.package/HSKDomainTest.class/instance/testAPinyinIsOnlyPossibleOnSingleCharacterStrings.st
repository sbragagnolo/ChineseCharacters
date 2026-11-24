tests
testAPinyinIsOnlyPossibleOnSingleCharacterStrings

	| hsks |

	hsks := HSKString fromString: '我爱'.

	self should: [ hsks pinyin ] raise: AssertionFailure.

	self assert: ((HSKString fromString: '我') pinyin isCollection).

	self assert: ((HSKString fromString: '我') pinyin isNotEmpty)