;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname NoDups) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (insertNoDups element lst)
  (cond
    [(empty? lst) (cons element lst)]
    [(= element (first lst)) lst]
    [else (cons (first lst) (insertNoDups element (rest lst)))]))

(insertNoDups 3 (list 2))

(define (remove-dups lst)
  (cond
    [(empty? lst) empty]
    [else (insertNoDups (first lst) (remove-dups (rest lst)))]))

(remove-dups (list 2 4 5 6 2 6))