initialization
submitReview: aBool on: aSkill
	self submitReview: aBool at: DateAndTime now on: aSkill withAnnouncer: (session ifNotNil: [ :s | s announcer])