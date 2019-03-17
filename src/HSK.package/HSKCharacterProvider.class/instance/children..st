accessing
children: aHSKCharacter 
	^ instances select: [ : i |( i radicals includes: aHSKCharacter ) and: [  aHSKCharacter ~= i] ]