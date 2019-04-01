accessing
loadData
	pinyin text: ''.
	meanings text: (String crlf join: exercise current meanings).
	todo presenters: self todoItems.
	done presenters: self doneItems