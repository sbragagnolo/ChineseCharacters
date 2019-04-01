initialization
drawCurrentWordOn: canvas box: aBoundingBox
	HSKDrawableContent new
		content: exercise current subject knowledge asHSKString asString;
		drawOn: canvas
			at: aBoundingBox center
			font: (LogicalFont familyName: 'PingFang TC' pointSize: 100)