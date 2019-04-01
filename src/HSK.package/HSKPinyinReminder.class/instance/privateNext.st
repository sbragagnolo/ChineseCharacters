shifting
privateNext
	exercise hasNext
		ifTrue: [ exercise next.
			current ifNotNil: [ self doneItems addFirst: current ].
			current := self todoItems removeFirst.
			self loadData ]
		ifFalse: [ UIManager confirm: 'Done!' ]