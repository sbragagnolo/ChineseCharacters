tests
testDefinitionsWithoutADictionaryWordAnswerNothing

	| definitions |

	HSKDictionaryLoader reset.

	definitions := (HSKString fromString: '龺龺') definition.

	HSKDictionaryLoader reset.

	self assert: definitions isEmpty