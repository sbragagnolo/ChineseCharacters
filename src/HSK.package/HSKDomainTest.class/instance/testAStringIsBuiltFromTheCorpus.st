tests
testAStringIsBuiltFromTheCorpus

	| hsks |

	hsks := HSKString fromString: '我爱'.

	self assert: hsks size equals: 2.

	self assert: hsks first traditional equals: $我.

	self assert: hsks second traditional equals: $愛.

	self deny: hsks anyOne isHolder.

	self assert: (hsks allSatisfy: [ :c | c isKindOf: HSKCharacter ])