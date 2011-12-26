;  Exercise 1.3. Define a procedure that takes three numbers as arguments and returns the sum of the 
;  squares of the two larger numbers.
;  
;  
;  Solution of SICP Exercise 1.03 follows -----------------------------------------------------------


(define (square x) (* x x))
;Value: square


(define (sum-of-squares x y) (+ (square x) (square y)))
;Value: sum-of-squares


(define (sum-of-squares-larger x y z)
  (cond ((and (<= x y) (<= x z)) (sum-of-squares y z))
    ((and (<= y x) (<= y z)) (sum-of-squares x z))
    ((and (<= z x) (<= z y)) (sum-of-squares x y))
    (else -1)))
;Value: sum-of-squares-larger




;  Here are some test cases


(sum-of-squares-larger 1 2 3)
;Value: 13


(sum-of-squares-larger 3 2 -100)
;Value: 13


(sum-of-squares-larger 3 2 2)
;Value: 13


(sum-of-squares-larger 2 2 2)
;Value: 8
