hsk
loadPhonemAndRadicalsHolder
	| by holders |
	by := 18.
	self halt.
	holders := HSKCharacter instances select: [ :i | (i isKindOf: HSKCharacterHolder)].
	1 to: holders size by: by do: [ :i | 
		| chunk content stream |
		chunk := (i to: i + by - 1) collect: [ :ix | holders at: ix ].
		content := (ZnEasy get: ('http://www.hanzicraft.com/character/' , ('' join: (chunk collect: #traditional)) urlEncoded) asUrl) entity string.
		stream := content readStream.
		chunk do: [ :c | self loadPhonemAndRadicalsHolder: c stream: stream ] ]