initialization
drawOn: canvas
	
	canvas surface clear: Color white.
	
	HSKDrawableContent new content:  (HSKCharacter detect: $好);  drawOn: canvas at: tick.
	
	 