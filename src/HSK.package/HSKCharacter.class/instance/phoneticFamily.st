as yet unclassified
phoneticFamily
	^ ((HSKCharacter instances collect:[ : c|  c-> (self phoneticDistance:c)] thenSelect: [ : ass | ass value > 0 ]) sort: [ :d :s | d value > s value ]) collect: #key