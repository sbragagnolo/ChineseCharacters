tests
testWordsSharingTheSameFirstCharacterCanBeDistinguished

	trie registerWord: (HSKString fromString: '我') definition: 'I'.

	trie registerWord: (HSKString fromString: '我们') definition: 'we'.

	self assert: (trie definitionsFor: (HSKString fromString: '我')) equals: {'I'} asSet.

	self assert: (trie definitionsFor: (HSKString fromString: '我们')) equals: {'we'} asSet.

	self assert: trie depth equals: 3