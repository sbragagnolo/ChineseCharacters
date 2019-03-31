as yet unclassified
loadFromCedict: aFileReference
	| stream line traditional simplified |
	stream := aFileReference readStream.
	[ stream atEnd ]
		whileFalse: [ line := self nextParseableLine: stream.
			traditional := line upTo: Character space.
			simplified := line upTo: Character space.
			line := line upToEnd readStream.
			self loadWord: traditional fromLine: line.
			traditional = simplified
				ifFalse: [ "]
				on: Error
				do: [ failures
						add:
							{traditional.
							simplified} ]"
					line reset.
					self loadWord: simplified fromLine: line ] ]