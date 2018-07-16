asserting
friendlyAssert: aString
	^ (subject pinyin collect: [ :pinyin | pinyin reject: [ :c | c isDigit ] ])
		includes: aString