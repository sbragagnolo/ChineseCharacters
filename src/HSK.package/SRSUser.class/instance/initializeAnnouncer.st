accessing
initializeAnnouncer
	announcer := Announcer new.
	announcer when: SRSLevelUp send: #levelup to: self