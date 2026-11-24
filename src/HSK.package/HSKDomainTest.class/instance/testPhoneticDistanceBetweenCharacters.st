tests
testPhoneticDistanceBetweenCharacters

	| nii mine you |

	nii := HSKCharacterProvider default detect: [ :c | c traditional = $你 ].

	mine := HSKCharacter new traditional: $你; simplified: $你; pinyin: (Set with: 'ni3').

	self assert: (nii phoneticDistance: mine) equals: 3.

	self assert: (mine phoneticDistance: mine) equals: -1.

	self assert: (nii pronouncedLike: mine).

	you := HSKCharacterProvider default detect: [ :c | c traditional = $有 ].

	self deny: (you pronouncedLike: mine)