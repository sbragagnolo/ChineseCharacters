as yet unclassified
stonContent
	| stream |
	stream := '' writeStream.
	(STONWriter on: stream) nextPut:trie.
	^ stream contents utf8Encoded   