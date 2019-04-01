actions
giveUp
	status
		text:
			'The expected pinyin was:' , String crlf
				,
					(String crlf
						join: exercise current subject knowledge asHSKString pinyin asArray).
	exercise current giveUp.
	current result: #giveup.
	self privateNext