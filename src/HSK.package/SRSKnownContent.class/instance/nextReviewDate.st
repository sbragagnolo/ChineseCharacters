accessing
nextReviewDate
	^ (skills values
		collect: [ :s | s nextReviewDateAfter: lastReviewDate ])
		ifEmpty: [ DateAndTime now ]
		ifNotEmpty: [ :s | s min ]