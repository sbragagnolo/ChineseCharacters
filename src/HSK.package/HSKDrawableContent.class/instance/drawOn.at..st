as yet unclassified
drawOn: canvas at: aTick
	canvas pathTransform loadIdentity.
	canvas pathTransform
		translateX: 30
		Y: self font getPreciseAscent + aTick.
	canvas setPaint: Color black.
	canvas setFont: self font.
	canvas drawString: content traditional asString