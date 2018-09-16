Class {
	#name : #BioMWDLCFamiliaris,
	#superclass : #BioMWDLBreed,
	#instVars : [
		'meat',
		'hobby'
	],
	#category : #'AnimalGeo-MWDLB'
}

{ #category : #accessing }
BioMWDLCFamiliaris class >> readData [
	" Answer a <Collection> with receiver's parsed data "

	^ self readDataFrom: 'ag_cfamiliaris.csv'
]

{ #category : #accessing }
BioMWDLCFamiliaris class >> speciesName [

	^ 'Dog'
]

{ #category : #accessing }
BioMWDLCFamiliaris >> hobby [
	^ hobby
]

{ #category : #accessing }
BioMWDLCFamiliaris >> hobby: anObject [
	hobby := anObject
]

{ #category : #accessing }
BioMWDLCFamiliaris >> meat [
	^ meat
]

{ #category : #accessing }
BioMWDLCFamiliaris >> meat: anObject [
	meat := anObject
]
