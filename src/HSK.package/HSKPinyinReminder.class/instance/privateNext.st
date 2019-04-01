shifting
privateNext
	exercise hasNext
		ifTrue: [ 
			exercise next.
			self doneItems add: self todoItems removeLast.
			self loadData ]
		ifFalse: [ UIManager confirm: 'Done!' ]