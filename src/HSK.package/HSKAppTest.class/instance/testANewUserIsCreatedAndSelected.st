tests
testANewUserIsCreatedAndSelected

	| user |

	user := app newUser.

	self assert: app users size equals: 1.

	self assert: app currentUser == user.

	self assert: user goal notNil.

	self assert: user goal characters notEmpty.

	self assert: (user goal characters anySatisfy: [ :c | c knowledge traditional = $我 ])