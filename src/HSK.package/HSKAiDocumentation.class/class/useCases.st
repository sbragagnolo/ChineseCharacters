documentation
useCases

	^ 'Usage scenarios:
1. Inspect a character: c := HSKCharacterProvider default detect: [ :x | x traditional = $有 ]. c pinyin. c definition. c module. c radicals.
2. Inspect a word: w := HSKString fromString: ''蛋糕''. w definition. w module. w traditionalString.
3. Load the dictionary: HSKDictionaryLoader loadFromCedict: ''/path/cedict_ts.u8'' asFileReference. (HSKDictionaryLoader default streamDefinitions: ''我吃蛋糕'' readStream) upToEnd.
4. Crawl a character: HSKCharacterCrawl load: $好 frequency: 1.
5. Study with SRS: SRSUser reset. SRSUser current xiaoWangZi. ex := SRSUser current exercise. ex next. ex current assertWith: ''ni3''.
6. Run the legacy Pinyin Reminder: (HSKPinyinReminder newApplication: SpecApplication new model: SRSUser current goal) openWithSpec.
7. Desktop app: HSKDesktopShell openOn: HSKApp new - the menu shows Knowledge/Pinyin Reminder/Pinyin Quiz/Game titled buttons with tooltips, and each exercise view adds its English title and tooltip (HSKExerciseView addTitleAndTooltip).
8. Exercise identity: HSKReminderPage title and HSKReminderPage explanation (class side) answer the English strings shown in menu and view.
9. Mark HSK level: HSKCharacterMarker new mark: aCharacter.
10. Unicode block: (CharsetCategory categoryFor: $a) category.'