as yet unclassified
loadPhonemAndRadicalsHolder: caracter stream: aStream
	| subcontent real |

	real := HSKCharacter new.
	real traditional: caracter traditional.
	real simplified: nil.
	HSKCharacter instances add: real.
	aStream reset.
	aStream upToAll: caracter traditional asString , '</h2>'.
	aStream atEnd
		ifTrue: [ ^ self ].
	aStream upToAll: 'appears as a character in <!-- /react-text --><!-- react-text:'.
	aStream upToAll: '-->'.
	real wordsAmount: (aStream upToAll: '<!-- /react-text -->') asNumber.
	aStream upToAll: 'Radical :</div><div class="decompbox" data-reactid='.
	subcontent := (aStream upToAll: '</div>') readStream.
	[ subcontent atEnd ]
		whileFalse: [ subcontent upToAll: 'href="/character/'.
			real radicals add: subcontent next ].
	aStream upToAll: 'Graphical :</div><div class="decompbox"'.
	subcontent := (aStream upToAll: '</div>') readStream.
	[ subcontent atEnd ]
		whileFalse: [ | next |
			subcontent upToAll: '-->'.
			next := subcontent next.
			next = $<
				ifFalse: [ real graphicals add: next ] ].
	aStream upToAll: 'High Frequency</h4>'.
	subcontent := (aStream upToAll: '>Medium Frequency</h4>') readStream.
	[ subcontent atEnd ]
		whileFalse: [ | next |
			subcontent upToAll: 'href="/character/'.
			next := subcontent upToAll: '"'.
			next isEmptyOrNil
				ifFalse: [ real hfwords add: next ] ].
	subcontent := (aStream upToAll: '<div class="clear"') readStream.
	[ subcontent atEnd ]
		whileFalse: [ | next |
			subcontent upToAll: 'href="/character/'.
			next := subcontent upToAll: '"'.
			next isEmptyOrNil
				ifFalse: [ real mdwords add: next ] ].
	real radicals removeAll: (real radicals select: [ :c | c = nil or: [ c = Character space ] ]).
	real graphicals removeAll: (real graphicals select: [ :c | c = nil or: [ c = Character space ] ]).
	caracter becomeForward: real