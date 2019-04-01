initialization
acceptEntry
	pinyin text
		ifEmpty: [ status label: 'Insert a pinyin before accepting'.
			^ self ].
	status
		text:
			((exercise current assertWith: pinyin text)
				ifTrue: [ 'Right!' ]
				ifFalse: [ 'Wrongg!' ]) , 'The expected pinyin was '
				, exercise current subject knowledge asHSKString pinyin  asArray asString.
	self privateNext