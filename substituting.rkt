;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname substituting) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (atIndex idx lst)
  (cond
    [(or (empty? lst) (< idx 1)) (error "Error Invalid index")]
    [(= 1 idx) (first lst)]
    [else (atIndex (sub1 idx) (rest lst))]))

(define (substitute indicesList atomsList)
  (cond
    [(or (empty? indicesList) (empty? atomsList)) empty]
    [else (cons (atIndex (first indicesList) atomsList) (substitute (rest indicesList) atomsList))]))

(substitute (list 4 4 2 1) (list 'a 'b 'c 'd))

(substitute (list 4 3 2 1 1 2 3 4) (list 'a 'b 'c 'd))

(substitute empty (list 'a 'b 'c 'd))

(substitute (list 2 2 1) (list 'a 'b 'c 'd))

(substitute (list 4 4 2 1) empty)

(substitute (list 4 4 5 1) (list 'a 'b))

