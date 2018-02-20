#lang racket

; This function takes a list as input and returns the
; list cyclically shifted one place to the left. This
; function works by creating a new list which conatins
; only the first element of the original list. We then
; recursivey pop all other elements of the original
; list and add them to the front of the new list.
(define (lcycle l)
  (define (lcycle-helper l n)
    (if (null? l)
        n
        (cons (car l) (lcycle-helper (cdr l) n))))
  
  (lcycle-helper (cdr l) (list (car l))))

; This function takes a list as input and returns the
; list cyclically shifted one place to the right. This
; function works by recursively popping all elements
; off the list and adding them to the back of a new null
; list, except for the last element, which is added to the
; front. Note that this is not an efficient algorithm
; because we must pop all elements of the new list each
; time we want to add an element to the end.
(define (rcycle l)
  (define (rcycle-helper l n)
    (if (null? (cdr l))
        (cons (car l) n)
        (rcycle-helper (cdr l) (back (car l) n))))

  (define (back elem list)
    (if (null? list)
        (cons elem list)
        (cons (car list) (back elem (cdr list)))))

  (rcycle-helper l null))

; Expected output - (2 3 4 5 1)
(lcycle (list 1 2 3 4 5))

; Expected output - (5 1 2 3 4)
(rcycle (list 1 2 3 4 5))