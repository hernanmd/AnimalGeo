"
Reader for Ovis Aries

    Instance Variables
	dairy:		<Object>
	hobby:		<Object>
	meat:		<Object>
	research:		<Object>
	subSpecies:		<Object>
	vegMgmt:		<Object>
	wool:		<Object>


    Implementation Points
"
Class {
	#name : #BioMWDLOAries,
	#superclass : #BioMWDLBreed,
	#instVars : [
		'subSpecies',
		'dairy',
		'wool',
		'research',
		'vegMgmt',
		'hobby',
		'meat'
	],
	#category : #'AnimalGeo-MWDLB'
}

{ #category : #accessing }
BioMWDLOAries class >> readData [
	" Answer a <Collection> with receiver's parsed data "

	^ self readDataFrom: 'ag_oaries.csv'
]

{ #category : #accessing }
BioMWDLOAries class >> speciesName [

	^ 'Sheep'
]

{ #category : #accessing }
BioMWDLOAries >> dairy [
	^ dairy
]

{ #category : #accessing }
BioMWDLOAries >> dairy: anObject [
	dairy := anObject
]

{ #category : #accessing }
BioMWDLOAries >> hobby [
	^ hobby
]

{ #category : #accessing }
BioMWDLOAries >> hobby: anObject [
	hobby := anObject
]

{ #category : #accessing }
BioMWDLOAries >> meat [
	^ meat
]

{ #category : #accessing }
BioMWDLOAries >> meat: anObject [
	meat := anObject
]

{ #category : #accessing }
BioMWDLOAries >> research [
	^ research
]

{ #category : #accessing }
BioMWDLOAries >> research: anObject [
	research := anObject
]

{ #category : #accessing }
BioMWDLOAries >> subspecies [
	^ subSpecies
]

{ #category : #accessing }
BioMWDLOAries >> subspecies: anObject [
	subSpecies := anObject
]

{ #category : #accessing }
BioMWDLOAries >> vegMgmt [
	^ vegMgmt
]

{ #category : #accessing }
BioMWDLOAries >> vegMgmt: anObject [
	vegMgmt := anObject
]

{ #category : #accessing }
BioMWDLOAries >> wool [
	^ wool
]

{ #category : #accessing }
BioMWDLOAries >> wool: anObject [
	wool := anObject
]
