initialization
acceptEntry
	| assertion | 
	pinyin text
		ifEmpty: [ status label: 'Insert a pinyin before accepting'.
			^ self ].
	assertion := (exercise current assertWith: pinyin text).
	current result: (assertion ifTrue: [#right] ifFalse:[#wrong]).
	status
		text:
			(assertion
				ifTrue: [ 'Right' ]
				ifFalse: [ 'Wrong - ' ]) , 'The expected pinyin was: ', String crlf
				,( String crlf join: exercise current subject knowledge asHSKString pinyin asArray ).
	self privateNext