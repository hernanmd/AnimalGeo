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

{ #category : #curation }
BioMWDLBreed >> explodeLocations [

	(self region notNil and: [ self region notEmpty ]) 
		ifTrue: [
			self region = '-'
				ifTrue: [ self region: (OrderedCollection new: 1) ]
				ifFalse: [ self region: ((self region findTokens: ',') collect: #trimBoth) ] ]
		ifFalse: [
			self region: (OrderedCollection new: 1) ].

]

{ #category : #curation }
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

{ #category : #comparing }
BioMWDLBreed >> matchesAny: aBioFAOBreed [ 

	((self breedName alike: aBioFAOBreed breedName) > 2)
		ifTrue: [ ^ true ].
	(self synonyms notNil and: [ self synonyms includes: aBioFAOBreed breedName ])
		ifTrue: [ ^ true ].
	^ false

]

{ #category : #accessing }
BioMWDLBreed >> merge: aBioFAOBreed [ 

	| agBreed |	
	agBreed := BioAGBreed new
		synonyms: (self synonyms ifNil: [ OrderedCollection new ] ifNotNil: [ self synonyms ]);
		csFao: aBioFAOBreed conservationStatus;
		csMason: self csmason;
		region: self region;
		absorvedBy: self absorbedBy;
		crossedFrom: self crossedFrom;
		wmKg: self wMkg;
		wfKg: self wFKg;
		breedComp1: self breedComposition1;
		breedComp2: self breedComposition2;
		associationUrls: self associationURLs;
		hmCm: self hMcm;
		hfCm: self hFcm;
		yourself.
	self country ~= aBioFAOBreed country 
		ifTrue: [ 
			self country = '-'
				ifTrue: [ agBreed country: aBioFAOBreed country ]
				ifFalse: [ (aBioFAOBreed country = '-' or: [ aBioFAOBreed country isNil ])
						ifTrue: [ agBreed country: self country ]
						ifFalse: [ self halt ] ] ]
		ifFalse: [ agBreed country: self country ].
	self breedName ~= aBioFAOBreed breedName 
		ifTrue: [ agBreed synonyms add: aBioFAOBreed breedName ].
	agBreed breedName: self breedName.
	^ agBreed 
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
BioMWDLBreed >> speciesName [
	^ self class speciesName.
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
