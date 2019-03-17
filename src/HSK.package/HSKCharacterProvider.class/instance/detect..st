detecting
detect: aBlockClosure 
	^ hskCharacters  detect: aBlockClosure ifNone: [ self error: 'Character not found' ]