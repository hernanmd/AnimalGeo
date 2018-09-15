Class {
	#name : #BioFAOBreed,
	#superclass : #Object,
	#instVars : [
		'country',
		'speciesName',
		'breedName',
		'conservationStatus',
		'type'
	],
	#category : 'AnimalGeo-Core'
}

{ #category : #accessing }
BioFAOBreed >> beInternational [

	type := #international
]

{ #category : #accessing }
BioFAOBreed >> beLocal [

	type := #local
]

{ #category : #accessing }
BioFAOBreed >> beRegional [

	type := #regional
]

{ #category : #accessing }
BioFAOBreed >> breedName [
	^ breedName
]

{ #category : #accessing }
BioFAOBreed >> breedName: anObject [
	breedName := anObject
]

{ #category : #accessing }
BioFAOBreed >> conservationStatus [
	^ conservationStatus
]

{ #category : #accessing }
BioFAOBreed >> conservationStatus: anObject [
	conservationStatus := anObject
]

{ #category : #accessing }
BioFAOBreed >> country [
	^ country
]

{ #category : #accessing }
BioFAOBreed >> country: anObject [
	country := anObject
]

{ #category : #testing }
BioFAOBreed >> isInternational [

	^ type = #international
]

{ #category : #testing }
BioFAOBreed >> isLocal [

	^ type = #local
]

{ #category : #testing }
BioFAOBreed >> isRegional [

	^ type = #regional
]

{ #category : #accessing }
BioFAOBreed >> speciesName [
	^ speciesName
]

{ #category : #accessing }
BioFAOBreed >> speciesName: anObject [
	speciesName := anObject
]
