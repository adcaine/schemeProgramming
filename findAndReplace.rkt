;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname David) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))


(define (findIt listOfAtoms IndexToFind)
  (cond
    [(empty? listOfAtoms) empty]
    [(= IndexToFind 1) (first listOfAtoms)]
    [else (findIt (rest listOfAtoms) (sub1 IndexToFind))]))

(define (program listOfAtoms listOfIndex)
  (cond
    [(empty? listOfIndex) empty]
    [else (cons (findIt listOfAtoms (first listOfIndex)) (program listOfAtoms (rest listOfIndex)))]))

(program '(a b c) '( 3 1 2))

(program '(a b c) '( 3 2 1))

(program '(a b c) '( 2 3 1))

(program '(a (b e) c) '( 3 2 1))