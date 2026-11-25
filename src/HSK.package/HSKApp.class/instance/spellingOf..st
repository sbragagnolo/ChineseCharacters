converting
spellingOf: aKnowledge

	| spelling |

	spelling := aKnowledge asHSKString.

	self isTraditional

		ifTrue: [ ^ spelling traditionalString ].

	^ spelling simplifiedString