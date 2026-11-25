accessing
currentUser: aUser

	self assert: (users includes: aUser) description: 'The user has to be registered in the application'.

	currentUser := aUser.

	self announcer announce: HSKUserSelected new