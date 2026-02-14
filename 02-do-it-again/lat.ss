(define lat?
  (lambda (l)
    (or 
      (null? l)
      (and (atom? (car l)) (lat? (cdr l))))))

; Test cases
(lat? '(a b c))
(lat? '('() b c))
(lat? '((a) b c))
(lat? '(a (b) c))
(lat? '(a))
(lat? '((a b c)))
(lat? '((a b c) d))
(lat? '())
(lat? '('()))
