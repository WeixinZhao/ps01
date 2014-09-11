;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex28) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))

(require rackunit)
(require 2htdp/image)
(require "extras.rkt")
(define-struct point (x y))
  
(require "Ex27.rkt")

;Ex28: Design a function that takes a list of lists of strings as an argument that treats each of the lists of strings as a line (assembled like in Ex27) 
;in a text and renders the whole text as an image.
;lists-to-lines : List -> Image
; takes a list of lists of strings as an argument that treats each of the lists of strings as a line (assembled like in Ex27) 
;in a text and renders the whole text as an image.
;GIVEN:  a list of lists of strings
;RETURN: an image with string lines assemled by the string lists in the list
;Examples:
;(lists-to-lines (list (list "hello" "world") (list "good" "morning")))  -> an iamge consisting of two lines; first line is "hello world" and the second line is "good morning"
(define (lists-to-lines lstlst)
  (cond 
    [(empty? lstlst) empty-image]
    [else
     (above (strings-to-image (first lstlst)) 
                              (lists-to-lines (rest lstlst)))]))


(lists-to-lines (list (list "hello" "world") (list "good" "morning")))