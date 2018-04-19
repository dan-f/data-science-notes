;; Defines computations both the standard and population standard deviations

(load "common.ss")

(define (distance avg x)
  (square (- x avg)))

(define (standard-deviation xs divisor)
  (sqrt
   (/ (sum (map (lambda (x) (distance (mean xs) x))
                xs))
      divisor)))

(define (sample-standard-deviation xs)
  (standard-deviation xs (- (length xs) 1)))

(define (population-standard-deviation xs)
  (standard-deviation xs (length xs)))
