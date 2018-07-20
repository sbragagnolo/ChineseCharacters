as yet unclassified
createUser: anID
	| user |
	user := users
		at: anID
		put:
			(HSKUser new
				id: anID;
				yourself).
	self initializeUser: user.
	^ user