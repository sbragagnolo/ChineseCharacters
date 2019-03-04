accessing
= anOther
	^ self species = anOther species
		and: [ self traditional = anOther traditional
				and: [ self definition = anOther definition ] ]