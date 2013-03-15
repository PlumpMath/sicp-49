;;
;; @author naoiwata
;; SICP Chapter1
;; q-1.36
;;

(add-load-path "." :relative)
(load "lib.scm")

(define (fixed-point f first-guess)
	(define (close-enough? v1 v2)
		(< (abs (- v1 v2)) 0.00001))
	(define (try guess)
		(display guess)
		(newline)
		(let
			((next (f guess)))
			(if (close-enough? guess next)
				next
				(try next))))
		(try first-guess))

; test
(fixed-point cos 1.0)

; x |-> log(1000)/log(x)
; general method
(print
	(fixed-point
		(lambda (x) (/ (log 1000) (log x)))
		1.5))
; 1.5
; 17.036620761802716
; 2.436284152826871
; 7.7573914048784065
; 3.3718636013068974
; 5.683217478018266
; 3.97564638093712
; 5.004940305230897
; 0.2893976408423535
; 0.743860707684508
; 0.437003894526853
; 0.6361416205906485
; 0.503444951269147
; 0.590350549476868
; 0.532777517802648
; 0.570631779772813
; 0.545618222336422
; 0.562092653795064
; 0.551218723744055
; 0.558385805707352
; 0.553657479516671
; 0.55677495241968
; 0.554718702465183
; 0.556074615314888
; 0.555180352768613
; 0.555770074687025
; 0.555381152108018
; 0.555637634081652
; 0.555468486740348
; 0.555580035270157
; 0.555506470667713
; 0.555554984963888
; 0.5555229906097905
; 0.555544090254035
; 0.555530175417048
; 0.555539351985717
; -> 36 times

; average damping method
; x^x = 1000
; x = log(1000)/log(x)
; f(x) = log(1000)/log(x) = x
(print
	(fixed-point 
		(lambda (x) (average x (/ (log 1000) (log x))))
		1.5))
; 1.5
; 9.268310380901358
; 6.185343522487719
; 0.988133688461795
; 0.643254620420954
; 0.571101497091747
; 0.5582061760763715
; 0.555990975858476
; 0.555613236666653
; 0.555548906156018
; 0.555537952796512
; 0.555536087870658
; -> 12 times

; END