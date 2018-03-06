#lang racket

; This function takes a list as input and returns the
; number of non-zero elements in it. This function works
; by recursively going through the list and checking the
; value of each element. If the element is greater than
; zero a counter is incremented. This counter is returned
; when there are no more elements in the list.
(define (hamming-weight l)
  (define (hamming-weight-helper l n)
    (if (null? l)
        n
        (if (> (car l) 0)
            (hamming-weight-helper (cdr l) (+ n 1))
            (hamming-weight-helper (cdr l) n))))

  (hamming-weight-helper l 0))

; Expected output - 5
(hamming-weight (list 1 0 1 0 1 1 1 0))