#lang racket

(define (lstq l m)
  (define (lstq-helper l m t)
    (if (null? l)
        t
        (lstq-helper (cdr l) (cdr m) (+ t (* (- (car l) (car m)) (- (car l) (car m)))))))
  (lstq-helper l m 0))

(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))