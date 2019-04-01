initialization
drawCharacterOn: aCanvas box: boundingBox
	HSKDrawableContent new
		content: self model knowledge;
		drawOn: aCanvas
			at: boundingBox center
			font: (LogicalFont familyName: 'PingFang TC' pointSize: 5)