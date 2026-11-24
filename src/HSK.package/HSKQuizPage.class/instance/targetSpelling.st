converting
targetSpelling

	| spelling |

	spelling := target knowledge asHSKString.

	app isTraditional

		ifTrue: [ ^ spelling traditionalString ].

	^ spelling simplifiedString