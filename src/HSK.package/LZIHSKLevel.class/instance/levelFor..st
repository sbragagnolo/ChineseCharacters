as yet unclassified
levelFor: aKnownContent
	"| contentByLevel |
	contentByLevel := self hskContentByLevel.
	
	self levels do: [ :lvl | 
			(contentByLevel at: lvl) 	allSatisfy: [ aKnownContent
						detect: [ :kc | kc content = c ]
						ifFound: [ :kc | kc level >= self ]
						ifNone: [ false ] 
			]
		 ] 
"