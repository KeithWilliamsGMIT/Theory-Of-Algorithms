#lang racket

; A prime number is a natural number greater than 1
; that has no positive divisors other than 1 and itself.

; This function uses a brute-force algorithm that
; takes a single positive integer and returns true
; if the number is a prime and false otherwise.
; Adapted from: https://stackoverflow.com/questions/3345626/finding-a-prime-number-in-scheme-using-natural-recursion
(define (decide-prime x)
  
  ; Define an inner lambda function which accepts two arguments.
  ; The first arguement is the original input while the second
  ; is a number to divide it by. If the remainder is 0 and the
  ; number is not 1 then the original number is not a prime so
  ; return false. If the number is one return true.
  (define (non-divisible-by n d)
    (cond
      ((= d 1) #t)
      (else (if(= (modulo n d) 0)
               #f
               (non-divisible-by n (- d 1))))))

  ; Return true if the number is equal to 1.
  ; Otherwise invoke the inner function.
  (if (= x 1)
      ; True condition
      #t

      ; False condition.
      (non-divisible-by x (- x 1))))

; This should output as true.
(decide-prime 1)

; This should output as true.
(decide-prime 7)

; This should output as false.
(decide-prime 9)