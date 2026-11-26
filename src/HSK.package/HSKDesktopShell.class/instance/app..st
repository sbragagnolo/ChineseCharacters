accessing
app: anHSKApp

	app := anHSKApp.

	knowledgeView := HSKKnowledgeView on: app factory: factory.

	self refreshUsers.

	self showKnowledgePage.

	app announcer
		when: HSKUserAdded do: [ :anAnnouncement |
				self refreshUsers.
				self knowledgeView refresh ]
		for: self;
		when: HSKUserSelected do: [ :anAnnouncement |
				self refreshUsers.
				self knowledgeView refresh ]
		for: self;
		when: HSKStyleChanged do: [ :anAnnouncement | self knowledgeView refresh ] for: self.

	self subscribeToCurrentUser.

	^ self