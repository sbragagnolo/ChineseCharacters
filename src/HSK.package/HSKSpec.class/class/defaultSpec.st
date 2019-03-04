specs
defaultSpec
	^ SpecLayout composed
		newColumn: [ :c | 
			c
				add: #menu height: self toolbarHeight;
				add: #exercises ];
		yourself