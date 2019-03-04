accessing
encodeInstancesInto: aFileReference
	| stream |
	stream := '' writeStream.
	(STONWriter on: stream) nextPut: instances.
	aFileReference writeStream
		nextPutAll: stream contents utf8Encoded base64Encoded;
		close