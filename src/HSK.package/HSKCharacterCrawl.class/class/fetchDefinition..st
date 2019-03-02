actions
fetchDefinition: stream
	| subcontent definitions itemcontent item |
	stream reset.
	stream upToAll: '<span class="mw-headline" id="Definitions">Definitions</span>'.
	stream upToAll: '<ol>'.
	definitions := OrderedCollection new.
	subcontent := (stream upToAll: '</ol>') readStream.
	[ subcontent atEnd ]
		whileFalse: [ subcontent upToAll: '<li>'.
			itemcontent := (subcontent upToAll: '</li>') readStream.
			item := ''.
			[ itemcontent atEnd ]
				whileFalse: [ ((itemcontent upToAll: 'href="') includes: $;)
						ifTrue: [ item := item , ';' ].
					itemcontent upToAll: 'title="'.
					item := item , (itemcontent upToAll: '">') , ' ' ].
			definitions add: item ].
	^ definitions reject: #isEmptyOrNil thenCollect: #trim