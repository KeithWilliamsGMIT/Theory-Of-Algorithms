#lang racket

(define (sublsum s)
  (filter
   (lambda (x) (not (null? x)))
   (map
    (lambda (ss)
      (if (= (apply + ss) 0)
          ss
          null))
    (combinations s))))

(sublsum (list 1 2 3 4 -5))
(sublsum (list 1 2 3 4 5))