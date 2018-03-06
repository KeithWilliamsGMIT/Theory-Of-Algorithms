#lang racket

(define (hamming-weight l)
  (define (hamming-weight-helper l n)
    (if (null? l)
        n
        (if (> (car l) 0)
            (hamming-weight-helper (cdr l) (+ n 1))
            (hamming-weight-helper (cdr l) n))))

  (hamming-weight-helper l 0))

(hamming-weight (list 1 0 1 0 1 1 1 0))