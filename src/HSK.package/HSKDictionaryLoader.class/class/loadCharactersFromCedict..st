as yet unclassified
loadCharactersFromCedict: aFileReference
	| stream line traditional simplified |
	stream := aFileReference readStream.
	[ stream atEnd ]
		whileFalse: [ line := (self nextParseableLine: stream).
			traditional := line upTo: Character space.
			simplified := line upTo: Character space.
			traditional size = 1
				ifTrue: [ self
						treatCharacter: traditional first
						and: simplified first
						fromCedictLine: line ] ]