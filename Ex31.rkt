;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex31) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(require rackunit)
(require 2htdp/image)
(require "extras.rkt")
;Ex31: Design a function that, given a list of Numbers, returns a list of Images, where each image is a circle that has a radius based on a number of the input list.
;numbers-circles: ListOfNumber -> ListOfImage
;take a list of Numbers, returns a list of Images, where each image is a circle that has a radius based on a number of the input list.
;GIVEN:a list of numbers
;RETURN:  a list of Images, where each image is a circle that has a radius based on a number of the input list.
;Examples:
;(numbers-circles (list 20 30 25)) => (list (circle 20 "outline" "blue") (circle 30 "outline" "blue") (circle 25 "outline" "blue"))
;(numbers-circles (list 10 50 10)) => (list (circle 10 "outline" "blue") (circle 50 "outline" "blue") (circle 10 "outline" "blue"))

(define (numbers-circles lst)
  (cond
    [(empty? lst) empty]
    [else (cons (circle (first lst) "outline" "blue") (numbers-circles (rest lst)))]))


(check-expect (numbers-circles (list 20 30 25)) (list (circle 20 "outline" "blue") (circle 30 "outline" "blue") (circle 25 "outline" "blue")))
(check-expect (numbers-circles (list 10 50 10)) (list (circle 10 "outline" "blue") (circle 50 "outline" "blue") (circle 10 "outline" "blue")))

