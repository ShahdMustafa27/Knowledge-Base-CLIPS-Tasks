(deftemplate number
   (slot value)
)

(deffacts test-number
   (number (value 7))
)

(defrule Odd_number
   ?n <- (number (value ?v))
   (test (neq (mod ?v 2) 0))
   =>
   (printout t "The number is odd" crlf)
)
