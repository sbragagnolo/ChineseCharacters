initialization
initializeUser: aUser
	self initialCharactersSet 
		do: [ :i | 
			aUser
				registerKnowedge:
					(SRSKnownContent new
						knowledge: i;
						yourself) ]