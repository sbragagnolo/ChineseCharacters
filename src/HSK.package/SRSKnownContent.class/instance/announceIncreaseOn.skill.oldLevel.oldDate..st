initialization
announceIncreaseOn: anAnnouncer skill: aSkill oldLevel: oldLevel oldDate: oldDate
	| ann |
	anAnnouncer ifNil: [ ^ self ].
	ann := SRSLevelIncreased new
		oldLevel: oldLevel;
		oldDate: oldDate;
		levelObject: (self skill: aSkill);
		currentDate: lastReviewDate;
		yourself.
	anAnnouncer announce: ann