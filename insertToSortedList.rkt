;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname insertToSortedList) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (insertToSortedList element lst)
  (cond
    [(or (empty? lst) (<= element (first lst))) (cons element lst)]
    [else (cons (first lst) (insertToSortedList element (rest lst)))]))

(insertToSortedList 3 (list 1 2 4))
(insertToSortedList 8 empty)