as yet unclassified
registerWord: aHSKWord definition: aDefinition
	| definitionNode |
	definitionNode := (aHSKWord
		inject: root
		into: [ :edge :char | 
			edge node
				detectEdgeFor: char
				ifNotFound: [ | newEdge |
					newEdge := edge node createEdgeFor: char.
					newEdge ] ]) node.
	definitionNode word: aHSKWord.
	definitionNode registerDefinition: aDefinition