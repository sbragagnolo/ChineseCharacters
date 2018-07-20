initialization
submitReview: aBool at: aDateAndTime withAnnouncer: anAnnouncer
	| currentLevel haveLeveledUp oldDate |
	currentLevel := level level.
	oldDate := lastReviewDate.
	aBool
		ifTrue: [ haveLeveledUp := level increase ]
		ifFalse: [ level decrease ].
	lastReviewDate := aDateAndTime.
	self announceIncreaseOn: anAnnouncer oldLevel: currentLevel oldDate: oldDate.
	haveLeveledUp
		ifTrue: [ self announceLevelUpOn: anAnnouncer oldLevel: currentLevel oldDate: oldDate ]