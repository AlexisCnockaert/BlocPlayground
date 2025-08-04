"
I'm a class creating the logic of a base rectangle used for the grid
"
Class {
	#name : 'CavRectangle',
	#superclass : 'Object',
	#instVars : [
		'isLeftResizable',
		'isTopResizable',
		'isRightResizable',
		'isBottomResizable',
		'neighbors'
	],
	#category : 'Bloc-CavroisLab',
	#package : 'Bloc-CavroisLab'
}

{ #category : 'initialization' }
CavRectangle >> initialize [

	super initialize. 
	self initializeSides. 
	neighbors := OrderedCollection new
]

{ #category : 'initialization' }
CavRectangle >> initializeSides [

	isLeftResizable := true.
	isRightResizable := true.
	isTopResizable := true.
	isBottomResizable := true
]

{ #category : 'accessing' }
CavRectangle >> isBottomResizable [

^ isBottomResizable 
]

{ #category : 'accessing' }
CavRectangle >> isBottomResizable: aBoolean [

	isBottomResizable := aBoolean
]

{ #category : 'accessing' }
CavRectangle >> isLeftResizable [

^ isLeftResizable 
]

{ #category : 'accessing' }
CavRectangle >> isLeftResizable: aBoolean [

	isLeftResizable := aBoolean
]

{ #category : 'accessing' }
CavRectangle >> isRightResizable [

^ isRightResizable 
]

{ #category : 'accessing' }
CavRectangle >> isRightResizable: aBoolean [

	isRightResizable := aBoolean
]

{ #category : 'accessing' }
CavRectangle >> isTopResizable [
 
^ isTopResizable
]

{ #category : 'accessing' }
CavRectangle >> isTopResizable: aBoolean [

	isTopResizable := aBoolean
]

{ #category : 'accessing' }
CavRectangle >> neighbors [
 
^ neighbors
]
