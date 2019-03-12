initialization
initializeWidgets
	menu := MenuPresenter new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'File';
						icon: (self iconNamed: #openIcon);
						subMenu: self subMenu ] ].
	exercises := self newNotebook.
	self openPinyinReminder. 
	self openPinyinAttack.
	