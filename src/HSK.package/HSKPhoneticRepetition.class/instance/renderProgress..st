rendering
renderProgress: html
	html
		tbsListGroup: [ characters
				do: [ :c | 
					| item |
					item := html tbsLinkifyListGroupItem.
					c = self currentCharacter
						ifTrue: [ item
								beActive;
								with: c traditional asString ]
						ifFalse: [ (self componentPinyinTest: c) isResolved
								ifTrue: [ (self componentPinyinTest: c) result
										ifTrue: [ item
												class: 'alert-success';
												with: c traditional asString ]
										ifFalse: [ item
												class: 'alert-danger';
												with: c traditional asString ] ] ] ] ]