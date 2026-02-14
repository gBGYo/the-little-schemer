; Hand explored example

1. (lat? '(a b '()))
   (or 
     (null? '(a b '()))
     (and 
       (atom? (car '(a b '()))) 
       (lat? (cdr '(a b '())))))

   (or 
     (null? '(a b '()))
     (and 
       (atom? 'a) 
       (lat? '(b '()))))

2. (lat? '(b '()))
   (or 
     (null? '(b '()))
     (and 
       (atom? (car '(b '()))) 
       (lat? (cdr '(b '())))))

   (or 
     (null? '(b '()))
     (and 
       (atom? 'b) 
       (lat? '('()))))

; That's what i missed while exploring in head:
; (cdr '(b '())) returns list with an empty list.
; So (null? '('())) evaluates to #f
3. (lat? '('()))
   (or 
     (null? '('()))
     (and 
       (atom? (car '('()))) 
       (lat? (cdr '('())))))

   (or 
     (null? '('()))
     (and 
       (atom? '()) ; empty list is an atom in Chez Scheme
       (lat? '('()))))

4. (lat? '())
   (or 
     (null? '())
     (and 
       (atom? (car '())) ; raise Exception in car: () is not a pair, but upper `or` short circuits to #t, because '() is null
       (lat? (cdr '()))))
