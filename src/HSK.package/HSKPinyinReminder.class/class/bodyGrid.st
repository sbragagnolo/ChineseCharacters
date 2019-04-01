specs
bodyGrid
	^ SpecGridLayout new
		add: (SpecBoxLayout newHorizontal add: #word; add: #status; yourself) 	at: 1 @ 1;
		add: (SpecBoxLayout newVertical add: (SpecBoxLayout newHorizontal 	add: #meanings expand: true fill: true padding: 0; 	yourself); yourself ) at: 1@2 span: 1@ 7;
		add: (SpecBoxLayout newVertical 
				    add: (SpecBoxLayout newHorizontal add: #pinyin expand: true fill: true padding: 0; yourself);
				add: (SpecBoxLayout newHorizontal 
				add: #ok; add: #hint; add: #giveup; 	add: #inspectChar; 	yourself) ;
				yourself) at: 1 @ 10 span: 1 @ 15;
			yourself