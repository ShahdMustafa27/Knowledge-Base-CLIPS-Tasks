(deftemplate animal
   (slot type)
)

(deffacts animals
   (animal (type bird))
   (animal (type dog))
   (animal (type horse))
   (animal (type cat))
)

(defrule check_animal
   ?a <- (animal (type ?t))
   (test (and (neq ?t dog) (neq ?t cat)))
   =>
   (printout t "Animal type is: " ?t crlf)
)
