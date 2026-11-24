accessing
totalAmount

	self user isNil ifTrue: [ ^ 0 ].

	^ self user goal characters size