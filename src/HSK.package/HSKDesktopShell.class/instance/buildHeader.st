building
buildHeader

	| header newUserButton styleButton |

	header := ToPane horizontal.

	header id: #header.

	usersBar := ToPane horizontal.

	usersBar id: #usersBar.

	newUserButton := ToButton new.

	newUserButton label: (ToLabel text: ('New user' asRopedText fontName: 'NSimSun'; yourself)).

	newUserButton id: #newUserButton.

	newUserButton addEventHandlerOn: ToClickedSkinEvent do: [ :anEvent | self app newUser ].

	styleButton := ToButton new.

	styleButton label: (ToLabel text: ('Writing style' asRopedText fontName: 'NSimSun'; yourself)).

	styleButton id: #styleButton.

	styleButton addEventHandlerOn: ToClickedSkinEvent do: [ :anEvent | self toggleStyle ].

	header addChildren: { usersBar. newUserButton. styleButton }.

	self addChild: header