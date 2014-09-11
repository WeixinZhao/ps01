;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex18) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(require rackunit)
(require 2htdp/image)
(require "extras.rkt")



;Ex18: Give the dimensions of the next 2 rectangles in the sequence. Write down a formula that describes the n-th element in this sequence. 
;Write down a contract, purpose statement, examples, and definition for a function rec-sequence that takes an argument n,
;where n is a number that tells the function to return the nth element in this sequence. Test the function!
;rec-sequence: Number Sequency -> Any
;Given: a number
;Return: the nth element in the sequence