tests
testTheDictionaryLoaderSeedsTheCorpusForGoals

	| user goal |

	HSKDictionaryLoader reset.

	HSKDictionaryLoader default registerCorpusCharacters.

	self assert: HSKDictionaryLoader default trie depth > 1.

	user := SRSUser new.

	goal := SRSGoal xiaoWangZi: user.

	self assert: goal characters notEmpty.

	self assert: (goal characters anySatisfy: [ :c | c knowledge traditional = $我 ]).