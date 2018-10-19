initialization
testLoadWordOfTwoCharsImpliesATrieOf3Levels
	trie registerWord: (HSKString fromString: '蛋糕') definition: 'cake'.
	self assert: trie depth equals: 3