(deffacts data 
	(numbers 5 3 8 14 7)
	(goalNumber 21)
	(currentNumber 0)	
)

(defrule plus-operation
	?f <- (numbers $?ini ?n1 ?n2 $?end)
	(goalNumber ?g)
		(test (< (+ ?n1 ?n2) ?g))
	=>
	(assert(numbers $?ini (+ ?n1 ?n2) $?end))
	(printout t "hago una suma " crlf)	
)

(defrule minus-operation

)

(defrule div-operation

)

(defrule multiplication-operation

)

