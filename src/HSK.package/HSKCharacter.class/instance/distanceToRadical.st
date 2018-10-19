testing
distanceToRadical
	self isRoot
		ifTrue: [ ^ 0 ].
	^ (self radicals anySatisfy: #isRoot)
		ifTrue: [ 1 ]
		ifFalse: [ 2 ]