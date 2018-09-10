accessing
readFileNamed: fileName

	^ fileName asFileReference
		readStreamDo: [ :readStream | 
			(NeoCSVReader on: readStream)
				separator: $,;
				recordClass: BioFAOBreed;
				addField: #country:;
				addField: #speciesName:;
				addField: #breedName:;
				addField: #conservationStatus:;
				upToEnd ]