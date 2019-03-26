specs
table
	^ SpecLayout composed
		newColumn: [ :c | 
			c
				newRow: #word height: 100;
				newRow: #meanings;
				newRow: #pinyin height: self defaultFont height + 10;
				newRow: [ :r | 
					r
						add: #ok;
						add: #hint;
						add: #giveup;
						add: #inspectChar ]
					height: self toolbarHeight;
				newRow: #status height: self defaultFont height + 10 ]