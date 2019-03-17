accessing
next
	| node path |
	node := trie root.
	path := OrderedCollection new.
	[ stream atEnd ]
		whileFalse: [ | edge |
			path add: node.
			edge := node
				detectEdgeFor: stream next
				ifNotFound: [ node == trie root
						ifTrue: [ stream back.
							node := HSKTrieNodeUnknown new
								char: stream next;
								yourself ]
						ifFalse: [ [ node word isNil and: [ path allButFirst isNotEmpty ] ]
								whileTrue: [ stream back.
									node := path removeLast ] ].
					^ node ].
			node := edge node ].
	^ node