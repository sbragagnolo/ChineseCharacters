specs
defaultSpec
	^ SpecLayout composed
		newRow: [ :c | 
			c
				newColumn: #character width: 50;
				newColumn: #level ]
			height: 50;
		newRow: #date height: 30