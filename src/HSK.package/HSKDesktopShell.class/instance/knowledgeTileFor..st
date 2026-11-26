refreshing
knowledgeTileFor: anEntry

	| label |

	label := ToLabel text: (('' , (self overview spellingOf: anEntry) , ' - ' , (self overview levelOf: anEntry) asString) asRopedText fontName: 'NSimSun'; yourself).
	^ label