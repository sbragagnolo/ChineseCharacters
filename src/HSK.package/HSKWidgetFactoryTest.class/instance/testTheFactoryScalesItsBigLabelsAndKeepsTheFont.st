tests
testTheFactoryScalesItsBigLabelsAndKeepsTheFont

	| label families |

	label := factory bigLabelFor: '中'.

	families := OrderedCollection new.

	label text

		attributesAndIndicesSuchThat: [ :each | each isKindOf: BlFontFamilyAttribute ]

		do: [ :each :anInterval | families add: each name ].

	self assert: families asArray equals: {'NSimSun'}.