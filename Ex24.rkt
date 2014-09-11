;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex24) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
  
;Ex24: Write a function that returns the product of all the numbers in a list (Hint: be careful with the empty list)
  ;list-product : list -> Number
  ;Given: a list
  ;Return: the product of all the numbers in the given list
  ;Examples:
  ;(list-product (list 2 3)) = 6
  ;(list-product empty) = 1
  (define (list-product lst)
    (cond 
      [(empty? lst) 1]
      [else (* (first lst) (list-product (rest lst)))]))
  

(check-expect (list-product (list 2 3)) 6)
(check-expect (list-product empty) 1)
