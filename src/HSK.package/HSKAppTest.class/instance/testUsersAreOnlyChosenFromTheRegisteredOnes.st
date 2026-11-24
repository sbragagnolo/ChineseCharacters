tests
testUsersAreOnlyChosenFromTheRegisteredOnes

	| first second stranger |

	first := app newUser.

	second := app newUser.

	app currentUser: first.

	self assert: app currentUser == first.

	stranger := SRSUser new.

	self should: [ app currentUser: stranger ] raise: Error