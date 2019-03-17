accessing
default
	^ default
		ifNil: [ default := self new.
			default hskCharacters: self decodeHskCharacters ]