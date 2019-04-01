initialization
drawCurrentWordOn: canvas
	HSKDrawableContent new
		content: exercise current subject knowledge asHSKString asString;
		drawOn: canvas
			at: 60 @ 60
			font: (LogicalFont familyName: 'PingFang TC' pointSize: 100)