;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex20) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(require rackunit)
(require 2htdp/image)
(require "extras.rkt")



;Ex20: Try to assemble a human shape from circles and rectangles using the image functions above. It does not need to look fancy, just imagine a head, 
;a chest and arms and feet. Then use the stepper to see how DrRacket assembles your image.

(define head (circle 9 "solid" "black"))
(define torso (rectangle 30 40 "solid" "black"))
(define arm (rectangle 8 50 "solid" "black"))
(define whitespace (rectangle 3 50 "solid" "white"))
(define leg (rectangle 10 50 "solid" "black"))

(above (above head (beside arm whitespace torso whitespace arm)) (beside leg whitespace leg))