as yet unclassified
drawOn: canvas at: aTick
	canvas pathTransform loadIdentity.
	canvas pathTransform
		translateX: 100
		Y: self font getPreciseAscent + aTick.
	canvas setPaint: Color black.
	canvas setFont: self font.
	canvas
		drawShape:
			(canvas
				createPath:
					[ :builder | builder string: content traditional asString font: self font ])