specs
grid
	^ SpecBoxLayout newHorizontal
		add: #todo;
		add: self bodyGrid;
		add: #done;
		yourself