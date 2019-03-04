accessing
modelChanged
	self model
		ifNotNil: [ word label: self model current word.
			pinyin text: ''.
			meanings items: self model current meanings.
			
			 ].
		