;; @author naoiwata
;; SICP Chapter2
;; question 2.57

(add-load-path "." :relative)
(load "q2.56.scm")

; before
(print (deriv '(* x y (+ x 3)) 'x))

; redfine augend and multiplicand
(define (augend s)
	(let
		((first (car s))
		(second (cdr s))
		(third (cddr s)))
		(if (null? (cdddr s))
			(caddr s)
			(cons '+ third))))

(define (multiplicand s)
	(if (null? (cdddr s)) 
		(caddr s)
		(cons '* (cddr s))))
; after
(print (deriv '(* x y (+ x 3)) 'x))

; END