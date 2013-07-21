;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname maxOfAList) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (max-of-list lst)
  (cond
    [(empty? lst) (error "Empty list")]
    [(= (length lst) 1) (first lst)]
    [else 
     (local
       [(define rest-of-list-max (max-of-list (rest lst)))]
       (cond
         [(> (first lst) rest-of-list-max) (first lst)]
         [else rest-of-list-max]))]))

(define (max-of-list-1 lst)
  (cond
    [(empty? lst) (error "Empty list")]
    [(= (length lst) 1) (first lst)]
    [else (max (first lst) (max-of-list-1 (rest lst)))]))

(define (max-of-list-2 lst)
  (foldr max (first lst) (rest lst)))