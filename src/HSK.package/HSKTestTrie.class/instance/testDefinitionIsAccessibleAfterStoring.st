initialization
testDefinitionIsAccessibleAfterStoring
	trie registerWord: (HSKString fromString: '蛋糕') definition: 'cake'.
	self assert: (trie definitionsFor: (HSKString fromString: '蛋糕')) asArray equals: {'cake'}