initialization
increase
	level := level + 1 min: self maximalLevel.
	levelupTimes := levelupTimes + 1.
	level > max
		ifTrue: [ ^ true ].
	max := level max: max.
	^ false.