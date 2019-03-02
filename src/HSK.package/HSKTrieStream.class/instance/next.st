accessing
next
	| node  |
	node := trie root.
	[ stream atEnd ]
		whileFalse: [ | edge |
			edge := node
				detectEdgeFor: stream next
				ifNotFound: [ stream back.
					node == trie root ifTrue: [ self halt ].
					^ node ].
			node := edge node ].
	^ node