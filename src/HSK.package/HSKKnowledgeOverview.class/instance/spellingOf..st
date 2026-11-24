converting
spellingOf: anEntry

	| spelling |

	spelling := anEntry knowledge asHSKString.

	app isTraditional

		ifTrue: [ ^ spelling traditionalString ].

	^ spelling simplifiedString