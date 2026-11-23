specs
defaultLayout

	^ SpBoxLayout newTopToBottom
		  add: (SpBoxLayout newLeftToRight
				   add: #character;
				   add: #level);
		  add: #result yourself