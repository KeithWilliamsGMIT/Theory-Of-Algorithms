#lang racket

(define (lcycle l)
  (define (lcycle-helper l n)
    (if (null? l)
        n
        (cons (car l) (lcycle-helper (cdr l) n))))
  
  (lcycle-helper (cdr l) (list (car l))))

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

(lcycle (list 1 2 3 4 5))
(rcycle (list 1 2 3 4 5))