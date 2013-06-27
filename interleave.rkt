;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname interleave) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (flatten-list lst)
  (cond
    [(empty? lst) empty]
    [(list? (first lst)) (append (flatten-list (first lst)) (flatten-list (rest lst)))]
    [else (cons (first lst) (flatten-list (rest lst)))]))

(define (interleave1 lst1 lst2)
  (cond
   [(empty? lst1) lst2]
   [(empty? lst2) lst1]
   [else (cons (first lst1) (interleave2 (rest lst1) lst2))]))

(define (interleave2 lst1 lst2)
  (cond
   [(empty? lst1) lst2]
   [(empty? lst2) lst1]
   [else (cons (first lst2) (interleave1 lst1 (rest lst2)))]))


