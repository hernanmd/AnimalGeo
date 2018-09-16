"
BioFAOBreedListParser collectRaceLists.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.


    Implementation Points
"
Class {
	#name : #BioFAOBreedListParser,
	#superclass : #Object,
	#category : #'AnimalGeo-FAO'
}

{ #category : #accessing }
BioFAOBreedListParser class >> collectRaceLists [

	^ { self readFAOLocalRaceList: 'fao_local_race_list.txt' asBioDataFileReference .
	self readFAOLocalRaceList: 'fao_regional_race_list.txt' asBioDataFileReference .
	self readFAOLocalRaceList: 'fao_international_race_list.txt' asBioDataFileReference }
		gather: [ : n | n ]
	
]

{ #category : #accessing }
BioFAOBreedListParser class >> readFAOInternationalRaceList: fileName [

	| records |
	records := self readFAORaceList: fileName.
	^ records collect: #beInternational
]

{ #category : #accessing }
BioFAOBreedListParser class >> readFAOLocalRaceList: fileName [

	| records |

	records := self readFAORaceList: fileName.
	^ records collect: #beLocal

]

{ #category : #accessing }
BioFAOBreedListParser class >> readFAORaceList: fileName [
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
]

{ #category : #accessing }
BioFAOBreedListParser class >> readFAORegionalRaceList: fileName [

	| records |
	records := self readFAORaceList: fileName.
	^ records collect: #beRegional

]
