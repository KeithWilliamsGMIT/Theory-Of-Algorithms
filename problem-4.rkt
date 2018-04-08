#lang racket

; This function takes a list of integers as input and
; returns a list of sublists of it that sum to zero.
; This function works by getting all sublists of the list,
; summing all the elements in each sublist and then
; filtering out all sublists that do not sum to zero.
(define (sublsum s)
  ; This function sums all elements of a set.
  (define (sum-all set sum)
    (if (null? set)
        sum
        (sum-all(cdr set) (+ sum (car set)))))
  
  (filter
   (lambda (x) (not (null? x)))
   (map
    (lambda (ss)
      ; Rather than defining another function we could also
      ; user (apply + ss) here but that was not allowed for
      ; these problems.
      (if (= (sum-all ss 0) 0)
          ss
          null))
    (combinations s))))

; Expected output - ((2 3 -5) (-5 1 4))
(sublsum (list 1 2 3 4 -5))

; Expected output - ()
(sublsum (list 1 2 3 4 5))