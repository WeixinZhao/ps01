;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex30) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;Ex30: Design a function that, given a list of booleans, returns a list with each boolean reversed (e.g. (neg-list (list true false true)) => (cons false (cons true (cons false empty))).

;neg-list: ListOfBoolean -> ListOfBoolean
;take a list of booleans, returns a list with each boolean reversed 
;GIVEN: a list of booleans
;RETURN: a list with each boolean is the reversed of the boolen in the given list
;Examples:
;(neg-list (list true false true)) => (cons false (cons true (cons false empty)))
;(neg-list (list false false) => (list true true)

(define (neg-list lst)
  (cond
    [(empty? lst) empty]
    [else (cons (not (first lst)) (neg-list (rest lst)))]))

(check-expect (neg-list (list true false true)) (cons false (cons true (cons false empty))))
(check-expect (neg-list (list false false))  (list true true))