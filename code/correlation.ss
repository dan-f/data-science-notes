(load "common.ss")
(load "standard-deviation.ss")

(define (make-pair x y)
  (cons x y))

(define (get-x pair)
  (car pair))

(define (get-y pair)
  (cdr pair))

(define (xs pairs)
  (map get-x pairs))

(define (ys pairs)
  (map get-y pairs))

(define (correlation pairs)
  (let ((sx (sample-standard-deviation (xs pairs)))
        (sy (sample-standard-deviation (ys pairs)))
        (mean-x (mean (xs pairs)))
        (mean-y (mean (ys pairs))))
    (/ (sum (map (lambda (pair)
                   (* (/ (- (get-x pair) mean-x) sx)
                      (/ (- (get-y pair) mean-y) sy))) pairs))
       (- (length pairs) 1))))
