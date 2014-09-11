;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex17) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(require rackunit)
(require 2htdp/image)
(require "extras.rkt")



;Ex17: Create some solid blue rectangles with the following dimensions:

;2x4
(rectangle 2 4 "solid" "blue")
;4x8
(rectangle 4 8 "solid" "blue")
;8x16
(rectangle 8 16 "solid" "blue")
;16x32
(rectangle 16 32 "solid" "blue")