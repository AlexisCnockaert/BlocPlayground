Class {
	#name : 'CavRectangleTest',
	#superclass : 'TestCase',
	#category : 'Bloc-CavroisLab',
	#package : 'Bloc-CavroisLab'
}

{ #category : 'tests' }
CavRectangleTest >> testCenterRectangleCanResizeHorizontally [

	| centerRect |
	centerRect := CavCenterRectangle new.
	self assert: centerRect canResizeLeft.
	self assert: centerRect canResizeRight.
	self deny: centerRect canResizeTop.
	self deny: centerRect canResizeBottom
]

{ #category : 'tests' }
CavRectangleTest >> testLeftRectangleCannotResizeLeft [

	| leftRect |
	leftRect := CavLeftRectangle new.
	self deny: leftRect canResizeLeft.
	self assert: leftRect canResizeRight
]

{ #category : 'tests' }
CavRectangleTest >> testRightRectangleCannotResizeRight [

	| rightRect |
	rightRect := CavRightRectangle new.
	self deny: rightRect canResizeRight.
	self assert: rightRect canResizeLeft
]

{ #category : 'tests' }
CavRectangleTest >> testTopRectanglesCannotResizeVertically [

	| topRect |
	topRect := CavTopRectangle new.
	self deny: topRect canResizeTop.
	self deny: topRect canResizeBottom
]
