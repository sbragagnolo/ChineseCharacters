shifting
privateNext
	self model hasNext ifTrue: [
	self model next.
	self modelChanged ] ifFalse:[ UIManager confirm: 'Done!' ]