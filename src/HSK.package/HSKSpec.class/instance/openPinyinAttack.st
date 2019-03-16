initialization
openPinyinAttack
	| pi  |
	attack := self instantiate: HSKPinyinAttack.
	attack model: self model.
	pi := NotebookPage
		title: 'Pinyin Attack'
		icon: (self iconNamed: #smallPaint)
		provider: [ attack ].
	exercises addPage: pi.
	exercises updatePageContent: pi.
	