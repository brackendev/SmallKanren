tests
setUp 
	x := SKVar tag: #x.
	y := SKVar tag: #y.
	xn1 := (x=/=1) constraint.
	xn2 := (x=/=2) constraint.
	yn1 := (y=/=1) constraint.
	yn2 := (y=/=2) constraint.
	no1 := SKConstraint absento: 1.
	no2 := SKConstraint absento: 2.
	no3 := SKConstraint absento: 3.
	no4 := SKConstraint absento: 4.
	noSymbol := SKConstraint absento: #symbol.
	symbolo := SKConstraint symbolo.
	numbero := SKConstraint numbero.
	satisfied := SKConstraint satisfied.
	unsatisfiable := SKConstraint unsatisfiable.
	null := SKConstraint new.
	s := SKState new.
	failure := SKStream failure.