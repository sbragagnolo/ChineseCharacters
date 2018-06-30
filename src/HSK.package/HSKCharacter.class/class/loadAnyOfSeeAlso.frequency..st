as yet unclassified
loadAnyOfSeeAlso: aReadStream frequency: anInteger
	| alsostream |
	aReadStream
		reset;
		upToAll: '<i>See also:</i>'.
	alsostream := (aReadStream upToAll: '</div>') readStream.
	[ alsostream atEnd ]
		whileFalse: [ alsostream upToAll: 'title="'.
			alsostream next
				ifNotNil: [ :char | (self load: char frequency: anInteger) ifNotNil: [ :also | ^ also ] ] ].
	aReadStream
		reset;
		upToAll: '<i>See also:</i>'.
	alsostream := (aReadStream upToAll: '</div>') readStream.
	alsostream upToAll: 'title="'.

	^ self new
		traditional: alsostream next;
		hasErrorLoading;
		yourself