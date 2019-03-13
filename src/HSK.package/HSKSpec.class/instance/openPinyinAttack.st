initialization
openPinyinAttack
	| pi pa |
	pa := self instantiate: HSKPinyinAttack.
	pa model: self model.
	pi := NotebookPage
		title: 'Pinyin Attack'
		icon: (self iconNamed: #smallPaint)
		provider: [ pa ].
	exercises addPage: pi.
	exercises updatePageContent: pi.
