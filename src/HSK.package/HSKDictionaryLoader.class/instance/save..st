as yet unclassified
save: aFileRefeerence
	| stream |
	stream := '' writeStream.
	(STONWriter on: stream) nextPut: trie.
	aFileRefeerence writeStream
		nextPutAll: stream contents utf8Encoded base64Encoded ;
		close