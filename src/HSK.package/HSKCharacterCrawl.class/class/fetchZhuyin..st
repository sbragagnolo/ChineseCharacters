actions
fetchZhuyin: stream
	stream reset.
	stream upToAll: 'https://en.wikipedia.org/wiki/Zhuyin'.
	stream upToAll: 'Bopo">'.
	^ stream upToAll: '<'.

	