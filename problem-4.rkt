#lang racket

; This function takes a list of integers as input and
; returns a list of sublists of it that sum to zero.
; This function works by getting all sublists of the list,
; summing all the elements in each sublist and then
; filtering out all sublists that do not sum to zero.
(define (sublsum s)
  (filter
   (lambda (x) (not (null? x)))
   (map
    (lambda (ss)
      (if (= (apply + ss) 0)
          ss
          null))
    (combinations s))))

; Expected output - (() ())
(sublsum (list 1 2 3 4 -5))

; Expected output - ()
(sublsum (list 1 2 3 4 5))