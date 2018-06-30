convenience
loadAnyOfSeeAlso: aReadStream
	| alsostream |
	aReadStream
		reset;
		upToAll: '<i>See also:</i>'.
	alsostream := (aReadStream upToAll: '</div>') readStream.
	[ alsostream atEnd ]
		whileFalse: [ alsostream upToAll: 'title="'.
			alsostream next
				ifNotNil: [ :char | (self load: char frequency: 1) ifNotNil: [ :also | ^ also ] ] ]