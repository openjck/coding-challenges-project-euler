(define (fib-list l limit)
  (if (>= (car l) limit)
      (cdr l)
      (fib-list (cons (+ (car l) (car (cdr l))) l) limit)))

(define (sum-of-even l)
  (if (null? l)
      0
      (if (even? (car l))
          (+ (car l) (sum-of-even (cdr l)))
          (sum-of-even (cdr l)))))

(define fibs-below-four-million (fib-list '(2 1) 4000000))

(print (sum-of-even fibs-below-four-million))
