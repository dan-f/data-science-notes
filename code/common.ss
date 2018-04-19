(define (sum xs)
  (reduce-left + 0 xs))

(define (square x)
  (* x x))

(define (mean xs)
  (/ (sum xs)
     (length xs)))
