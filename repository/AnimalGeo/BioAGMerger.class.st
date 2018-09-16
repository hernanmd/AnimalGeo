"
Merger for FAO and Mason data sets.

"
Class {
	#name : #BioAGMerger,
	#superclass : #Object,
	#category : #'AnimalGeo-Core'
}

{ #category : #accessing }
BioAGMerger class >> mergeDatasets [
	<example>

	| spNames |
	
	spNames := (BioMWDLBreed subclasses collect: #speciesName).
	^ (BioFAOBreedListParser collectRaceLists 
		groupedBy: #speciesName
		having: [ : g | spNames includes: g anyOne speciesName ]) inspect.

]

{ #category : #accessing }
BioAGMerger class >> readAGDatasets [
	<example>

	^ (BioMWDLBreed subclasses 
			collect: [ : cls | cls readData do: #explodeSyns ]) inspect
]
