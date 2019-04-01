accessing
done
	^ (stream shallowCopy reset next: stream position)
		remove: self current subject;
		yourself