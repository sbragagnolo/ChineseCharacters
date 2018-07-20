rendering
renderTests: html
	self hasNext
		ifTrue: [ html
				form: [ html render: (self componentPinyinTest: self nextCharacter).
					html button text: 'next ' ] ]