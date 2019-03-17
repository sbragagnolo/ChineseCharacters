initialization
acceptEntry

	pinyin forceText
		ifEmpty: [ status label: 'Insert a pinyin before accepting'.
			^ self ].
	status
		label:
			((exercise current
				assertWith: pinyin forceText)
				ifTrue: [ 'Right!' ]
				ifFalse: [ 'Wrongg!' ]),  'The expected pinyin was ', exercise current subject knowledge pinyin asArray asString.
	
	self privateNext