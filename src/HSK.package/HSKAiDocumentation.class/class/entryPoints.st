documentation
entryPoints

	^ 'Main entry points:
- App: HSKDesktopShell openOn: HSKApp new (themed BlSpace with the knowledge overview, exercise tabs, user bar and style toggle). In-image shell only: HSKDesktopShell on: anHSKApp.
- Corpus: HSKCharacterProvider default. Query: HSKCharacterProvider default detect: [ :c | c traditional = $有 ].
- Strings: HSKString fromString: ''我爱''; HSKString fromString: ''蛋糕'' definition (needs the dictionary trie).
- Dictionary: HSKDictionaryLoader loadFromCedict: ''/path/cedict_ts.u8'' asFileReference. Seeding without a CEDICT file: HSKDictionaryLoader default registerCorpusCharacters registers every corpus character as a single character word (also SRSGoal xiaoWangZi streams the story as an HSKString so it matches). Then HSKDictionaryLoader default trie, or (HSKDictionaryLoader default streamDefinitions: ''我吃蛋糕'' readStream) upToEnd.
- Crawler: HSKCharacterCrawl load: $好 frequency: 1.
- Learning: SRSUser reset. SRSUser current xiaoWangZi. SRSUser current exercise. Or SRSUser current goal.
- UI: HSKSpec new openWithSpec (legacy Spec), or the ManifestHSK snippet: app := SpecApplication new. app useBackend: #Gtk. spec := (HSKPinyinReminder newApplication: app model: SRSUser current goal). spec openWithSpec. spec start. spec stop.
- Marking: HSKCharacterMarker new mark: aCharacter.
- Unicode: CharsetCategory categoryFor: $a; CharsetCategory unicode.'