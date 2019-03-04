accessing
for: aContent
	^ self knowledge 
		at: aContent
		ifAbsentPut: [ self new
				knowledge: aContent;
				yourself ]