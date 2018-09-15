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
	
	spNames := (BioAGBreed subclasses collect: #speciesName).
	^ (BioFAOBreedListParser collectRaceLists 
		groupedBy: #speciesName
		having: [ : g | spNames includes: g anyOne speciesName ]) inspect.

]
