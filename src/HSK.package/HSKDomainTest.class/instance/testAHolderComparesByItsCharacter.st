tests
testAHolderComparesByItsCharacter

	| holder copy other |

	holder := HSKCharacterHolder new char: $龺.

	copy := HSKCharacterHolder new char: $龺.

	other := HSKCharacterHolder new char: $㐀.

	self assert: holder = copy.

	self assert: holder hash equals: copy hash.

	self deny: holder = other.

	self deny: holder < other.

	self assert: other < holder.