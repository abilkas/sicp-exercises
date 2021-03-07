;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |1.3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (square x) (* x x))
(define (sum_of_square a b) (+ (square a) (square b)))
(define (abc a b c)
  (+ (square a)
     (square b)
     (square c)))

(define (aaa a b c)
  (- (abc a b c) (min (square a) (square b) (square c))))