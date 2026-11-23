specs
box

	^ SpBoxLayout newTopToBottom
		  add: (SpBoxLayout newLeftToRight
				   add: #todo withConstraints: [ :constraints |
						   constraints
							   expand: false;
							   fill: true;
							   height: 600;
							   padding: 10;
							   width: 100 ];
				   add: (SpBoxLayout newTopToBottom
						    add: (SpBoxLayout newLeftToRight
								     add: #word
								     expand: true
								     fill: true
								     padding: 0;
								     add: (SpBoxLayout newTopToBottom
										      add: #meanings
										      expand: true
										      fill: true
										      padding: 0;
										      add: #status withConstraints: [ :constraints |
												      constraints
													      expand: false;
													      fill: true;
													      height: 100 ];
										      yourself));
						    add: (SpBoxLayout newLeftToRight
								     add: #pinyin
								     expand: true
								     fill: true
								     padding: 0;
								     yourself)
						    withConstraints: [ :constraints |
								    constraints
									    expand: false;
									    fill: true;
									    height: 50 ];
						    yourself);
				   add: #done withConstraints: [ :constraints |
					   constraints
						   expand: false;
						   fill: false;
						   padding: 10;
						   width: 100 ];
				   yourself)
		  withConstraints: [ :constraints |
				  constraints
					  expand: false;
					  fill: true;
					  padding: 10;
					  width: 200 ];
		  add: (SpBoxLayout newLeftToRight
				   add: #ok;
				   add: #hint;
				   add: #giveup;
				   add: #inspectChar;
				   yourself)
		  expand: false
		  fill: true
		  padding: 30