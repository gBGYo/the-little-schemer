(define lat?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l)))
      (else #f))))

; Test cases
(lat? '(bacon and eggs))
(lat? '('() b c))
(lat? '((a) b c))
(lat? '(a (b) c))
(lat? '(a))
(lat? '((a b c)))
(lat? '((a b c) d))
(lat? '())
(lat? '('()))
