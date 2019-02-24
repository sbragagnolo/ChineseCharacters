instantiation
default
	^ singleton ifNil: [  singleton := self new  ]