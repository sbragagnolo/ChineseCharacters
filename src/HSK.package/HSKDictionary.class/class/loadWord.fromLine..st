as yet unclassified
loadWord: traditional fromLine: line
	| meaning |
	line upTo: $/.
	meaning := (('/' split: line upToEnd) collect: #trimBoth)
		reject: #isEmpty.
	self default register: traditional meaning: meaning.