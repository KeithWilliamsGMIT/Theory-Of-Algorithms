#lang racket

(define (maj x y z)
  (define (maj-helper x y z l)
    (if (null? x)
        l
        (if (> (+ (car x) (car y) (car z)) 1)
            (maj-helper (cdr x) (cdr y) (cdr z) (cons 0 l))
            (maj-helper (cdr x) (cdr y) (cdr z) (cons 1 l)))))

  (maj-helper x y z null))

(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))