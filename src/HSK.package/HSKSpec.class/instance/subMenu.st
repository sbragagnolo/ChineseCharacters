initialization
subMenu
	^ MenuPresenter new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'Pinyin Attack';
						icon: (self iconNamed: #openIcon);
						shortcut: $o meta;
						action: [ self openPinyinSession ] ].
			group
				addItem: [ :item | 
					item
						name: 'Save';
						icon: (self iconNamed: #smallSaveIcon);
						shortcut: $s meta;
						action: [ self inform: 'Save' ] ].
			group
				addItem: [ :item | 
					item
						name: 'Close';
						shortcut: $k meta;
						icon: (self iconNamed: #smallCancelIcon);
						action: [ self inform: 'Close' ] ] ]