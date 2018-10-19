initialization
testMultipleDefinitionsForTheSameWordAreStoredTogether
	trie registerWord: (HSKString fromString: '蛋糕') definition: 'cake'.
	trie registerWord: (HSKString fromString: '蛋糕') definition: 'yummy!'.
	
	self assert: (trie definitionsFor: (HSKString fromString: '蛋糕'))   equals: {'cake' . 'yummy!'} asSet