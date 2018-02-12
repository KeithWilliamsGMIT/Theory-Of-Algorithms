#lang racket

; This function takes a positive integer n0 as input and
; returns a list by recursively applying the following
; operation, starting with the input number:
; 1) ni + 1 = 3ni + 1 if ni is odd
; 2) ni + 1 = ni / 2 if ni is even
; The recursion ends when the number becomes 1. This
; function returns a list whose first element is n0,
; second element is n1, and so on.
(define (collatz-list n)
  (define (collatz-list-helper n l)
    
    (cons n
        (if (= n 1)
            l
            (if (odd? n)
                (collatz-list-helper (+ (* 3 n) 1) l)
                (collatz-list-helper (/ n 2) l)))))

  (collatz-list-helper n null))

; Expected output - (5 16 8 4 2 1)
(collatz-list 5)

; Expected output - (9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)
(collatz-list 9)

; Expected output - (2 1)
(collatz-list 2)