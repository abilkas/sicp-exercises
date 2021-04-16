;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |1.6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (sqrt_iter guess x)
(new-if (good_enough? guess x)
guess
(sqrt_iter (improve guess x)
x)))

(define (new-if predicate then-clause else-clause)
(cond (predicate then-clause)
(else else-clause)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))


(define (good_enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (sqrt_q x)
  (sqrt_iter 1.0 x))

;; else will go into infinite recursion