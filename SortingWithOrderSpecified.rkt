;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname SortingWithOrderSpecified) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (insertToSortedList element comparator lst)
  (cond
    [(or (empty? lst) (comparator element (first lst))) (cons element lst)]
    [else (cons (first lst) (insertToSortedList element comparator (rest lst)))]))

(define (sort-demo comparator lst)
  (cond
    [(empty? lst) empty]
    [else (insertToSortedList (first lst) comparator (sort-demo comparator (rest lst)))]))

(sort-demo < (list 8 2 -7 6 33 2)) 

(sort-demo > (list 8 2 -7 6 33 2))

(sort-demo = (list 8 2 -7 6 33 2))

(sort-demo = (list 8 2 31 6 31 2))



