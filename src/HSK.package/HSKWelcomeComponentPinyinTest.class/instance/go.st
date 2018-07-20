running
go
	| characterResponse |
	[ [ characterResponse := self responseCharacterTest.
	characterResponse isNil ] whileTrue.
	self displayResponse: (test assertWith: characterResponse) ] repeat