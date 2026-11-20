documentation
data
	^ 'Embedded data (no files needed at runtime):
- HSKCharacterProvider class>>encodedInstances: about 7.15 MB of base64 STON source with the character instances. default decodes it once; encodeInstancesInto: regenerates that format.
- HSKDictionaryLoader class>>xiaoWangZi: about 29.7 KB embedded word list, source of the xiaoWangZi goal. HSKDictionaryLoader>>stonContent: embedded base64 STON trie, currently unused.
- HSKCharacterMarker hsk1..hsk6: embedded HSK character lists used by mark:.
- CharsetCategory class>>unicodeBlock: embedded Unicode Blocks-12.0.0.txt, parsed by unicode.
- The only external input is a CC-CEDICT file passed to HSKDictionaryLoader loadFromCedict:, and the network calls of HSKCharacterCrawl.'