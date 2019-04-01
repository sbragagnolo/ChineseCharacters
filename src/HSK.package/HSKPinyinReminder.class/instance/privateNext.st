shifting
privateNext
	exercise hasNext
		ifTrue: [ 
			exercise next.
			self doneItems addFirst: self todoItems removeLast.
			self loadData ]
		ifFalse: [ UIManager confirm: 'Done!' ]