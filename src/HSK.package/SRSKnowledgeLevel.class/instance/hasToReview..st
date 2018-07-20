testing
hasToReview: aDuration
	^ level = self maximalLevel
		ifTrue: [ false ]
		ifFalse: [ (self class rateTable at: level) < aDuration ]