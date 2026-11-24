refreshing
refreshUsers

	usersBar removeChildren.

	app users

		doWithIndex: [ :each :anIndex |

			| userButton |

			userButton := ToButton new.

			userButton label: (ToLabel text: (('User ' , anIndex asString) asRopedText fontName: 'NSimSun'; yourself)).

			userButton addEventHandlerOn: ToClickedSkinEvent do: [ :anEvent | self app currentUser: each ].

			usersBar addChild: userButton ]