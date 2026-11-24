initialization
app: anHSKApp

	app := anHSKApp.

	self refreshAll.

	app announcer

		when: HSKUserAdded

		do: [ :anAnnouncement | self refreshAll ]

		for: self;

		when: HSKUserSelected

		do: [ :anAnnouncement | self refreshAll ]

		for: self;

		when: HSKStyleChanged

		do: [ :anAnnouncement | self refreshAll ]

		for: self.

	^ self