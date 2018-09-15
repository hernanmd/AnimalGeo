Class {
	#name : #BaselineOfAnimalGeo,
	#superclass : #BaselineOf,
	#category : #BaselineOfAnimalGeo
}

{ #category : #baseline }
BaselineOfAnimalGeo >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'github://hernanmd/AnimalGeo/repository/'.
		spec
			baseline: 'BioSmalltalk' 
			with: [ spec repository: 'github://hernanmd/BioSmalltalk/repository' ];
			
			project: 'NeoCSV' with: [
				spec
					className: 'ConfigurationOfNeoCSV';
					version: #stable;
					repository: 'github://svenvc/NeoCSV:master/repository' ] ]
]
