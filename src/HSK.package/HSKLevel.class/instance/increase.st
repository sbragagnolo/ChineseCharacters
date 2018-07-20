initialization
increase
	level := level + 1 min: self maximalLevel.
	levelupTimes := levelupTimes +1 .
	level > max
		ifTrue: [ levelUp value ].
	max := level max: max