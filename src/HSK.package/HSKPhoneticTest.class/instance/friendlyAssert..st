asserting
friendlyAssert: aString
	^ (subject knowledge pinyin collect: [ :pinyin | pinyin reject: [ :c | c isDigit ] ])
		includes: aString