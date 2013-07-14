;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname filter-list) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (filter-list func lst)
  (cond
    [(empty? lst) empty]
    [(cons? (first lst)) (cons (filter-list func (first lst)) (filter-list func (rest lst)))]
    [(func (first lst)) (cons (first lst) (filter-list func (rest lst)))]
    [else (filter-list func (rest lst))]))