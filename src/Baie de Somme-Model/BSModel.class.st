Class {
	#name : #BSModel,
	#superclass : #CMAbstractModel,
	#instVars : [
		'theHabitatTypes',
		'theWalkerGuides',
		'theWalkerAlones',
		'theSeals',
		'theBoatKayaks',
		'theRestingPlaces',
		'numberOfRows',
		'numberOfColumns',
		'home',
		'homeSea',
		'restingPlaces'
	],
	#category : #'Baie de Somme-Model'
}

{ #category : #'- probes' }
BSModel class >> colorOfProbe_numberOfPromeneurGuides [
  ^ (Color r: 1.0 g: 0.20234604105571846 b: 0.0 alpha: 1.0)
]

{ #category : #'simulation settings' }
BSModel class >> defaultInit [

	^ #simpleEnvironment
]

{ #category : #accessing }
BSModel class >> initialNumberOfPromeneurGuides [

	^10
]

{ #category : #accessing }
BSModel class >> initialNumberOfPromeneurSeuls [

	^2
]

{ #category : #'as yet unclassified' }
BSModel >> accessRuleMatrix [

	| matrix |
	
	matrix := #(
		(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
		(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
		(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
		(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
		(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
		(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
		(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
		(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 1 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 1 1 0 0)
		(0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0)
		(0 0 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0)
		(0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)).
		
	(matrix size = numberOfRows and: [ matrix allSatisfy: [ :row | row size = numberOfColumns ] ])
		ifFalse: [ self error: 'Matrix has the wrong dimensions' ].
		
	^ matrix
]

{ #category : #'as yet unclassified' }
BSModel >> habitatTypeMatrix [

	| matrix |
	
	matrix := #(
		(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
		(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
		(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
		(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
		(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
		(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
		(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
		(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 1 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 1 1 0 0)
		(0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 1 0 0)
		(0 0 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0)
		(0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)).
		
	(matrix size = numberOfRows and: [ matrix allSatisfy: [ :row | row size = numberOfColumns ] ])
		ifFalse: [ self error: 'Matrix has the wrong dimensions' ].
		
	^ matrix
]

{ #category : #accessing }
BSModel >> home [

	^ home
]

{ #category : #accessing }
BSModel >> home: anObject [

	home := anObject
]

{ #category : #accessing }
BSModel >> homeSea [

	^ homeSea
]

{ #category : #accessing }
BSModel >> homeSea: anObject [

	homeSea := anObject
]

{ #category : #initialization }
BSModel >> initialize [ 

	super initialize.
	
	numberOfRows := 30.
	numberOfColumns:= 30.
	
	theWalkerGuides := OrderedCollection new.
	theWalkerAlones := OrderedCollection new.
	theSeals := OrderedCollection new.
	theHabitatTypes := OrderedCollection new.
	theBoatKayaks := OrderedCollection new.
]

{ #category : #initialization }
BSModel >> initializeAccessRuleFromMatrix [

	| matrixCellValue modelCell |
	1 to: numberOfRows do: [ :i | 
		1 to: numberOfColumns do: [ :j | 
			matrixCellValue := (self accessRuleMatrix at: i) at: j.
			modelCell := self pickCellAt: j @ i.
			matrixCellValue = 0 ifTrue: [ modelCell accessRule:  'By Sea' ].
			matrixCellValue = 1 ifTrue: [ modelCell accessRule:  'By Land' ].
			] ]
]

{ #category : #'init entities' }
BSModel >> initializeAgents [ 

	self
		createN: "self class initialNumberOfPromeneurGuides" 0
		entity: BSWalkerGuide.
		self theWalkerGuides do: [ :guide | self initializeWalkerGuide: guide ].
		
	self
		createN: "self class initialNumberOfPromeneurSeuls" 5
		entity: BSWalkerAlone.
		self theWalkerAlones do: [ :alone | self initializeWalkerAlone: alone ].
		
	self 
		createN: 50 randomlyLocatedEntities: BSSeal constrainedBy: [ :cell | cell type = 'Sea' ].
		self theSeals do: [ :alone | self initializeSeals: alone ].
		
	self
		createN: 5
		entity: BSBoatKayak.
		self theBoatKayaks do: [ :alone | self initializeBoatKayak: alone ].
		
	

]

{ #category : #'init entities' }
BSModel >> initializeBoatKayak: boat [

|potentialDestination arg|

	boat home: self homeSea.
	"walker home: self home.
	
	potentialDestination := theHabitatTypes select: [ :cell | cell type = 'Sea' ].
	
	walker walkerDestination:  potentialDestination atRandom.
	walker destinationMemory: walker walkerDestination neighbourhoodAndSelf.
	
	arg:= Cormas random.
	(arg < 0.05) 
		ifTrue: [ walker withDog: 'leashed'] 
		ifFalse: [ (arg < 0.35) 
				ifTrue: [ walker withDog: 'unleashed' ]
				ifFalse: [ walker withDog: 'no' ] 
				].
			
	arg:= Cormas random.
	(arg < 0.2) 
		ifTrue: [ walker withBinoculars: 'yes'] 
		ifFalse: [ walker withBinoculars: 'no'].
		
	arg:= Cormas random.
	(arg < 0.2) 
		ifTrue: [ walker sealAwareness: 'yes'] 
		ifFalse: [ walker sealAwareness: 'no']."
]

{ #category : #initialization }
BSModel >> initializeHabitatTypeFromMatrix [

	| matrixCellValue modelCell |
	1 to: numberOfRows do: [ :i | 
		1 to: numberOfColumns do: [ :j | 
			matrixCellValue := (self habitatTypeMatrix at: i) at: j.
			modelCell := self pickCellAt: j @ i.
			matrixCellValue = 0 ifTrue: [ modelCell type: 'Sea' ].
			matrixCellValue = 1 ifTrue: [ modelCell type: 'Land' ].
			matrixCellValue = 2 ifTrue: [ modelCell type: 'Home' ].
			matrixCellValue = 3 ifTrue: [ modelCell type: 'Home Sea' ].
			] ]
]

{ #category : #initialization }
BSModel >> initializeSealRestingPlacesFromMatrix [

	| matrixCellValue modelCell |
	1 to: numberOfRows do: [ :i | 
		1 to: numberOfColumns do: [ :j | 
			matrixCellValue := (self sealRestingPlaceMatrix at: i) at: j.
			modelCell := self pickCellAt: j @ i.
			matrixCellValue = 0 ifTrue: [ modelCell sealRestingPlace:  'Not' ].
			matrixCellValue = 1 ifTrue: [ modelCell sealRestingPlace:  'R1' ].
			matrixCellValue = 2 ifTrue: [ modelCell sealRestingPlace:  'R2' ].
			matrixCellValue = 3 ifTrue: [ modelCell sealRestingPlace:  'R3' ].
			matrixCellValue = 4 ifTrue: [ modelCell sealRestingPlace:  'Observatory' ].
			] ]
]

{ #category : #'init entities' }
BSModel >> initializeSeals: seal [

	| a sites|
sites := OrderedCollection new.	
a:= Cormas random.
	(a< 0.33) 
		ifTrue: [ seal restingPlace: 'R1' ]
		ifFalse: [ 
			(a > 0.66) 
				ifTrue: [ seal restingPlace: 'R2' ]
				ifFalse: [ seal restingPlace: 'R3'. ]
		].

seal restingPlaceMemory: theRestingPlaces.
seal myRestingPlace: (theHabitatTypes select: [ :cell | cell sealRestingPlace = seal restingPlace ]).


]

{ #category : #'init entities' }
BSModel >> initializeWalkerAlone: walker [

|potentialDestination arg|

	walker home: self home.
	
	potentialDestination := theHabitatTypes select: [ :cell | cell type = 'Sea' ].
	
	walker walkerDestination:  potentialDestination atRandom.
	walker destinationMemory: walker walkerDestination neighbourhoodAndSelf.
	
	arg:= Cormas random.
	(arg < 0.05) 
		ifTrue: [ walker withDog: 'leashed'] 
		ifFalse: [ (arg < 0.35) 
				ifTrue: [ walker withDog: 'unleashed' ]
				ifFalse: [ walker withDog: 'no' ] 
				].
			
	arg:= Cormas random.
	(arg < 0.2) 
		ifTrue: [ walker withBinoculars: 'yes'] 
		ifFalse: [ walker withBinoculars: 'no'].
		
	arg:= Cormas random.
	(arg < 0.2) 
		ifTrue: [ walker sealAwareness: 'yes'] 
		ifFalse: [ walker sealAwareness: 'no'].
]

{ #category : #'init entities' }
BSModel >> initializeWalkerGuide: guide [

|arg|

	guide home: self home.
	guide observatoryMemory: (theHabitatTypes select: [ :cell | cell sealRestingPlace = 'Observatory']).
	guide walkerDestination: guide observatoryMemory atRandom. 

	arg:= Cormas random.
	(arg < 0.5) 
		ifTrue: [ guide sealAwareness: 'yes'] 
		ifFalse: [ guide sealAwareness: 'no'].

]

{ #category : #probes }
BSModel >> numberOfPromeneurGuides [

	<probe>
	^ self theWalkerGuides size
]

{ #category : #accessing }
BSModel >> restingPlaces [

	^ restingPlaces
]

{ #category : #accessing }
BSModel >> restingPlaces: anObject [

	restingPlaces := anObject
]

{ #category : #'as yet unclassified' }
BSModel >> sealRestingPlaceMatrix [

	| matrix |
	
	matrix := #(
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 4 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 3 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 3 3 0 0)
		(0 0 0 0 2 2 2 2 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 3 3 0 0)
		(0 0 0 0 2 2 2 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 3 0 0)
		(0 0 0 0 0 0 2 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)).
		
	(matrix size = numberOfRows and: [ matrix allSatisfy: [ :row | row size = numberOfColumns ] ])
		ifFalse: [ self error: 'Matrix has the wrong dimensions' ].
		
	^ matrix
]

{ #category : #init }
BSModel >> simpleEnvironment [

	self
		createGridLines: numberOfRows
		columns: numberOfColumns
		neighbourhood: 8
		closed: true.

	"self theHabitatTypes do: [ :each | each initializeWithRandomHabitat ]."
	"(self theHabitatTypes at: 1) type: 'Home'."
	self initializeHabitatTypeFromMatrix.
	self initializeAccessRuleFromMatrix.
	self initializeSealRestingPlacesFromMatrix.
	self theRestingPlaces: (theHabitatTypes select: [:cell | cell sealRestingPlace ~= 'Not' and: [cell sealRestingPlace ~= 'Observatory' ]]).
	self home: (theHabitatTypes detect: [ :cell | cell type = 'Home' ]).
	self homeSea: (theHabitatTypes detect: [ :cell | cell type = 'Home Sea' ]).
	self restingPlaces: #('R1' 'R2' 'R3').

	self initializeAgents.
	self theWalkerGuides do: [ :guide | guide moveTo: home ].
	self theWalkerAlones do: [ :alone | alone moveTo: home ].
	self theBoatKayaks do: [ :kayak | kayak moveTo: homeSea ].
	self theSeals do: [ :seal | (Cormas random < 0.5) ifTrue: [ seal randomJumpConstrainedBy: [ :cell | cell sealRestingPlace = seal restingPlace. ] ] ].
	
	self
		displayPov: #povHabitatType of: BSHabitatCell;
		displayPov: #defaultPOV of:  BSWalker;
		displayPov: #defaultPOV of:  BSBoat;
		displayPov: #defaultPOV of: BSSeal.
]

{ #category : #control }
BSModel >> step: anObject [

	self askRandom: BSWalker toDo: #step.
	self askRandom: BSBoat toDo: #step.
	"self askRandom: BSHabitatCell toDo: #step."
	self askRandom: BSSeal toDo: #step.
	self askRandom: BSSeal toDo: #stepAlert
]

{ #category : #accessing }
BSModel >> theBoatKayaks [
	<getterFor: #BSBoatKayak>
		
	^ theBoatKayaks
]

{ #category : #accessing }
BSModel >> theBoatKayaks: anObject [

	theBoatKayaks := anObject
]

{ #category : #accessing }
BSModel >> theHabitatTypes [
	<getterFor: #BSHabitatCell>

	^ theHabitatTypes
]

{ #category : #accessing }
BSModel >> theHabitatTypes: anObject [

	theHabitatTypes := anObject
]

{ #category : #accessing }
BSModel >> theRestingPlaces [

	^ theRestingPlaces
]

{ #category : #accessing }
BSModel >> theRestingPlaces: anObject [

	theRestingPlaces := anObject
]

{ #category : #accessing }
BSModel >> theSeals [
<getterFor: #BSSeal >
	^ theSeals
]

{ #category : #accessing }
BSModel >> theSeals: anObject [

	theSeals := anObject
]

{ #category : #accessing }
BSModel >> theWalkerAlones [
	<getterFor: #BSWalkerAlone>

	^ theWalkerAlones
]

{ #category : #accessing }
BSModel >> theWalkerAlones: anObject [

	theWalkerAlones := anObject
]

{ #category : #accessing }
BSModel >> theWalkerGuides [
	<getterFor: #BSWalkerGuide>	

	^ theWalkerGuides
]

{ #category : #accessing }
BSModel >> theWalkerGuides: anObject [

	theWalkerGuides := anObject
]

{ #category : #probes }
BSModel >> totalSatisfaction [

	<probe>
	^ (self theWalkerGuides sum: [ :each | each satisfaction ]) + (self theWalkerAlones sum: [ :each | each satisfaction ])
]
