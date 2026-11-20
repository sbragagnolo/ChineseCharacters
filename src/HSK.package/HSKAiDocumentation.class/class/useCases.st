documentation
useCases
	^ 'Usage scenarios:
1. Inspect a character: c := HSKCharacterProvider default detect: [ :x | x traditional = $有 ]. c pinyin. c definition. c module. c radicals.
2. Inspect a word: w := HSKString fromString: ''蛋糕''. w definition. w module. w traditionalString.
3. Load the dictionary: HSKDictionaryLoader loadFromCedict: ''/path/cedict_ts.u8'' asFileReference. (HSKDictionaryLoader default streamDefinitions: ''我吃蛋糕'' readStream) upToEnd.
4. Crawl a character: HSKCharacterCrawl load: $好 frequency: 1.
5. Study with SRS: SRSUser reset. SRSUser current xiaoWangZi. ex := SRSUser current exercise. ex next. ex current assertWith: ''ni3''.
6. Run the Pinyin Reminder: (HSKPinyinReminder newApplication: SpecApplication new model: SRSUser current goal) openWithSpec.
7. Mark HSK level: HSKCharacterMarker new mark: aCharacter.
8. Unicode block: (CharsetCategory categoryFor: $a) category.'