parsing
"class initialization"
parseUnicodeCategories: stream
	unicode := OrderedCollection new.
	[ stream atEnd ]
		whileFalse: [ | line from to cat |
			line := stream nextLine readStream.
			(line peek = $# or: [ line atEnd ])
				ifFalse: [ from := Number readFrom: (line upToAll: '..') base: 16.
					to := Number readFrom: (line upTo: $;) base: 16.
					cat := line upToEnd trimBoth.
					unicode
						add:
							(CharsetCategory new
								interval: (from to: to);
								category: cat);
						yourself ] ]