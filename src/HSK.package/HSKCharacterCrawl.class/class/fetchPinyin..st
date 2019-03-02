actions
fetchPinyin: stream
	| pinyin pinyinstream |
	stream reset.
	stream
		upToAll:
			'<dd><small>(<i><a href="https://en.wikipedia.org/wiki/Pinyin" class="extiw" title="w:Pinyin">Pinyin</a></i>)</small>: <span class="form-of pinyin-ts-form-of" lang="cmn" style="font-family: Consolas, monospace;"><a'.
	pinyinstream := (stream upToAll: '</dd>') readStream.
	pinyin := ''.
	[ pinyinstream atEnd ]
		whileFalse: [ pinyinstream upToAll: 'title="'.
			pinyin := pinyin , (pinyinstream upToAll: '">') , ' ' ].
	^ pinyin trim