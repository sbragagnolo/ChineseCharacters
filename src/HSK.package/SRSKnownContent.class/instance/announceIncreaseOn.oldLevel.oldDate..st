initialization
announceIncreaseOn: anAnnouncer oldLevel: oldLevel oldDate: oldDate
	| ann |
	anAnnouncer ifNil: [ ^ self ].
	ann := SRSLevelIncreased new
		oldLevel: oldLevel;
		oldDate: oldDate;
		levelObject: level;
		currentDate: lastReviewDate;
		yourself.
	anAnnouncer announce: ann