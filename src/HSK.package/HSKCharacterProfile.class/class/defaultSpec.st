specs
defaultSpec
	^ SpecBoxLayout newVertical
		add:
			(SpecBoxLayout newHorizontal
				add: #character;
				add: #level);
		add: #date