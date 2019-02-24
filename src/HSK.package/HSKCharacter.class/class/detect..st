testing
detect: aCode
	^ instances detect: [ :i | i traditional = aCode or: [ i simplified = aCode ] ]