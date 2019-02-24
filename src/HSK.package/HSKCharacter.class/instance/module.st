accessing
module
	module isString ifFalse:    [ 
		module := module name .
	] .
	^ LZIModule module: module 