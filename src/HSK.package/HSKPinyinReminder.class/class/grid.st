specs
grid
	"^ SpecBoxLayout newHorizontal
		add: (SpecBoxLayout newHorizontal add:#todo expand: true fill: false padding:20; yourself ) expand: true fill: false padding: 20;
		add: self bodyGrid;
		add: (SpecBoxLayout newHorizontal add:#done  expand: true fill: false padding:20; yourself )expand: true fill: false padding: 20;
		yourself"
		
	^SpecGridLayout new 
		add: (SpecBoxLayout newVertical add: #todo   withConstraints: [: constraints | constraints 
				expand: false;
				fill: false; 
				padding: 0; width: 10 ] ) at:1@1;
		add: self bodyGrid at:4@1;
		add: (SpecBoxLayout newVertical add:#done  expand: true fill: false padding:20; yourself ) at: 5@1;
		yourself