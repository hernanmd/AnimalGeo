accessing
readDataFrom: aFilename fields: fields

	aFilename asFileReference readStreamDo: [ : readStream |
		| reader |
		reader := (NeoCSVReader on: readStream)
			separator: $;;
			skipHeader;
			recordClass: self.
		fields do: [ : f | reader addField: f asMutator ].
		^ reader upToEnd ] 