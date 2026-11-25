building
menuButtonFor: aGlyph action: aBlock

	| button |
	button := ToButton new.

	button label: (ToLabel text: (self styledText: aGlyph fontSize: 32)).

	button extent: 64 @ 64.

	button addEventHandlerOn: ToClickedSkinEvent do: [ :anEvent | aBlock value ].

	^ button