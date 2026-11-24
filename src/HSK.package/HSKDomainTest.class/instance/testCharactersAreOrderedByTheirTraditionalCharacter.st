tests
testCharactersAreOrderedByTheirTraditionalCharacter

	| me nii |

	me := HSKCharacter new traditional: $我; simplified: $我.

	nii := HSKCharacter new traditional: $你; simplified: $你.

	self assert: nii < me.

	self deny: me < nii