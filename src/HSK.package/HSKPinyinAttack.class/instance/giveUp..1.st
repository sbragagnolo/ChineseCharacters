actions
giveUp
	self model current giveUp. 
	status label: 'The expected pinyin was ', self model current subject knowledge pinyin asArray asString.
	self privateNext.