initialization
drawCurrentWordOn: canvas
	HSKDrawableContent new
		content: exercise current subject  knowledge asHSKString asString;
		drawOn: canvas at: 1