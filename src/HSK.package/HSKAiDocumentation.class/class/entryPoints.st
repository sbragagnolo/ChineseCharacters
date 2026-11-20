documentation
entryPoints
	^ 'Main entry points:
- Corpus: HSKCharacterProvider default. Query: HSKCharacterProvider default detect: [ :c | c traditional = $有 ].
- Strings: HSKString fromString: ''我爱''; HSKString fromString: ''蛋糕'' definition (needs the dictionary trie).
- Dictionary: HSKDictionaryLoader loadFromCedict: ''/path/cedict_ts.u8'' asFileReference. Then HSKDictionaryLoader default trie, or (HSKDictionaryLoader default streamDefinitions: ''我吃蛋糕'' readStream) upToEnd.
- Crawler: HSKCharacterCrawl load: $好 frequency: 1.
- Learning: SRSUser reset. SRSUser current xiaoWangZi. SRSUser current exercise. Or SRSUser current goal.
- UI: HSKSpec new openWithSpec, or the ManifestHSK snippet: app := SpecApplication new. app useBackend: #Gtk. spec := (HSKPinyinReminder newApplication: app model: SRSUser current goal). spec openWithSpec. spec start. spec stop.
- Marking: HSKCharacterMarker new mark: aCharacter.
- Unicode: CharsetCategory categoryFor: $a; CharsetCategory unicode.'