;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex21) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(require rackunit)
(require 2htdp/image)
(require "extras.rkt")
(provide make-person)
(provide person-image)

;Ex21: Here is a struct definition:
(define-struct person (first-name last-name age height weight))
;A person is (make-person String String PosNumber PosReal PosReal)
;Interprentation
;first-name is the person's first name
;last-name is the person's last name
;age is the person's age
;height is the person's height in inches
;;weight is the person's weight in pounds

;person-fn: person -> ?
;(define (person-fn p)
;  (...
;   (person-first-name p)
;   (person-last-name p)
;   (person-age p)
;   ...
;   )
  
;person-image: Person -> Image
;Takes a person and returns an image like the ones in Ex20, but in a way that the height and width of this image is related to the height of the person
;GIVEN: a person
;RETURN: an image like the ones in Ex20, but in a way that the height and width of this image is related to the height of the person 
;Examples:
;(person-image (make-person "David" "Beck" 28 68 160)) => an image 
;(person-image (make-person "John" "Smith" 29 99 260)) => an image 


(define head (circle 9 "solid" "black"))
(define torso (rectangle 30 40 "solid" "black"))
(define arm (rectangle 8 50 "solid" "black"))
(define whitespace (rectangle 3 50 "solid" "white"))
(define leg (rectangle 10 50 "solid" "black"))


(define (person-image person) 
  (scale (/ (person-height person) 68)
  (above
   (above 
    (above head  (beside arm whitespace torso whitespace arm))
       (beside leg whitespace leg))
   (beside 
   (text (person-first-name person) 12 "blue")
    whitespace
   (text (person-last-name person) 12 "blue")))
   ))


;(person-image (make-person "David" "Beck" 26 68 160))

;(person-image (make-person "John" "Smith" 29 99 260))


