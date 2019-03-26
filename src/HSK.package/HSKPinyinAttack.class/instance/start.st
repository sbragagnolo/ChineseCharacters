initialization
start
	(animating ifNil: [ animating ])
		ifTrue: [ ^ self error: 'already working' ].
	animating := true.
	process := [ [ animating ]
		whileTrue: [ timeline tick.
			self delay ] ] forkNamed: ' Animation - ' , self hash asString