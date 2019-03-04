accessing
initialize
	super initialize.
	knowledge := Dictionary new.
	announcer := Announcer new.
	announcer when: SRSLevelUp send: #levelup to: self