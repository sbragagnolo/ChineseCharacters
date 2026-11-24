accessing
currentSpelling

	| spelling |

	spelling := self currentSubject knowledge asHSKString.

	app isTraditional

		ifTrue: [ ^ spelling traditionalString ].

	^ spelling simplifiedString