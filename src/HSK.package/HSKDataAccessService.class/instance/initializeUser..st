initialization
initializeUser: aUser
	self initialCharactersSet 
		do: [ :i | 
			aUser
				registerKnowedge:
					(HSKKnownKnowledge new
						knowledge: i;
						yourself) ]