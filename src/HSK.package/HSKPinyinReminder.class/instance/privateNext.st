shifting
privateNext
	exercise hasNext
		ifTrue: [ exercise next.
			self loadData ]
		ifFalse: [ UIManager confirm: 'Done!' ]