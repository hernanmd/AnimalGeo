Class {
	#name : #BioMWDLECaballus,
	#superclass : #BioMWDLBreed,
	#instVars : [
		'draught',
		'meat',
		'hobby'
	],
	#category : #'AnimalGeo-MWDLB'
}

{ #category : #accessing }
BioMWDLECaballus class >> readData [
	" Answer a <Collection> with receiver's parsed data "

	^ self readDataFrom: 'ag_ecaballus.csv'
]

{ #category : #accessing }
BioMWDLECaballus class >> speciesName [

	^ 'Horse'
]

{ #category : #accessing }
BioMWDLECaballus >> draught [
	^ draught
]

{ #category : #accessing }
BioMWDLECaballus >> draught: anObject [
	draught := anObject
]

{ #category : #accessing }
BioMWDLECaballus >> hobby [
	^ hobby
]

{ #category : #accessing }
BioMWDLECaballus >> hobby: anObject [
	hobby := anObject
]

{ #category : #accessing }
BioMWDLECaballus >> meat [
	^ meat
]

{ #category : #accessing }
BioMWDLECaballus >> meat: anObject [
	meat := anObject
]
