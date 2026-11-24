tests
testTheFactoryBuildsButtonsWithActions

	| clicked button |

	clicked := false.

	button := factory buttonFor: 'OK' action: [ clicked := true ].

	button fireEvent: ToClickedSkinEvent new.

	self assert: clicked.