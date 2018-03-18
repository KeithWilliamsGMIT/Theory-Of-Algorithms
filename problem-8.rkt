#lang racket

; This function takes three lists x, y and z of equal length
; and containing only 0's and 1's and returns a list
; containing a 1 where the number of 1's in a given position
; in x is 1 and the elements of z otherwise. This function
; works by recursively checking each element in x and adding
; the element from the appropriate list to a new list. This
; list is returned.
(define (chse x y z)
  (if (null? x)
      null
      (if (= (car x) 1)
          (cons (car y) (chse (cdr x) (cdr y) (cdr z)))
          (cons (car z) (chse (cdr x) (cdr y) (cdr z))))))

; Expected output - (0 1 0 1 0 0 1 1)
(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))