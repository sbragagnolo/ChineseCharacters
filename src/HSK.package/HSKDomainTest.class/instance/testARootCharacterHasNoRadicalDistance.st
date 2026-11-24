tests
testARootCharacterHasNoRadicalDistance

	| root child plain |

	root := HSKCharacter new traditional: $我; simplified: $我.

	root radicals: (Set with: root).

	self assert: root isRoot.

	self assert: root distanceToRadical equals: 0.

	child := HSKCharacter new traditional: $你; simplified: $你; radicals: (Set with: root).

	self deny: child isRoot.

	self assert: child distanceToRadical equals: 1.

	plain := HSKCharacter new traditional: $龺; simplified: $龺.

	self assert: plain distanceToRadical equals: 2