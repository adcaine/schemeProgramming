;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname contains) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (contains? item lst)
  (cond
    [(empty? lst) false]
    [(cons? (first lst)) (or (contains? item (first lst)) (contains? item (rest lst)))]
    [(= item (first lst)) true]
    [else (contains? item (rest lst))]))

(contains? 3 (list 1 (list 2 8 ) (list 3)))