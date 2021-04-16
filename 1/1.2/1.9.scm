;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |1.9|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

(define (plus a b)
  (if (= a 0)
      b
      (inc (plus (dec a) b))))

; (plus 4 5)
; (inc (plus 3 5))
; (inc (inc (plus 2 5)))
; (inc (inc (inc (plus 1 5))))
; (inc (inc (inc (inc (plus 0 5)))))
; (inc (inc (inc 6)
; (inc (inc 7)
; (inc 8)
; 9


(define (plus_a a b)
  (if (= a 0)
      b
      (plus_a (dec a) (inc b))))

; (plus_a 4 5)
; (plus_a 3 6)
; (plus_a 2 7)
; (plus_a 1 8)
; (plus_a 0 9)
; 9