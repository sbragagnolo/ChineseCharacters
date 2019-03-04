accessing
xiaoWangZi
	^ xiaoWangZi
		ifNil: [ xiaoWangZi := self new
				words:
					(HSKDictionaryLoader default
						streamDefinitions: (HSKString fromString: HSKDictionaryLoader xiaoWangZi) readStream)
						upToEnd;
				yourself ]