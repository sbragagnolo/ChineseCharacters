initialization
testDetectWordAndNotFoundExecuteBlock
	| test |
	test := false.
	trie definitionsFor: (HSKString fromString: '我愛你') ifNone: [ test := true ].
	self assert: test description: 'Block execution was expected'