;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex29) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(require rackunit)
(require 2htdp/image)
(require "extras.rkt")
(require "Ex21.rkt")

;Ex29: Look up the beside/align function on the Racket Help Desk. Use it to design a function that takes a list of people (as defined in Ex21) 
;and uses the function from Ex21 to draw these people, placing them beside each other to form some kind of a group photo.

;(define-struct person (first-name last-name age height weight))
;person-image: Person -> Image

;personlist-image :  List -> Image
;take a list of persons and draw peoples in the list side by side to form a group photo
;GIVEN: a list of persons
;RETURN: a group photo consisting of the images of the ppls in the list
;Examples:
;(personlist-image (list make-person("David" "Beck" 68 160) make-person("Barack" "Obama" 66 150))) -> a image of two persons side by side
(define (personlist-image lst)
  (cond
    [(empty? lst) empty-image]
    [else (beside (person-image (first lst))
                  (personlist-image (rest lst)))]
    ))



(personlist-image (list (make-person "David" "Beck" 28 68 160) (make-person "Barack" "Obama" 50 66 150)))