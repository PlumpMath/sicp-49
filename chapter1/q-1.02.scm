;
; @author naoiwata
; SICP Chapter1
; q1.2
;

(/ (+ 5 
      4
      (- 2
         (- 3
            (+ 6
               (/ 4 5)))))
   (* 3
   	  (- 6 2)
   	  (- 2 7)))
(print (/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7))))
; -37/150