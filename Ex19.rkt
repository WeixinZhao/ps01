;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex19) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(require rackunit)
(require 2htdp/image)
(require "extras.rkt")



;Ex. 19
;; rel-rec-sequence: Number Number -> Rectangle
;; Takes two numbers and returns a solid blue rectangle, where the first number is
;; the width of the rectangle, and the second number is the proportion of width
;; and height of the rectangle to be produced (i.e. height = width * proportion).
;Given: the width of a rectangle in inches and the proportion of width and height of the rectangele to be produced
;Return: a rectangle whose width is the given width and height is equal to width * proportion
;Examples:
;(rel-rec-Sequence 10 1.5) => (rectangle 10 15)
;(rel-rec-Sequence 25 0.5) => (rectangle 20 10)
(define (rel-rec-Sequence w p)
  (rectangle w (* w p) "solid" "black"))

(check-expect (rel-rec-Sequence 10 1.5) (rectangle 10 15 "solid" "black"))
(check-expect (rel-rec-Sequence 25 0.5) (rectangle 25 12.5 "solid" "black"))
