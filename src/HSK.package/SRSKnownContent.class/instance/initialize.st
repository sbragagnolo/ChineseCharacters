initialization
initialize
	super initialize .
	skills := Dictionary new.
	lastReviewDate := DateAndTime new.
	locked := true