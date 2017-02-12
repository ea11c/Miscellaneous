(define compile
(lambda (filename)
(begin (set-current-input-port! (open-input-file filename))
(statement (read)))))

(define statement
(lambda (token)
(cond ((eq? token 'VAR) (var-statement))
((eq? token 'DO) (do-statement))
((eq? token 'UNTIL) (until-statement))
((eq? token 'FOR) (for-statement))
((eq? token 'IF) (if-statement))
((eq? token 'LET) (let-statement))
(else (expression token)))))

(define var-statement
(lambda ()
(let* ( (d (declarations))
(s (statements 'DONE)))
(cons 'let* (cons d s)))))

(define declaration
(lambda (token)
(list token (expression (read-after '=)))))

(define read-after
(lambda (token)
(if (eq? (read) token)
(read)
(display "Syntax error"))))

(define expression
(lambda (token)
(cond 
((number? token ) token)
((string? token) token)
((list? token) token)
((eq?(string-ref (symbol->string token) 0) #\$) token)
((eq? token 'TRUE) #t)
((eq? token 'FALSE) #f)
(else (fun-expression token)))))

(define begin-statements
(lambda (ending)
(let ( (s (statements ending)))
(if (pair? s)
(cons 'begin s) '() ))))

(define run
(lambda (filename)
(let ((s-expr (compile filename)))
(display s-expr)
(newline)
(eval s-expr user-initial-environment)
(newline))))

(define declarations
(lambda()
(let* ((token(read)))
(cond 
((eof-object? token) '())
((eq? token 'DO) '())
(else
(begin
(let* ( (d (declaration token)) (d1 (declarations))) 
(cons d d1))))))))

(define statements
(lambda (ending)
(let* ((token(read)))
(cond
((eof-object? token) '())
((eq? token ending) '())
(else 
(begin 
(let* ( (s (statement token)) (s1 (statements ending)) )
(cons s s1))))))))

(define fun-expression
(lambda(token)
(cond
((equal? token '!) '())
((eof-object? token) '())
(else
(begin
(let * ( (f1 (arguments (read))))
(cons token f1)
))))))

(define arguments
(lambda (token)
(cond
((equal? token '!) '())
((eof-object? token) '())
(else
(begin
(let* ( (e1 (expression token)) (e2 (arguments (read))) )
(cons e1 e2) ))))))

(define do-statement
(lambda()
(begin-statements 'DONE)
))

(define let-statement
(lambda ()
(let ( (token (read)))
(list 'set! token (expression (read-after '=))))))

(define if-statement
(lambda()
(begin
(let* ( (e1 (expression(read)) ) (e2(begin-statements 'ELSE)) (e3(begin-statements 'ENDIF)) )
(list 'if e1 e2 e3)))))

(define until-statement
(lambda()
(begin
(let* ( (e1 (expression(read)) ) (s1 (statements 'LOOP ) ) )
(append (list 'do () (cons e1 (cons '() '() ) )) s1)))))

(define for-statement
(lambda()
(begin 
(let* ( (token(read)) 
(f1 (expression(read-after '=)) ) 
(f2 (expression(read-after 'TO)) ) 
(f3 (statements 'LOOP ) ) )
(append (list 'do 
(list (list token f1 (list '+ token '1))) 
(cons (list '> token f2) (list token)) )
 f3 )))))
