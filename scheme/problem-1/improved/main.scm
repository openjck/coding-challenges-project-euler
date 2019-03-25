; http://www.algebra.com/algebra/homework/Sequences-and-series.faq.question.427328.html
(define (sum-of-multiples multiple limit)
  (let ((num-terms (floor (/ limit multiple))))
    (let ((last-term (* multiple num-terms)))
      (inexact->exact (* (/ num-terms 2) (+ multiple last-term))))))

(print (- (+ (sum-of-multiples 3 999) (sum-of-multiples 5 999)) (sum-of-multiples 15 999)))
