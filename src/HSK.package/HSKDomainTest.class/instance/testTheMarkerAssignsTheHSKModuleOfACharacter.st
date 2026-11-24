tests
testTheMarkerAssignsTheHSKModuleOfACharacter

	| marker me stranger |

	marker := HSKCharacterMarker new.

	me := HSKCharacter new traditional: $我; simplified: $我.

	marker mark: me.

	self assert: me module == HSKModule hsk1.

	stranger := HSKCharacter new traditional: $龺; simplified: $龺.

	marker mark: stranger.

	self assert: stranger module == HSKModule nohsk