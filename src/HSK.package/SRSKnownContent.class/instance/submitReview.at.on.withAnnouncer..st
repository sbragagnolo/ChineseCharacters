initialization
submitReview: aBool at: aDateAndTime on: aSkill withAnnouncer: anAnnouncer
	| currentLevel haveLeveledUp oldDate |
	currentLevel := (self skill: aSkill) level.
	oldDate := lastReviewDate.
	haveLeveledUp := false.
	lastReviewDate := aDateAndTime.
	aBool
		ifTrue: [ haveLeveledUp := (self skill: aSkill) increase.
			self
				announceIncreaseOn: anAnnouncer
				skill: aSkill
				oldLevel: currentLevel
				oldDate: oldDate ]
		ifFalse: [ (self skill: aSkill) decrease.
			self
				announceDecreaseOn: anAnnouncer
				skill: aSkill
				oldLevel: currentLevel
				oldDate: oldDate ].
	haveLeveledUp
		ifTrue: [ self
				announceLevelUpOn: anAnnouncer
				skill: aSkill
				oldLevel: currentLevel
				oldDate: oldDate ]