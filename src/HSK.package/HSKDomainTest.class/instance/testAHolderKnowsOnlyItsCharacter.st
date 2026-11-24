tests
testAHolderKnowsOnlyItsCharacter

	| holder |

	holder := HSKCharacterHolder new char: $龺.

	self assert: holder traditional equals: $龺.

	self assert: holder simplified equals: $龺.

	self assert: holder definition equals: {$龺}.

	self assert: holder radicals equals: {}.

	self assert: (holder pinyin isKindOf: Set).

	self assert: holder pinyin isEmpty.

	self assert: holder module == HSKModule nohsk.

	self assert: holder isHolder.

	self deny: holder hasError.

	self assert: holder printString equals: 'H(龺)'.

	holder traditional: $x.

	holder simplified: $y.

	self assert: holder traditional equals: $龺.

	self assert: (holder asHSKString first == holder)