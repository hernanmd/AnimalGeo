"
CSV Format:

First line represents header.
Each subclass may contain exclusive fields matching species unique features.

"
Class {
	#name : #BioAGBreed,
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
	#category : #'AnimalGeo-Core'
}

{ #category : #accessing }
BioAGBreed class >> fieldInstVarNames [

	^ self allInstVarNames copyWithoutAll: #(versions date author names)
]

{ #category : #accessing }
BioAGBreed class >> readDataFrom: aFilename fields: fields [

	aFilename asFileReference readStreamDo: [ : readStream |
		| reader headers |
		reader := (NeoCSVReader on: readStream)
			separator: $;;
			recordClass: self.
		headers := reader readHeader collect: [ : a | (a uncapitalized copyWithout: $_) asSymbol ].
		headers do: [ : f | reader addField: f asMutator ].
		^ reader upToEnd ] 
]

{ #category : #accessing }
BioAGBreed >> absorbedBy [
	^ absorvedBy
]

{ #category : #accessing }
BioAGBreed >> absorbedBy: anObject [
	absorvedBy := anObject
]

{ #category : #accessing }
BioAGBreed >> associationURLs [
	^ associationUrls
]

{ #category : #accessing }
BioAGBreed >> associationURLs: anObject [
	associationUrls := anObject
]

{ #category : #accessing }
BioAGBreed >> breedComposition1 [
	^ breedComp1
]

{ #category : #accessing }
BioAGBreed >> breedComposition1: anObject [
	breedComp1 := anObject
]

{ #category : #accessing }
BioAGBreed >> breedComposition2 [
	^ breedComp2
]

{ #category : #accessing }
BioAGBreed >> breedComposition2: anObject [
	breedComp2 := anObject
]

{ #category : #accessing }
BioAGBreed >> breedName [
	^ breedName
]

{ #category : #accessing }
BioAGBreed >> breedName: anObject [
	breedName := anObject
]

{ #category : #accessing }
BioAGBreed >> country [
	^ country
]

{ #category : #accessing }
BioAGBreed >> country: anObject [
	country := anObject
]

{ #category : #accessing }
BioAGBreed >> crossedFrom [
	^ crossedFrom
]

{ #category : #accessing }
BioAGBreed >> crossedFrom: anObject [
	crossedFrom := anObject
]

{ #category : #accessing }
BioAGBreed >> csfao [
	^ csFao
]

{ #category : #accessing }
BioAGBreed >> csfao: anObject [
	csFao := anObject
]

{ #category : #accessing }
BioAGBreed >> csmason [
	^ csMason
]

{ #category : #accessing }
BioAGBreed >> csmason: anObject [

	csMason := anObject
]

{ #category : #accessing }
BioAGBreed >> hFcm [
	^ hfCm
]

{ #category : #accessing }
BioAGBreed >> hFcm: anObject [
	hfCm := anObject
]

{ #category : #accessing }
BioAGBreed >> hMcm [
	^ hmCm
]

{ #category : #accessing }
BioAGBreed >> hMcm: anObject [
	hmCm := anObject
]

{ #category : #printing }
BioAGBreed >> printOn: aStream [

	super printOn: aStream.
	aStream
		space; 
		nextPutAll: self breedName between: $( and: $);
		space;
		nextPutAll: self country.
]

{ #category : #accessing }
BioAGBreed >> region [
	^ region
]

{ #category : #accessing }
BioAGBreed >> region: anObject [
	region := anObject
]

{ #category : #accessing }
BioAGBreed >> synonyms [
	^ synonyms
]

{ #category : #accessing }
BioAGBreed >> synonyms: anObject [
	synonyms := anObject
]

{ #category : #accessing }
BioAGBreed >> wFKg [
	^ wfKg
]

{ #category : #accessing }
BioAGBreed >> wFkg: anObject [
	wfKg := anObject
]

{ #category : #accessing }
BioAGBreed >> wMkg [
	^ wmKg
]

{ #category : #accessing }
BioAGBreed >> wMkg: anObject [
	wmKg := anObject
]
