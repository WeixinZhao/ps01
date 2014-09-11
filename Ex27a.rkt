;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex27a) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(require rackunit)
(require 2htdp/image)
(require "extras.rkt")
(define-struct point (x y)) 

;Ex27a: There are two ways to do Ex27 with the functions available to you. Try the way that you did not use to solve Ex27.

; ***helper function***
;list-to-string: ListOfString -> String
;take a list of strings and return a string which is the combined text of these strings, seperated by spaces
;GIVEN: a list of strings
;RETURN: a string which is the combined text of the strings in the given list, seperated by spaces 
;Examples:
;(strings-to-image (list "hello" "world")) => an image showing "hello world"
;(strings-to-image (list "hello" "world" "good" "morning")) => an image showing "hello world good morning"

(define (list-to-string lst)
  (cond
    [(empty? lst) " "]
    [else
     (string-append (first lst) 
                    (string-append " " (list-to-string (rest lst))))]))


  
;strings-to-image: ListOfString -> Image
;take a list of strings and draw the combines text of these string, seperated by spaces
;GIVEN: a list of strings
;RETURN: an image consisting of the strings in the given list, seperated by spaces
;Examples:
;(strings-to-image (list "hello" "world")) => a image looks like "hello world"
(define (strings-to-image lst)
  (text (list-to-string lst) 12 "black"))


(strings-to-image (list "hello" "world"))

(strings-to-image (list "hello" "world" "good" "morning")) 