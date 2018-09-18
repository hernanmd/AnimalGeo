"
Merger for FAO and Mason data sets.

"
Class {
	#name : #BioAGMerger,
	#superclass : #Object,
	#classInstVars : [
		'agBreeds'
	],
	#category : #'AnimalGeo-Core'
}

{ #category : #accessing }
BioAGMerger class >> agBreeds [

	^ agBreeds
		ifNil: [ agBreeds := OrderedCollection new: 4000 ]
]

{ #category : #accessing }
BioAGMerger class >> mergeDataset: aCol with: bCol [

	bCol do: [ : b |
		self agBreeds addAll: (aCol 
			select: [ : e | e matchesAny: b ]
			thenCollect: [ : e | e merge: b ]) ]
		displayingProgress: 'Merging'
]

{ #category : #accessing }
BioAGMerger class >> mergeDatasets [
	<example>

	self readFAODatasets associationsDo: [ : assoc |
			self readMWDLBDatasets 
				detect: [ : ds | ds anyOne speciesName = assoc key ]
				ifFound: [ : ds | self mergeDataset: ds with: assoc value ]
				ifNone: [ self halt ] ].
	^ self agBreeds inspect

]

{ #category : #accessing }
BioAGMerger class >> readFAODatasets [
	<example>

	| spNames |
	
	spNames := (BioMWDLBreed subclasses collect: #speciesName).
	^ (BioFAOBreedListParser collectRaceLists 
		groupedBy: #speciesName
		having: [ : g | spNames includes: g anyOne speciesName ]).
]

{ #category : #accessing }
BioAGMerger class >> readMWDLBDatasets [
	<example>

	^ (BioMWDLBreed subclasses 
			collect: [ : cls | cls readData do: #explodeSyns ])
				collect: [ : b | b do: #explodeLocations ]
]
