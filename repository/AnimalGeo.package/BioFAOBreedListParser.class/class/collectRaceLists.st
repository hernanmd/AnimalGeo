accessing
collectRaceLists

	^ { self readFAOLocalRaceList: 'fao_local_race_list.txt' asBioDataFileReference .
	self readFAOLocalRaceList: 'fao_regional_race_list.txt' asBioDataFileReference .
	self readFAOLocalRaceList: 'fao_international_race_list.txt' asBioDataFileReference }
		gather: [ : n | n ]
	