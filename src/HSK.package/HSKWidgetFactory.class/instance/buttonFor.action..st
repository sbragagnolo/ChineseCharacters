building
buttonFor: aString action: aBlock

	| button |

	button := ToButton new.

	button label: (self labelFor: aString).

	button addEventHandlerOn: ToClickedSkinEvent do: [ :anEvent | aBlock value ].

	^ button