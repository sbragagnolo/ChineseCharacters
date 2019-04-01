as yet unclassified
drawOn: canvas at: aPoint font: aFont
	canvas pathTransform loadIdentity.
	canvas pathTransform
		translateX: aPoint x
		Y: aFont getPreciseAscent + aPoint y.
	canvas setPaint: Color black.
	canvas setFont: aFont.
	canvas
		drawShape:
			(canvas
				createPath:
					[ :builder | builder string: content asHSKString traditionalString font: aFont ])