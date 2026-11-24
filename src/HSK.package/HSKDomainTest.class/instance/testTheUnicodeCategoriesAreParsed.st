tests
testTheUnicodeCategoriesAreParsed

	| basic supplement |

	basic := CharsetCategory unicode detect: [ :c | c isBasicLatin ].

	supplement := CharsetCategory unicode detect: [ :c | c isLatin1Supplement ].

	self assert: (basic interval includes: $a codePoint).

	self assert: (supplement interval includes: $é codePoint).

	self deny: basic == supplement