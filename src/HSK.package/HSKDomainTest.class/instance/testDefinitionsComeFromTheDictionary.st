tests
testDefinitionsComeFromTheDictionary

	| definitions |

	HSKDictionaryLoader reset.

	HSKDictionaryLoader default register: (HSKString fromString: '蛋糕') meaning: #('cake' 'pastry').

	definitions := (HSKString fromString: '蛋糕') definition asArray.

	HSKDictionaryLoader reset.

	self assert: definitions equals: {'cake, pastry'}.