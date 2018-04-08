#lang racket

; This function takes two lists as input and returns the
; number of non-zero elements in it. This function works
; by recursively going through the lists and comparing the
; value of each element in both lists. If the elements are
; not equal a counter is incremented. This counter is returned
; when there are no more elements in the lists.
;
; Two things to note about this funtion:
; - Both lists should be of equal size. If not it will only
;   the same number of elements that is in the shortest list.
; - It is very similar to the function in the previous problem.
(define (hamming-distance l1 l2)
  (define (hamming-distance-helper l1 l2 n)
    (if (or (null? l1) (null? l2))
        n
        (if (= (car l1) (car l2))
            (hamming-distance-helper (cdr l1) (cdr l2) n)
            (hamming-distance-helper (cdr l1) (cdr l2) (+ n 1)))))

  (hamming-distance-helper l1 l2 0))

; Expected output - 5
(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))