documentation
caveats
	^ 'Known gaps and quirks:
- HSKCharacterProvider default sets hskCharacters, not instances, so basicCharacters, children: and strictChildren: fail; use select: or hskCharacters.
- HSKCharacter phoneticFamily sends HSKCharacter instances, which is not defined.
- HSKCharacter potentialPhonems returns radicals and radicalDistanceTo: returns a ByteArray; both look unfinished.
- HSKCharacterHolder traditional: and simplified: are no-ops and pinyin: does not exist.
- HSKModule module: whitelists number, punctuation and hskPunctuation but there are no class methods for them.
- HSKString does not implement isHSKString or isUnknown; SRSGoal words: relies on trie nodes answering isUnknown (HSKRootNode false, HSKTrieNodeUnknown true).
- SRSGoal words uses trie nodes as knowledge keys while unlockedWords uses HSKString keys, creating two SRSKnownContent objects per word.
- SRSKnownContent skillListening uses the tag #listenting (typo), different from the other skill tags.
- HSKPinyinReminder keeps legacy layout methods (box, grid, bodyGrid, table) next to defaultSpec; HSKSpec menu is never assigned.
- HSKTrieStream next uses stream back for lookahead; see the local branch fix-trie-stream-lookahead.
- HSKCharacterProvider encodedInstances is a 7.15 MB literal, which makes compilation and image size heavy.
- HSKCharacterCrawl depends on Wiktionary HTML and network access; parsing breaks when the markup changes.
- HSKDictionaryLoader stonContent is embedded but unused; default starts with an empty trie.
- Tests cover only the trie, the SRS review schedule, module comparison and the phonetic assertion rule.'