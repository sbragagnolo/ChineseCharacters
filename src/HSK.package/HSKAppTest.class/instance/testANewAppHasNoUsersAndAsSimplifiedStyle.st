tests
testANewAppHasNoUsersAndAsSimplifiedStyle

	self assert: app users isEmpty.

	self assert: app currentUser isNil.

	self assert: app style equals: #simplified.

	self assert: app isSimplified.

	self deny: app isTraditional