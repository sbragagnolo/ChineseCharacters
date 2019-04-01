specs
box
	^ SpecBoxLayout newVertical
		add:
			(SpecBoxLayout newHorizontal
				add: #todo withConstraints: [: constraints | constraints 
				expand: false;
				fill: true; 
				padding: 10; width: 100 ];
				add:
					(SpecBoxLayout newVertical
						add: (SpecBoxLayout newHorizontal add: #word  expand: true fill: true padding: 0; 
															 add: (SpecBoxLayout newVertical add: #meanings  expand: true fill: true padding: 0; add: #status ; yourself)
							  ); 
						add: (SpecBoxLayout newHorizontal add: #pinyin  expand: true fill: true padding: 0 ; borderWidth: 0;yourself)  withConstraints: [ : constraints | constraints expand: false; fill: true; height: 50] ;
						yourself);
				add: #done withConstraints: [: constraints | constraints 
				expand: false;
				fill: true; 
				padding: 10; width: 100; height: 600 ];
				yourself)
				withConstraints: [: constraints | constraints 
				expand: false;
				fill: true; 
				padding: 10; width: 200 ];
			
		add:
			(SpecBoxLayout newHorizontal
				add: #ok;
				add: #hint;
				add: #giveup;
				add: #inspectChar;
				yourself) expand: false fill: true padding: 30
		