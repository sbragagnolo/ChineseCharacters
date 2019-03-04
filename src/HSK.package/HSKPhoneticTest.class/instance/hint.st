hinting
hint
	^ ' it sounds like ', (',' join:( ( HSKCharacter instances select: [  : p | p pinyin = subject knowledge pinyin  ]) collect:#traditional))