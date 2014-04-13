; Multiples between start (inclusive) and end (exclusive)
(define (multiples-between start end)
  (if (>= start end) '()
    (let ((higher-multiples (multiples-between (+ 1 start) end)))
      (if (is-multiple start) (cons start higher-multiples)
          higher-multiples))))

(define (is-multiple n)
  (or (evenly-divides 5 n) (evenly-divides 3 n)))

(define (evenly-divides divisor dividend)
  (= 0 (modulo dividend divisor)))

(define (sum l) (foldl + 0 l))

(print (sum (multiples-between 1 1000)))
