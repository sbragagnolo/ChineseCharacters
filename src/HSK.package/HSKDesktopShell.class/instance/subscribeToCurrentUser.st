refreshing
subscribeToCurrentUser

	app currentUser isNil

		ifTrue: [ ^ self ].

	app currentUser announcer

		when: SRSLevelUp

		do: [ :anAnnouncement | statusLabel text: ('Knowledge level up!' asRopedText fontName: 'NSimSun'; yourself) ]

		for: self