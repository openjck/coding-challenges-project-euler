; Factors between start (inclusive) and end (exclusive)
(define (factors-between start end)
  (if (>= start end) '()
    (let ((higher-factors (factors-between (+ 1 start) end)))
      (if (is-factor start) (cons start higher-factors)
          higher-factors))))

(define (is-factor n)
  (or (evenly-divides 5 n) (evenly-divides 3 n)))

(define (evenly-divides divisor dividend)
  (= 0 (modulo dividend divisor)))

(define (sum l)
  (if (null? l) 0
      (+ (car l) (sum (cdr l)))))

(print (sum (factors-between 1 1000)))
