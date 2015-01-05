#lang racket

(define low 1)

(define high 100)

(define (guess)
  (quotient (+ low high) 2)
  )

(define (bigger)
  (set! low (min high (add1 guess)))
  (guess)
  )

(define (smaller)
  (set! high (max low (sub1 guess)))
  (guess)
  )

(define (start n m)
  (set! low (min n m))
  (set! high (max n m))
  (guess)
  )
