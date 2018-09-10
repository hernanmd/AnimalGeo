accessing
readFAORegionalRaceList: fileName

	| records |
	records := self readFAORaceList: fileName.
	^ records collect: #beRegional
