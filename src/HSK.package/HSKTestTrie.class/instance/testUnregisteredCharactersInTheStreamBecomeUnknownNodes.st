tests
testUnregisteredCharactersInTheStreamBecomeUnknownNodes

	| stream first second |

	stream := trie streamDefinitions: (HSKString fromString: '龺龺') readStream.

	first := stream next.

	self assert: first isUnknown.

	self assert: first word equals: (HSKCharacterHolder new char: $龺) printString.

	second := stream next.

	self assert: second isUnknown.

	self assert: second word equals: (HSKCharacterHolder new char: $龺) printString