instance creation
fromString: aString provider: aProvider
	| instance |
	instance := self new: aString size.
	aString
		doWithIndex:
			[ :each :idx | instance at: idx put: (aProvider detectOrCreateHolder: each) ].
	^ instance