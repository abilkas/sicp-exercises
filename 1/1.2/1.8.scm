;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |1.8|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (cube_iter guess x)
  (if (good_enough? guess x)
      guess
      (cube_iter (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+
      (/ x (square guess))
        (* 2 guess))
     3))


(define (good_enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (square x) (* x x))
(define (cube x) (* x x x))

(define (cube_q x)
  (cube_iter 1.0 x))

