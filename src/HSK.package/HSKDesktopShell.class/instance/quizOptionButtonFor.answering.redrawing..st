building
quizOptionButtonFor: aPage answering: aContent redrawing: aRedrawBlock

	| button |

	button := ToButton new.

	button label: (ToLabel text: ((aPage spellingOf: aContent) asRopedText fontName: 'NSimSun'; yourself)).

	button addEventHandlerOn: ToClickedSkinEvent do: [ :anEvent |

		| wasRight |

		wasRight := aPage answer: aContent.

		statusLabel text: ((wasRight ifTrue: [ 'Right! ' ] ifFalse: [ 'Wrong. ' ]) asRopedText fontName: 'NSimSun'; yourself).

		aPage next.

		aRedrawBlock value ].

	^ button