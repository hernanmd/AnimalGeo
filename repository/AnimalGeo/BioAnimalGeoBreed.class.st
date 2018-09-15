Class {
	#name : #BioAnimalGeoBreed,
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
	#category : 'AnimalGeo-Core'
}

{ #category : #accessing }
BioAnimalGeoBreed class >> fieldInstVarNames [

	^ self allInstVarNames copyWithoutAll: #(versions date author names)
]

{ #category : #accessing }
BioAnimalGeoBreed class >> readDataFrom: aFilename fields: fields [

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
BioAnimalGeoBreed >> absorvedBy [
	^ absorvedBy
]

{ #category : #accessing }
BioAnimalGeoBreed >> absorvedBy: anObject [
	absorvedBy := anObject
]

{ #category : #accessing }
BioAnimalGeoBreed >> associationUrls [
	^ associationUrls
]

{ #category : #accessing }
BioAnimalGeoBreed >> associationUrls: anObject [
	associationUrls := anObject
]

{ #category : #accessing }
BioAnimalGeoBreed >> breedComp1 [
	^ breedComp1
]

{ #category : #accessing }
BioAnimalGeoBreed >> breedComp1: anObject [
	breedComp1 := anObject
]

{ #category : #accessing }
BioAnimalGeoBreed >> breedComp2 [
	^ breedComp2
]

{ #category : #accessing }
BioAnimalGeoBreed >> breedComp2: anObject [
	breedComp2 := anObject
]

{ #category : #accessing }
BioAnimalGeoBreed >> country [
	^ country
]

{ #category : #accessing }
BioAnimalGeoBreed >> country: anObject [
	country := anObject
]

{ #category : #accessing }
BioAnimalGeoBreed >> crossedFrom [
	^ crossedFrom
]

{ #category : #accessing }
BioAnimalGeoBreed >> crossedFrom: anObject [
	crossedFrom := anObject
]

{ #category : #accessing }
BioAnimalGeoBreed >> csFao [
	^ csFao
]

{ #category : #accessing }
BioAnimalGeoBreed >> csFao: anObject [
	csFao := anObject
]

{ #category : #accessing }
BioAnimalGeoBreed >> csM [
	^ csM
]

{ #category : #accessing }
BioAnimalGeoBreed >> csM: anObject [
	csM := anObject
]

{ #category : #accessing }
BioAnimalGeoBreed >> hfCm [
	^ hfCm
]

{ #category : #accessing }
BioAnimalGeoBreed >> hfCm: anObject [
	hfCm := anObject
]

{ #category : #accessing }
BioAnimalGeoBreed >> hmCm [
	^ hmCm
]

{ #category : #accessing }
BioAnimalGeoBreed >> hmCm: anObject [
	hmCm := anObject
]

{ #category : #accessing }
BioAnimalGeoBreed >> region [
	^ region
]

{ #category : #accessing }
BioAnimalGeoBreed >> region: anObject [
	region := anObject
]

{ #category : #accessing }
BioAnimalGeoBreed >> synonyms [
	^ synonyms
]

{ #category : #accessing }
BioAnimalGeoBreed >> synonyms: anObject [
	synonyms := anObject
]

{ #category : #accessing }
BioAnimalGeoBreed >> wfKg [
	^ wfKg
]

{ #category : #accessing }
BioAnimalGeoBreed >> wfKg: anObject [
	wfKg := anObject
]

{ #category : #accessing }
BioAnimalGeoBreed >> wmKg [
	^ wmKg
]

{ #category : #accessing }
BioAnimalGeoBreed >> wmKg: anObject [
	wmKg := anObject
]
