tests
testTheLatin1CategoryCoversTheFirst256Characters

	| latin |

	latin := CharsetCategory new

		interval: (0 to: 255);

		category: 'Latin1';

		yourself.

	self assert: latin allCharacters size equals: 256.

	self deny: latin isBasicLatin.

	self deny: latin isLatin1Supplement.

	self assert: latin printString equals: 'UC(Latin1)'.