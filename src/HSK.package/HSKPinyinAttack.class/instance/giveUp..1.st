actions
giveUp
	self model current giveUp. 
	status label: 'Give up :( ', self model current level asString.
	self privateNext.