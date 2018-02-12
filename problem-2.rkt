#lang racket

(define (collatz-list n)
  (define (collatz-list-helper n l)
    
    (cons n
        (if (= n 1)
            l
            (if (odd? n)
                (collatz-list-helper (+ (* 3 n) 1) l)
                (collatz-list-helper (/ n 2) l)))))

  (collatz-list-helper n null))

(collatz-list 5)
(collatz-list 9)
(collatz-list 2)