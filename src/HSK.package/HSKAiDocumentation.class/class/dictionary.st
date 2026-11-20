documentation
dictionary
	^ 'Dictionary and trie:
- HSKDictionaryLoader: singleton (default) holding one HSKTrie. register:meaning: adds a word. streamDefinitions: answers an HSKTrieStream. loadFromCedict: reads a CC-CEDICT file line by line, skips comments and empty lines, reads traditional, simplified and meanings separated by /, and registers both forms when they differ. nextParseableLine:, loadWord:fromLine:, reset. save: writes the trie as STON, UTF-8 and base64. stonContent is an embedded base64 STON trie but it is never read (default creates an empty trie). xiaoWangZi is a 29 KB embedded word list used as the learning corpus.
- HSKTrie: root is an HSKRootNode. registerWord:definition: walks the characters, creates missing edges and stores the word plus definition in the final node. definitionsFor: and definitionsFor:ifNone: walk the same path. depth is the root depth. streamDefinitions: answers HSKTrieStream.
- HSKRootNode: edges Dictionary character to HSKTrieEdge. depth is 1 when empty, else the maximum child node depth. node answers self; isUnknown answers false; createEdgeFor:, detectEdgeFor:ifNotFound:, dealWith:thatIsAbsentWith: (creates an edge for holders, otherwise evaluates the block), rehashEdges.
- HSKTrieNode (subclass of HSKRootNode): word plus definitions Set; depth is 1 plus super depth; registerDefinition:; printOn: writes TN(word).
- HSKTrieEdge: character, next and a lazily created node (HSKTrieNode).
- HSKTrieNodeUnknown: char, word answers char asString, isUnknown is true, printOn: writes UK(word).
- HSKTrieStream: stream over a trie and a ReadStream. on:and: builds it. next performs lookahead with stream back and answers the longest known node or an HSKTrieNodeUnknown; upToEnd, atEnd, reset, stream:, trie:. The local branch fix-trie-stream-lookahead targets lookahead problems.
- HSKString definition uses HSKDictionaryLoader default trie, so the dictionary must be loaded before asking definitions.'