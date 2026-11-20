initialization
openPinyinReminder
	| pi pa |
	pa := self instantiate: HSKPinyinReminder.
	pa model: self model.
	pa startup.
	pi := SpNotebookPage
		title: 'Pinyin Reminder'
		icon: (self iconNamed: #smallPaint)
		provider: [ pa ].
	exercises addPage: pi.
	exercises updatePageContent: pi.
