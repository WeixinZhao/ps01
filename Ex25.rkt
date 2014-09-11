;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex25) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))


;Ex25: Design a function that, given a list of booleans, returns true if all booleans in the list are true.
; Write down contract, purpose statement and examples, and test your function.
  
;alltrue: ListBoolean -> Boolean
;Take a list of booleans, determine if all booleans in the list are true
;Given: a list of boolean
;RETURN:True if all booleans in the list are true, otherwise false
;Examples:
;(alltrue (list true true true)) => true
;(alltrue (list true false true)) => false
  
(define (alltrue lob) 
  (cond
    [(empty? lob) true]
    [else (and (first lob) (alltrue (rest lob)))]))

(check-expect (alltrue (list true true true)) true)
(check-expect (alltrue (list true false true)) false)    