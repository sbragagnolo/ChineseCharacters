refreshing
refreshUsers

	usersBar removeChildren.

	app users

		doWithIndex: [ :each :anIndex | usersBar addChild: (factory buttonFor: 'User ' , anIndex asString action: [ self app currentUser: each ]) ]