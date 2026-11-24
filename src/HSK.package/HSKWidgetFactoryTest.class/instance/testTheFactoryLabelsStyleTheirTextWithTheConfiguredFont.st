tests
testTheFactoryLabelsStyleTheirTextWithTheConfiguredFont

	| label found |

	label := factory labelFor: 'A'.

	found := nil.

	label text

		attributesAndIndicesSuchThat: [ :each | each isKindOf: BlFontFamilyAttribute ]

		do: [ :each :anInterval | found := each name ].

	self assert: found equals: 'NSimSun'.