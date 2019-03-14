*HSK
categoryFor: aChar
	^ CharsetCategory unicode
		detect: [ :c | c interval includes: aChar codePoint ]