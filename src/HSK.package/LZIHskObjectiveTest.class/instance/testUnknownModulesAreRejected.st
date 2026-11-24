tests
testUnknownModulesAreRejected

	self should: [ HSKModule module: #unknown ] raise: Error.

	self should: [ HSKModule module: 'someRandomModule' ] raise: Error