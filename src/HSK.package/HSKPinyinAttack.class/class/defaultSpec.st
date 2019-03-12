specs
defaultSpec
	^ SpecLayout composed
		newColumn: [ :c | 
			c
				newRow: #viewport;
				newRow: #entry ]