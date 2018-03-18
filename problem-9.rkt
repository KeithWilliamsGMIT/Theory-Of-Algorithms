#lang racket

; This function takes three lists x, y and z of equal length
; and containing only 0's and 1's and returns a list
; containing a 1 where the number of 1's in a given position
; in x, y and z contains an odd number of 1's, and 0 otherwise.
; This function works by recursively summing each element in
; the same position of each list and adding the modulus of it
; to a new list. This list is returned.
(define (sod2 x y z)
  (if (null? x)
      null
      (cons (modulo (+ (car x) (car y) (car z)) 2) (sod2 (cdr x) (cdr y) (cdr z)))))

; Expected output - (0 1 1 0 1 0 0 1)
(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))