#lang racket

(define (sod2 x y z)
  (if (null? x)
      null
      (cons (modulo (+ (car x) (car y) (car z)) 2) (sod2 (cdr x) (cdr y) (cdr z)))))

(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))