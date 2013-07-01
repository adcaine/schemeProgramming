;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname mergeSort) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (merge-sort lstA lstB)
  {cond
    [(empty? lstA) lstB]
    [(empty? lstB) lstA]
    [(< (first lstA) (first lstB)) (cons (first lstA) (merge-sort (rest lstA) lstB))]
    [else (cons (first lstB) (merge-sort lstA (rest lstB)))]})

(merge-sort (list 1 8 11) (list 2 12 13))