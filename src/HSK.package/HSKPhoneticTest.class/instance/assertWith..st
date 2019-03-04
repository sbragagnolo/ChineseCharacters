asserting
assertWith: aString
	| rslt | 
	rslt :=  friendly
		ifTrue: [ self friendlyAssert: aString ]
		ifFalse: [ subject knowledge pinyin  includes: aString ].
	subject submitReview: rslt withAnnouncer: nil.
	^ rslt.