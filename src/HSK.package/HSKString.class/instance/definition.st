accessing
definition

	| definitions firstDefinitions |

	definitions := ((HSKDictionaryLoader default trie

		definitionsFor: self

		ifNone: [ {} ])

		collect: [ :each | ', ' join: each asArray ]) asArray.

	self size = 1 ifTrue: [ firstDefinitions := (self first definition asArray).

		definitions := firstDefinitions , definitions ].

	^ definitions