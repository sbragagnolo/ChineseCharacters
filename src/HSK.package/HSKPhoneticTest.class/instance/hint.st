hinting
hint
	^ ' it sounds like ', (',' join:( ( HSKCharacterProvider default select: [  : p | p pinyin = subject knowledge asHSKString pinyin  ]) collect:#traditional))