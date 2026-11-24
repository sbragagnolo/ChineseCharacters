converting
spellingOf: aContent

	| spelling |

	spelling := aContent knowledge asHSKString.

	app isTraditional

		ifTrue: [ ^ spelling traditionalString ].

	^ spelling simplifiedString