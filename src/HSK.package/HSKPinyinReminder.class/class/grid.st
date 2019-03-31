specs
"protocol: #specs"

grid
	^ SpecGridLayout new
		add: #word at: 1 @ 1;
		add: #meanings at: 2 @ 1;"
		add: #pinyin at: 1 @ 3;
		add: #ok at: 1 @ 4;
		add: #hint at: 2 @ 4;
		add: #giveup at: 3 @ 4;
		add: #inspectChar at: 3 @ 5;
		add: #status at: 1 @ 5;"
		yourself