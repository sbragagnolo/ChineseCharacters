documentation
tests
	^ 'Testing strategy:
- HSKTestTrie (TestCase): black-box trie behavior. Definitions are accessible after registerWord:definition:; multiple definitions for the same word stay together; a two-character word gives depth 3; streamDefinitions: over 我吃蛋糕 answers 我, 吃 and 蛋糕 with their definitions; a missing word executes the ifNone: block.
- SRSTestCase (TestCase): review scheduling. New content is locked; after unlock it has to be reviewed; a successful review postpones the next review; after 26 seconds it has to be reviewed again; at the last level it is never reviewed; after 7000 days it is reviewed again only once.
- LZIHskObjectiveTest (TestCase): HSKModule equality and order (hsk1 = hsk1, hsk1 < hsk2, hsk2 > hsk1).
- LZIReviewCharacterAssertionRule (TestCase): HSKPhoneticTest strict mode accepts you3 and rejects you for 有; friendly mode accepts you and rejects iou.
- Gaps: no tests for HSKCharacterProvider, HSKDictionaryLoader, HSKCharacterCrawl, SRSUser/SRSGoal/SRSKnownContent, CharsetCategory or the Spec UI.
Run: HSKTestTrie suite run; SRSTestCase suite run; LZIHskObjectiveTest suite run; LZIReviewCharacterAssertionRule suite run.'