as yet unclassified
loadFromCedict: aFileReference
	| stream line traditional simplified failures |
	stream := aFileReference readStream.
	failures := OrderedCollection new.
	[ stream atEnd ]
		whileFalse:
			[ line := stream nextLine readStream.
			traditional := line upTo: Character space.
			simplified := line upTo: Character space.
			[ self loadWord: (HSKString fromString: traditional or: simplified) fromLine: line ]
				on: Error
				do: [ failures
						add:
							{traditional.
							simplified} ] ] .
