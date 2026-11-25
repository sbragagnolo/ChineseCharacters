building
optionButtonFor: aContent result: aResultLabel redrawing: aRedrawBlock

	| button |

	button := factory menuButtonFor: (page spellingOf: aContent) action: [

		| wasRight |

		wasRight := page answer: aContent.

		aResultLabel text: (factory styledText: (wasRight ifTrue: [ "Right! " ] ifFalse: [ "Wrong. " ])).

		page next.

		aRedrawBlock value ].

	^ button