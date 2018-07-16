asserting
assertWith: aString
	^ friendly
		ifTrue: [ self friendlyAssert: aString ]
		ifFalse: [ subject pinyin includes: aString ]