accessing
levelup
	(goal unlockedContent allSatisfy: [ :c | c overAllLevel level >= 8 ])
		ifTrue: [ 
			(goal lockedCharacters first: 30) do: #unlock.
			goal unlockWords 
		]