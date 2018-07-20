initialization
submitReview: aBool at: aDateAndTime
	aBool
		ifTrue: [ level increase ]
		ifFalse: [ level decrease ].
	lastReviewDate := aDateAndTime