as yet unclassified
instance: aName order: anOrder
	^ instances
		at: aName
		ifAbsentPut: [ self new
				name: aName;
				order: anOrder;
				yourself ]