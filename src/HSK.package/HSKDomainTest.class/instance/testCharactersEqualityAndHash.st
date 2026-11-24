tests
testCharactersEqualityAndHash

	| me myCopy other meToo |

	me := HSKCharacter new traditional: $我; simplified: $我; definition: (Set with: 'pronoun').

	myCopy := HSKCharacter new traditional: $我; simplified: $我; definition: (Set with: 'pronoun').

	other := HSKCharacter new traditional: $你; simplified: $你; definition: (Set with: 'pronoun').

	meToo := HSKCharacter new traditional: $我; simplified: $我; definition: (Set with: 'different').

	self assert: me equals: myCopy.

	self assert: me hash equals: myCopy hash.

	self deny: me equals: other.

	self deny: me equals: meToo