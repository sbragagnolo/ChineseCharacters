initialization
drawOn: aCanvas
	aCanvas
		ifNotNil: [ aCanvas surface
				drawDuring: [ :canvas | 
					canvas surface clear.
					canvas pathTransform loadIdentity.
					canvas surface clear: Color white.
					HSKDrawableContent new
						content: '好';
						drawOn: canvas at: (tick ifNil: [ 1 ]) ] ]
		ifNil: [ self inform: 'Canvas is nil! ' ]