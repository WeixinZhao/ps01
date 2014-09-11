;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex27) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))

(require rackunit)
(require 2htdp/image)
(require "extras.rkt")
(define-struct point (x y)) 
(provide strings-to-image)
;Ex27: Design a function that takes a list of strings and draws the combined text of those strings, separated by spaces.
;strings-to-image: ListOfString -> Image
;take a list of strings and draw the combines text of these string, seperated by spaces
;GIVEN: a list of strings
;RETURN: an image consisting of the strings in the given list, seperated by spaces
;Examples:
;(strings-to-image (list "hello" "world")) => an image showing "hello world"
;(strings-to-image (list "hello" "world" "good" "morning")) => an image showing "hello world good morning"
(define (strings-to-image lst)
  (cond
    [(empty? lst) (rectangle 10 10 "solid" "white") ]
    [else
     (beside (text (first lst) 16 "black") 
                   (beside (rectangle 10 10 "solid" "white")
                           (strings-to-image (rest lst))))]))


(strings-to-image (list "hello" "world"))

(strings-to-image (list "hello" "world" "good" "morning")) 