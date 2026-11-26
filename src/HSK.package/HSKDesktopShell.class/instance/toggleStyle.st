actions
toggleStyle

	app isTraditional
		ifTrue: [ app style: #simplified ]
		ifFalse: [ app style: #traditional ]