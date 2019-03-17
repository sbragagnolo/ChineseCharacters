asserting
assertWith: aString
	| rslt |
	rslt := friendly
		ifTrue: [ self friendlyAssert: aString ]
		ifFalse: [ subject knowledge asHSKString pinyin includes: aString ].
	subject submitReview: rslt on: #phonetic.
	^ rslt