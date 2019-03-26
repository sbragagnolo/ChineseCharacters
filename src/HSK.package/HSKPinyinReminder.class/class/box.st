specs
box
	^ SpecBoxLayout newVertical
		add:
			(SpecBoxLayout newHorizontal
				add: #todo;
				add:
					(SpecBoxLayout newVertical
						add: #word" (SpecBoxLayout newHorizontal add: #word  expand: true fill: true padding: 150 ; borderWidth: 30;yourself)"; 
						add:  (SpecBoxLayout newHorizontal add: #meanings  expand: true fill: true padding: 200 ; borderWidth: 30;yourself); 
						add: (SpecBoxLayout newHorizontal add: #pinyin  expand: true fill: true padding: 50 ; borderWidth: 30;yourself);
						yourself);
				add: #done;
				yourself);
		add:
			(SpecBoxLayout newHorizontal
				add: #ok;
				add: #hint;
				add: #giveup;
				add: #inspectChar;
				yourself) expand: false fill: true padding: 30;
		add: #status
	"
	^ SpecLayout composed
		newColumn: [ :c | 
			c
				newRow: #word  height: 100;
				newRow: #meanings;
				newRow: #pinyin height: self defaultFont height + 10;
				newRow: [ :r | 
					r
						add: #ok;
						add: #hint;
						add: #giveup;
						add: #inspectChar ]
					height: self toolbarHeight;
				newRow: #status height: self defaultFont height + 10 ]"