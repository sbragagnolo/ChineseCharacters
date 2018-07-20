rendering
renderContentOn: html
	html
		tbsFormGroup: [ html label
				for: #pinyin;
				with: character traditional.
			html textInput on: #pinyin of: self ]