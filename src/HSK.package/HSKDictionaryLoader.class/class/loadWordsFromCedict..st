as yet unclassified
loadWordsFromCedict: aFileReference
	| stream line traditional simplified failures |
	stream := aFileReference readStream.
	failures := OrderedCollection new.
	[ stream atEnd ]
		whileFalse: [ line := self nextParseableLine: stream.
			traditional := line upTo: Character space.
			simplified := line upTo: Character space.
			 line := line upToEnd readStream.
			self loadWord: traditional fromLine: line.
			traditional = simplified
				ifFalse: [ line reset.
					self loadWord: simplified fromLine: line ] "]
				on: Error
				do: [ failures
						add:
							{traditional.
							simplified} ]" ]