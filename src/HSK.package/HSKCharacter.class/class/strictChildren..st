as yet unclassified
strictChildren: aHSKCharacter
	^ instances
		select:
			[ :i | i radicals size = 1 and: [ (i radicals includes: aHSKCharacter) and: [ aHSKCharacter ~= i ] ] ]