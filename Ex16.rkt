;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex16) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(require rackunit)
(require 2htdp/image)
(require "extras.rkt")

;Ex16: Create a folder on git and save your Racket file there. Then also copy some image to that folder (either take it from your computer or download one from the internet). Then put the following in your racket file:
(define my-image (bitmap "iphone.jpg"))
;Play around with some of the image functions, also try something like
(above my-image my-image my-image)
