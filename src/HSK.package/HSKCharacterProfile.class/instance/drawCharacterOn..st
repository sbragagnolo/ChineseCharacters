initialization
drawCharacterOn: aCanvas
	HSKDrawableContent new
		content: self model knowledge;
		drawOn: aCanvas
			at: 50 @ 30
			font: (LogicalFont familyName: 'PingFang TC' pointSize: 30)