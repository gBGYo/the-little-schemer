; In book it seems member? is defined to check if an atom is in a lat
; I tried to write a function to check if S-expression in a list
; (but failed)
(define member?
  (lambda (e l)
    (cond
      ((null? l) #f)
      ((eq? e (car l)) #t)
      (else (member? e (cdr l))))))

; Test cases
(member? 'a '(a b c))
(member? 'a '(a a a))
(member? 'a '(b c))
(member? 'a '())
(member? '() '('()))
(member? '() '('() a b c))
