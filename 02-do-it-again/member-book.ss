(define member?
  (lambda (e l)
    (cond
      ((null? l) #f)
      (else (or (eq? e (car l))
                (member e (cdr l)))))))

; Test cases
(member? 'a '(a b c))
(member? 'a '(a a a))
(member? 'a '(b c))
(member? 'a '())
(member? '() '('()))
(member? '() '('() a b c))
