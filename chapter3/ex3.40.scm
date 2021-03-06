;;
;; @author naoiwata
;; SICP Chapter3
;; Exercise 3.40.
;;

; ------------------------------------------------------------------------
; question
; ------------------------------------------------------------------------

; (a)
(define x 10)

(parallel-execute (lambda () (set! x (* x x)))
                  (lambda () (set! x (* x x x))))

; (b)
(define x 10)

(define s (make-serializer))

(parallel-execute (s (lambda () (set! x (* x x))))
                  (s (lambda () (set! x (* x x x)))))

; ------------------------------------------------------------------------
; solution
; ------------------------------------------------------------------------

; P1 : (* "x" x)
; P2 : (* x "x")
; PS : (set!)

; Q1 : (* "x" x x)
; Q2 : (* x "x" x)
; Q3 : (* x x "x")
; QS : (set!)

; (a)
; 100, 1000, 10000, 100000, 1000000

; (b)
; 1000000

; END