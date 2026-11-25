building
buildToolbar

	| toolbar newUserButton styleButton |

	toolbar := ToPane horizontal.

	usersBar := ToPane horizontal.

	usersBar id: #usersBar.

	newUserButton := factory buttonFor: 'New user' action: [ self app newUser ].

	newUserButton id: #newUserButton.

	styleButton := factory buttonFor: 'Style' action: [ self toggleStyle ].

	styleButton id: #styleButton.

	statusLabel := factory labelFor: ''.

	statusLabel id: #status.

	toolbar addChildren: { usersBar. newUserButton. styleButton. statusLabel }.

	self addChild: toolbar