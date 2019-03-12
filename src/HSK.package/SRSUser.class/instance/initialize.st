accessing
initialize
	super initialize.
	knowledge := Dictionary new.
	self initializeAnnouncer.
	goals := Dictionary new