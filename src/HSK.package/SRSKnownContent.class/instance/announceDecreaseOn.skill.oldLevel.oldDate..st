initialization
announceDecreaseOn: anAnnouncer skill: aSkill oldLevel: oldLevel oldDate: oldDate
	| ann |
	anAnnouncer ifNil: [ ^ self ].
	ann := SRSLevelDecreased new
		oldLevel: oldLevel;
		oldDate: oldDate;
		levelObject: (self skill: aSkill);
		currentDate: lastReviewDate;
		yourself.
	anAnnouncer announce: ann