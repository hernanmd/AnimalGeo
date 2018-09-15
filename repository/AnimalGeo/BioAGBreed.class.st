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
		'csM',
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
		'hfCm'
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
		| reader |
		reader := (NeoCSVReader on: readStream)
			separator: $;;
			skipHeader;
			recordClass: self.
		fields do: [ : f | reader addField: f asMutator ].
		^ reader upToEnd ] 
]

{ #category : #accessing }
BioAGBreed >> absorvedBy [
	^ absorvedBy
]

{ #category : #accessing }
BioAGBreed >> absorvedBy: anObject [
	absorvedBy := anObject
]

{ #category : #accessing }
BioAGBreed >> associationUrls [
	^ associationUrls
]

{ #category : #accessing }
BioAGBreed >> associationUrls: anObject [
	associationUrls := anObject
]

{ #category : #accessing }
BioAGBreed >> breedComp1 [
	^ breedComp1
]

{ #category : #accessing }
BioAGBreed >> breedComp1: anObject [
	breedComp1 := anObject
]

{ #category : #accessing }
BioAGBreed >> breedComp2 [
	^ breedComp2
]

{ #category : #accessing }
BioAGBreed >> breedComp2: anObject [
	breedComp2 := anObject
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
BioAGBreed >> csFao [
	^ csFao
]

{ #category : #accessing }
BioAGBreed >> csFao: anObject [
	csFao := anObject
]

{ #category : #accessing }
BioAGBreed >> csM [
	^ csM
]

{ #category : #accessing }
BioAGBreed >> csM: anObject [
	csM := anObject
]

{ #category : #accessing }
BioAGBreed >> hfCm [
	^ hfCm
]

{ #category : #accessing }
BioAGBreed >> hfCm: anObject [
	hfCm := anObject
]

{ #category : #accessing }
BioAGBreed >> hmCm [
	^ hmCm
]

{ #category : #accessing }
BioAGBreed >> hmCm: anObject [
	hmCm := anObject
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
BioAGBreed >> wfKg [
	^ wfKg
]

{ #category : #accessing }
BioAGBreed >> wfKg: anObject [
	wfKg := anObject
]

{ #category : #accessing }
BioAGBreed >> wmKg [
	^ wmKg
]

{ #category : #accessing }
BioAGBreed >> wmKg: anObject [
	wmKg := anObject
]
