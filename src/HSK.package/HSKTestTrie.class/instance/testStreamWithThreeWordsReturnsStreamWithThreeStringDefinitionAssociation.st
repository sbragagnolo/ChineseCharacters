initialization
testStreamWithThreeWordsReturnsStreamWithThreeStringDefinitionAssociation
	| result node |
	trie registerWord: (HSKString fromString: '蛋糕') definition: 'cake'.
	trie registerWord: (HSKString fromString: '我') definition: 'I'.
	trie registerWord: (HSKString fromString: '吃') definition: 'eat'.
	result := trie streamDefinitions: (HSKString fromString: '我吃蛋糕') readStream.
	node := result next.
	self assert: node word equals: (HSKString fromString: '我').
	node := result next.
	self assert: node word equals: (HSKString fromString: '吃').
	node  := result next.
	self assert: node word equals: (HSKString fromString: '蛋糕').
	self assert: (result reset upToEnd collect: [ :w | w value definitions anyOne ] ) asArray  equals: {'I' . 'eat' . 'cake'}