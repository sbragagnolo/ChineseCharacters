notifications
subscribeToCurrentUser

	app currentUser ifNil: [ ^ self ].

	app currentUser announcer
		when: SRSLevelUp
		do: [ :anAnnouncement | statusLabel text: (factory styledText: 'Knowledge level up!') ]
		for: self