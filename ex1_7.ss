(define (sqrt-iter guess prevGuess x)
  (if (good-enough? guess prevGuess)
      guess
      (sqrt-iter (improve guess x)
                 guess
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess prevGuess)
  (< (abs (- guess prevGuess)) 0.001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 0 x))

