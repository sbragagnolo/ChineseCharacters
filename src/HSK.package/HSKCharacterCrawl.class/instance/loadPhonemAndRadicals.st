hsk
loadPhonemAndRadicals
	| by |
	by := 30.
	300 to: HSKCharacter instances size by: by do: [ :i | 
		| chunk content stream |
		chunk := (i to: i + by - 1) collect: [ :ix | HSKCharacter instances at: ix ].
		content := (ZnEasy get: ('http://www.hanzicraft.com/character/' , ('' join: (chunk collect: #traditional)) urlEncoded) asUrl) entity string.
		stream := content readStream.
		chunk do: [ :c | self loadPhonemAndRadicals: c stream: stream ] ].