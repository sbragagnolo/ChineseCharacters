as yet unclassified
nextParseableLine: stream
	| line |
	[ line := stream nextLine ]
		doWhileTrue: [ (line first = $# or: [ line isEmpty ]) and: [ stream atEnd not ] ].
	^ line readStream