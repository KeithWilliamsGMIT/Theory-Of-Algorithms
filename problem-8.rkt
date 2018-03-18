#lang racket

(define (chse x y z)
  (if (null? x)
      null
      (if (= (car x) 1)
          (cons (car y) (chse (cdr x) (cdr y) (cdr z)))
          (cons (car z) (chse (cdr x) (cdr y) (cdr z))))))

(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))