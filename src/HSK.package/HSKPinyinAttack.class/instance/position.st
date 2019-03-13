initialization
position
	^ (position ifNil: [ position := self font getPreciseAscent ]) + self font getPreciseAscent / 5