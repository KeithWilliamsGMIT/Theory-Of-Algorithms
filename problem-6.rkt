#lang racket

(define (hamming-distance l1 l2)
  (define (hamming-distance-helper l1 l2 n)
    (if (null? l1)
        n
        (if (= (car l1) (car l2))
            (hamming-distance-helper (cdr l1) (cdr l2) n)
            (hamming-distance-helper (cdr l1) (cdr l2) (+ n 1)))))

  (hamming-distance-helper l1 l2 0))

(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))