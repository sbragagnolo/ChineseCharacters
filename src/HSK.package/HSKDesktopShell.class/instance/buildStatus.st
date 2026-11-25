building
buildStatus

	statusLabel := ToLabel text: ('' asRopedText fontName: 'NSimSun'; yourself).

	statusLabel id: #status.

	self addChild: statusLabel