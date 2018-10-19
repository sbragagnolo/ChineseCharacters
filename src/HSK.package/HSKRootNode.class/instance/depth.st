initialization
depth
	^ edges isEmpty 
		ifTrue: [ 1 ]
		ifFalse: [ (edges values collect: [ :e | e node depth ]) max ]