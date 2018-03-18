#lang racket

; This function takes three lists x, y and z of equal length
; and containing only 0's and 1's and returns a list
; containing a 1 where two or more of x, y and z contains
; 1's, and 0 otherwise. This function works by recursively
; going through the lists and adding the elements in the same
; position of the lists. If the total is greater than 1 then
; add a 1 to a new list, otherwise add 0. This list is returned.
(define (maj x y z)
  (if (null? x)
      null
      (if (> (+ (car x) (car y) (car z)) 1)
          (cons 1 (maj (cdr x) (cdr y) (cdr z)))
          (cons 0 (maj (cdr x) (cdr y) (cdr z))))))

; Expected output - (0 0 0 1 0 1 1 1)
(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))