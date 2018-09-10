accessing
readFAOInternationalRaceList: fileName

	| records |
	records := self readFAORaceList: fileName.
	^ records collect: #beInternational