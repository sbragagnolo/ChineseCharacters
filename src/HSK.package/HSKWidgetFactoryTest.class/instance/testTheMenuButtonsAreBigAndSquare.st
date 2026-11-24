tests
testTheMenuButtonsAreBigAndSquare

	| button |

	button := factory menuButtonFor: '知' action: [ ].

	self assert: button requestedSize equals: 64 @ 64.