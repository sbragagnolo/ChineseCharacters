instance creation
fromString: traditional or: simplified
	| instance char |
	instance := self new: traditional size.
	1 to: traditional size do: [ :idx | 
		char := HSKCharacter instances
			detect: [ :d | d traditional = (traditional at: idx) ]
			ifNone: [ HSKCharacter instances
					detect: [ :d | d simplified = (simplified at: idx) ] ].
		instance at: idx put: char ].
	^ instance