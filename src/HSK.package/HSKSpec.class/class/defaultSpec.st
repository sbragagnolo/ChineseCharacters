specs
defaultSpec
	^ SpecLayout composed
		newColumn: [ :c | c add: #exercises ];
		yourself