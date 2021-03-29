(deffacts data 
	(numbers 5 3 8 14 7)
	(goalNumber 21)	
)

(defrule addition-operation
	?f <- (numbers $?ini ?n1 ?n2 $?end)
	(goalNumber ?g)
		(test (< (+ ?n1 ?n2) ?g))
		(test (> (+ ?n1 ?n2) 0))
	=>
	(assert(numbers $?ini (+ ?n1 ?n2) $?end))
	(printout t "hago una suma " crlf)	
)

(defrule Subtraction-operation
	?f <- (numbers $?ini ?n1 ?n2 $?end)
	(goalNumber ?g)
		(test (< (- ?n1 ?n2) ?g))
		(test (> (- ?n1 ?n2) 0))
	=>
	(assert(numbers $?ini (- ?n1 ?n2) $?end))
	(printout t "hago una resta " crlf)
)

(defrule division-operation
	?f <- (numbers $?ini ?n1 ?n2 $?end)
	(goalNumber ?g)
		(test (< (div ?n1 ?n2) ?g))
		(test (= (mod ?n1 ?n2) 0))
		(test (> (div ?n1 ?n2) 0))
	=>
	(assert(numbers $?ini (div ?n1 ?n2) $?end))
	(printout t "hago una suma " crlf)

)

(defrule multiplication-operation
	?f <- (numbers $?ini ?n1 ?n2 $?end)
	(goalNumber ?g)
		(test (< (* ?n1 ?n2) ?g))
		(test (> (* ?n1 ?n2) 0))
	=>
	(assert(numbers $?ini (* ?n1 ?n2) $?end))
	(printout t "hago una suma " crlf)
)

(defrule goal-achieve
	(declare (salience 10))
	?f <- (numbers $?ini ?n $?end)
	(goalNumber ?g)
		(test (= ?n ?g))
	=>
	(printout t "He encontrado la solucion " crlf)
	(halt)
)

