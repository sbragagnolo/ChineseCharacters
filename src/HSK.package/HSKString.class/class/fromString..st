instance creation
fromString: aString
	| instance |
	instance := self new: aString size.
	1 to: aString size do: [ :idx | instance at: idx put: (HSKCharacter detectOrCreateHolder: (aString at: idx)) ].
	^ instance