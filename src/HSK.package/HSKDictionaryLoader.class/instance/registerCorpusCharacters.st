initialization
registerCorpusCharacters

	(HSKCharacterProvider default select: [ :c | (c isHolder not) and: [ c traditional notNil ] ])

		do: [ :aHSKCharacter |

			self

				register: (HSKString fromString: aHSKCharacter traditional asString)

				meaning: (aHSKCharacter definition asArray) ]