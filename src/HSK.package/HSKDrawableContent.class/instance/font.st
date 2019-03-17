initialization
font
	^ font ifNil: [ LogicalFont familyName: 'PingFang TC' pointSize: 30 ]