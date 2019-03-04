initialization
acceptEntry
	
	pinyin text
		ifEmpty: [ status label: 'Insert a pinyin before accepting'.
			^ self ].
	status
		label:
			((self model current
				beFriendly;
				assertWith: pinyin text)
				ifTrue: [ 'OK!' ]
				ifFalse: [ 'Wrongg!' ]), self model current level asString.
	
	self privateNext