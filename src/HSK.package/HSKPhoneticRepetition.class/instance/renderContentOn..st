rendering
renderContentOn: html 
	html tbsRow
		with: [ html
				tbsColumn: [ html tbsRow: [ html heading: 'Pinyin attack' ].
					html tbsRow: [ self renderTests: html ] ]
				mediumSize: 5.
			html tbsColumn: [ self renderProgress: html ] mediumSize: 2 ]