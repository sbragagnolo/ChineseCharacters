parsing
unicode
	unicode
		ifNil: [ self parseUnicodeCategories: self unicodeBlock readStream ].
	^ unicode