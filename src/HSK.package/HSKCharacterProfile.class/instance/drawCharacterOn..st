initialization
drawCharacterOn: aCanvas
	HSKDrawableContent new
		content: self model;
		drawOn: aCanvas at: 10