initialization
drawOn: canvas
	canvas surface clear: Color white.
	canvas pathTransform loadIdentity.
	canvas pathTransform
		translateX: 30
		Y: self font getPreciseAscent + self position.
	canvas setPaint: Color black.
	canvas setFont: self font.
	canvas drawString: '好'