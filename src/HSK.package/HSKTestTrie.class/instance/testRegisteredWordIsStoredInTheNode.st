tests
testRegisteredWordIsStoredInTheNode

	| node |

	trie registerWord: (HSKString fromString: '蛋糕') definition: 'cake'.

	node := (trie streamDefinitions: (HSKString fromString: '蛋糕') readStream) next.

	self assert: node word equals: (HSKString fromString: '蛋糕').

	self assert: node definitions equals: {'cake'} asSet