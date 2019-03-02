as yet unclassified
loadPhonemAndRadicals: caracter stream: aStream
	| words subcontent |
	aStream reset.
	aStream upToAll: caracter traditional asString , '</h2>'.
	aStream atEnd ifTrue: [ ^ self  ].
	aStream upToAll: 'appears as a character in <!-- /react-text --><!-- react-text:'.
	aStream upToAll: '-->'.
	caracter wordsAmount: (aStream upToAll: '<!-- /react-text -->') asNumber.
	aStream upToAll: 'Radical :</div><div class="decompbox" data-reactid='.
	subcontent := (aStream upToAll: '</div>') readStream.
	[ subcontent atEnd ]
		whileFalse: [ subcontent upToAll: 'href="/character/'.
			caracter radicals add: subcontent next ].
	aStream upToAll: 'Graphical :</div><div class="decompbox"'.
	subcontent := (aStream upToAll: '</div>') readStream.
	[ subcontent atEnd ]
		whileFalse: [ | next |
			subcontent upToAll: '-->'.
			next := subcontent next.
			next = $<
				ifFalse: [ caracter graphicals add: next ] ].
	aStream upToAll: 'High Frequency</h4>'.
	subcontent := (aStream upToAll: '>Medium Frequency</h4>') readStream.
	[ subcontent atEnd ]
		whileFalse: [ | next |
			subcontent upToAll: 'href="/character/'.
			next := subcontent upToAll: '"'.
			next isEmptyOrNil
				ifFalse: [ caracter hfwords add: next ] ].
	subcontent := (aStream upToAll: '<div class="clear"') readStream.
	[ subcontent atEnd ]
		whileFalse: [ | next |
			subcontent upToAll: 'href="/character/'.
			next := subcontent upToAll: '"'.
			next isEmptyOrNil
				ifFalse: [ caracter mdwords add: next ] ].
	caracter radicals
		removeAll: (caracter radicals select: [ :c | c = nil or: [ c = Character space ] ]).
	caracter graphicals
		removeAll: (caracter graphicals select: [ :c | c = nil or: [ c = Character space ] ])