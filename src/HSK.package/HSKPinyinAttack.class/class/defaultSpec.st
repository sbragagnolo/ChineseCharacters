specs
defaultSpec
	^ SpecLayout composed
		newColumn: [ :c | 
			c
				newRow: #word;
				newRow: #meanings;
				addSplitter;
				newRow: #pinyin height: self defaultFont height + 10;
				addSplitter;
				newRow: [ :r | 
					r
						add: #ok;
						add: #hint;
						add: #giveup ]
					height: self toolbarHeight;
				newRow: #status height: self defaultFont height + 10 ]