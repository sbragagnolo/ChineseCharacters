initialization
announceLevelUpOn: anAnnouncer skill: aSkill oldLevel: oldLevel oldDate: oldDate
	| ann |
	anAnnouncer ifNil: [ ^ self ].
	ann := SRSLevelUp new
		oldLevel: oldLevel;
		oldDate: oldDate;
		levelObject: (self skill: aSkill);
		currentDate: lastReviewDate;
		yourself.
	anAnnouncer announce: ann