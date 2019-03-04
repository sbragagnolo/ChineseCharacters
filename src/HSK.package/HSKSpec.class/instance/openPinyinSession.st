initialization
openPinyinSession
	| pi pa |
	pa := self instantiate: HSKPinyinAttack.
	pa model: SRSGoal xiaoWangZi exercise.
	pa startup.
	pi := NotebookPage
		title: 'Pinyin Attack'
		icon: (self iconNamed: #smallPaint)
		provider: [ pa ].
	exercises addPage: pi