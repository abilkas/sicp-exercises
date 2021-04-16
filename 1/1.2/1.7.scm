;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |1.7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (sqrt_iter guess x)
  (if (good_enough? guess x)
      guess
      (sqrt_iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))


(define (good_enough? guess x)
  (< (abs (- (square guess) x)) 0.000000000001))

(define (square x) (* x x))

(define (sqrt_q x)
  (sqrt_iter 1.0 x))

(define (testing a)
  (- (sqrt a) (sqrt_q a)))
