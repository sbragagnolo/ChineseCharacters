initialization
announceLevelUpOn: anAnnouncer oldLevel: oldLevel oldDate: oldDate
	| ann |
	anAnnouncer ifNil: [ ^ self ].
	ann := SRSLevelUp new
		oldLevel: oldLevel;
		oldDate: oldDate;
		levelObject: level;
		currentDate: lastReviewDate;
		yourself.
	anAnnouncer announce: ann