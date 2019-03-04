testing
hasToReview: aDuration
	^ (level = self maximalLevel or: [ self isLocked ])
		ifTrue: [ false ]
		ifFalse: [ (self class rateTable at: level) < aDuration ]