reducing
, aConstraint
	^ aConstraint isAbsento 
		ifTrue: (SKDisjoinedAbsento absent: excluded rest: aConstraint) 
		ifFalse: (SKMConstraint first: self rest: aConstraint).