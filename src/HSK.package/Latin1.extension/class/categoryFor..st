*HSK
categoryFor: aChar
	self
		assert: (CharsetCategory latin1 first interval includes: aChar codePoint)
		description:
			'There is not category in Latin1 char set for character '
				, aChar asString.
	^ CharsetCategory latin1 first