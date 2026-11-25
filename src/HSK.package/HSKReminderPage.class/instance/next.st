actions
next

	self hasNext ifFalse: [ ^ self ].

	exercise next.

	processed := processed + 1