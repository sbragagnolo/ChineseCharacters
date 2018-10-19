accessing
node
	^ node ifNil: [ node := HSKTrieNode new ]