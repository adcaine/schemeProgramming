;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname findIt) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (findIt index lst)
  (cond
    [(or (empty? lst) (< index 1)) empty]
    [(= index 1) (first lst)]
    [else (findIt (sub1 index) (rest lst))]))
