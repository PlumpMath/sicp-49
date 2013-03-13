;; @author naoiwata
;; SICP Chapter2
;; question 2.15
;;

; par1
; -> R1*R2/(R1 + R2)

; par2
; -> 1/(1/R1 + 1/R2)

; par2の方がよいプログラムの理由：
; 代数的に等価のpar1とpar2式だが、
; par1は誤差をもった不確かな変数を複数回、乗算と和算で使用しているため誤差の増加を招くが、
; par2は誤差を保持したまま逆数を計算するため計算の精度が落ちないと考えられる。

; END