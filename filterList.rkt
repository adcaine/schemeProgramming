;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname filterList) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (isMember? element lst)
  (cond
    [(empty? lst) false]
    [(= element (first lst)) true]
    [else (isMember? element (rest lst))]))

(define (myFilter? element) (isMember? element (list 1 2 3 4)))

(define (filter-list lst)
  (cond
    [(empty? lst) empty]
    [(myFilter? (first lst)) (filter-list (rest lst))]
    [else (cons (first lst) (filter-list (rest lst)))]))

(filter-list (list 8 3 11 0 4 2 1))