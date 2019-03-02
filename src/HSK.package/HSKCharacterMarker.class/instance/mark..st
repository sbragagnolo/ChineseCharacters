as yet unclassified
mark: caracter
	(self hsk1 includes: caracter simplified)
		ifTrue: [ ^ caracter mark: #hsk1 ].
	(self hsk2 includes: caracter simplified)
		ifTrue: [ ^ caracter mark: #hsk2 ].
	(self hsk3 includes: caracter simplified)
		ifTrue: [ ^ caracter mark: #hsk3 ].
	(self hsk4 includes: caracter simplified)
		ifTrue: [ ^ caracter mark: #hsk4 ].
	(self hsk5 includes: caracter simplified)
		ifTrue: [ ^ caracter mark: #hsk5 ].
	(self hsk6 includes: caracter simplified)
		ifTrue: [ ^ caracter mark: #hsk6 ].
	caracter mark: #nohsk