accessing
module: aName
	^ instances at: aName ifAbsent: [ self perform: aName asSymbol ]