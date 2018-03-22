#lang racket

; This function takes two lists l and m of equal length
; and containing numbers. This function should return the
; distance given by the sum of the square residuals between
; the numbers in the lists. This function works by recursively
; calculating the square of the difference between each element
; in the same position of each list and adding the result to
; a running total. This total is returned when there are no more
; elements in the lists.
(define (lstq l m)
  (define (lstq-helper l m t)
    (if (null? l)
        t
        (lstq-helper (cdr l) (cdr m) (+ t (* (- (car l) (car m)) (- (car l) (car m)))))))
  (lstq-helper l m 0))

; Expected output - 54.61
(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))