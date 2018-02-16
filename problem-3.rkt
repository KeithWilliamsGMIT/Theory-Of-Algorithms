#lang racket

(define (lcycle l)
  (define (lcycle-helper l n)
    (if (null? l)
        n
        (cons (car l) (lcycle-helper (cdr l) n))))
  
  (lcycle-helper (cdr l) (list (car l))))

(lcycle (list 1 2 3 4 5))