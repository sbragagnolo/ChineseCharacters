stream
upToEnd
	| words |
	words := OrderedCollection new.
	[ self atEnd ] whileFalse: [ words add: self next ].
	^ words