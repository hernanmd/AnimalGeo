"
Abstract importer class methods for breeds varieties based in the ""Mason's World Dictionary of Livestock Breeds, Types and Varieties"" book.

The source book is a standard reference text, and contains key breed information about cattle, sheep, pigs, goats, horses, donkeys and buffalo.

CSV Format:

First line represents header.
Each subclass may contain exclusive fields matching species unique features.

"
Class {
	#name : #BioMWDLBreed,
	#superclass : #BioNamedObject,
	#instVars : [
		'synonyms',
		'csFao',
		'csMason',
		'country',
		'region',
		'absorvedBy',
		'crossedFrom',
		'wmKg',
		'wfKg',
		'breedComp1',
		'breedComp2',
		'associationUrls',
		'hmCm',
		'hfCm',
		'breedName'
	],
	#category : #'AnimalGeo-MWDLB'
}

{ #category : #accessing }
BioMWDLBreed class >> readDataFrom: aFilename [

	aFilename asFileReference readStreamDo: [ : readStream |
		| reader |
		reader := (NeoCSVReader on: readStream)
			separator: $;;
			recordClass: self.
		(reader readHeader collect: [ : a | (a uncapitalized copyWithout: $_) asSymbol ])
			do: [ : f | reader addField: f asMutator ].
		^ reader upToEnd ] 
]

{ #category : #accessing }
BioMWDLBreed >> absorbedBy [
	^ absorvedBy
]

{ #category : #accessing }
BioMWDLBreed >> absorbedBy: anObject [
	absorvedBy := anObject
]

{ #category : #accessing }
BioMWDLBreed >> associationURLs [
	^ associationUrls
]

{ #category : #accessing }
BioMWDLBreed >> associationURLs: anObject [
	associationUrls := anObject
]

{ #category : #accessing }
BioMWDLBreed >> breedComposition1 [
	^ breedComp1
]

{ #category : #accessing }
BioMWDLBreed >> breedComposition1: anObject [
	breedComp1 := anObject
]

{ #category : #accessing }
BioMWDLBreed >> breedComposition2 [
	^ breedComp2
]

{ #category : #accessing }
BioMWDLBreed >> breedComposition2: anObject [
	breedComp2 := anObject
]

{ #category : #accessing }
BioMWDLBreed >> breedName [
	^ breedName
]

{ #category : #accessing }
BioMWDLBreed >> breedName: anObject [
	breedName := anObject
]

{ #category : #accessing }
BioMWDLBreed >> country [
	^ country
]

{ #category : #accessing }
BioMWDLBreed >> country: anObject [
	country := anObject
]

{ #category : #accessing }
BioMWDLBreed >> crossedFrom [
	^ crossedFrom
]

{ #category : #accessing }
BioMWDLBreed >> crossedFrom: anObject [
	crossedFrom := anObject
]

{ #category : #accessing }
BioMWDLBreed >> csfao [
	^ csFao
]

{ #category : #accessing }
BioMWDLBreed >> csfao: anObject [
	csFao := anObject
]

{ #category : #accessing }
BioMWDLBreed >> csmason [
	^ csMason
]

{ #category : #accessing }
BioMWDLBreed >> csmason: anObject [

	csMason := anObject
]

{ #category : #accessing }
BioMWDLBreed >> explodeSyns [

	(self synonyms notNil and: [ self synonyms notEmpty ]) 
		ifTrue: [
			self synonyms = '-'
				ifTrue: [ self synonyms: (OrderedCollection new: 1) ]
				ifFalse: [ self synonyms: ((self synonyms findTokens: ',') collect: #trimBoth) ] ].

]

{ #category : #accessing }
BioMWDLBreed >> hFcm [
	^ hfCm
]

{ #category : #accessing }
BioMWDLBreed >> hFcm: anObject [
	hfCm := anObject
]

{ #category : #accessing }
BioMWDLBreed >> hMcm [
	^ hmCm
]

{ #category : #accessing }
BioMWDLBreed >> hMcm: anObject [
	hmCm := anObject
]

{ #category : #printing }
BioMWDLBreed >> printOn: aStream [

	super printOn: aStream.
	aStream
		space; 
		nextPutAll: self breedName between: $( and: $);
		space;
		nextPutAll: self country.
]

{ #category : #accessing }
BioMWDLBreed >> region [
	^ region
]

{ #category : #accessing }
BioMWDLBreed >> region: anObject [
	region := anObject
]

{ #category : #accessing }
BioMWDLBreed >> synonyms [
	^ synonyms
]

{ #category : #accessing }
BioMWDLBreed >> synonyms: anObject [
	synonyms := anObject
]

{ #category : #accessing }
BioMWDLBreed >> wFKg [
	^ wfKg
]

{ #category : #accessing }
BioMWDLBreed >> wFkg: anObject [
	wfKg := anObject
]

{ #category : #accessing }
BioMWDLBreed >> wMkg [
	^ wmKg
]

{ #category : #accessing }
BioMWDLBreed >> wMkg: anObject [
	wmKg := anObject
]
