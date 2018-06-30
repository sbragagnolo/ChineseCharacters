testing
detect: aCode
	^ instances detect: [ :i | i simplified = aCode or: [ i traditional = aCode ] ]