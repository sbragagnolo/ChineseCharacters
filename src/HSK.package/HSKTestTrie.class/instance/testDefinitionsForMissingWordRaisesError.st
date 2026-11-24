tests
testDefinitionsForMissingWordRaisesError

	self should: [ trie definitionsFor: (HSKString fromString: '蛋糕') ] raise: Error