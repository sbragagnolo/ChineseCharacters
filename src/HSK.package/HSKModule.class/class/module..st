accessing
module: aName
	^ (#(hsk1 hsk2 hsk3 hsk4 hsk5 hsk6 nohsk dictionary latinLetter number punctuation hskPunctuation) includes: aName)
		ifTrue: [ instances at: aName ifAbsent: [ self perform: aName asSymbol ] ]
		ifFalse: [ self error: 'Unknown module ' , aName asString  ]