tests
testUnknownCharactersAreMemorizedAsHolders

	| holder |

	holder := HSKCharacterProvider default detectOrCreateHolder: $龺.

	self assert: holder isHolder.

	self assert: holder traditional equals: $龺.

	self assert: (HSKCharacterProvider default detectOrCreateHolder: $龺) == holder.

	self assert: (HSKString fromString: '龺') first == holder