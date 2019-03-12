initialization
acceptEntry
	
	pinyin text
		ifEmpty: [ status label: 'Insert a pinyin before accepting'.
			^ self ].
	status
		label:
			((exercise current
				assertWith: pinyin text)
				ifTrue: [ 'Right!' ]
				ifFalse: [ 'Wrongg!' ]),  'The expected pinyin was ', self model current subject knowledge pinyin asArray asString.
	
	self privateNext