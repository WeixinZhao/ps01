;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex26) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(require rackunit)
(require 2htdp/image)
(require "extras.rkt")

  
;Ex26: Design a function that takes a list of Points and draws a solid blue circle with radius 10 at every Point in that list into a 300x300 scene. 
;points-to-circles: List -> image
;take a list of points and draw a solic blue circle with radius 10 at every point in that list into a 300x300 scene
;GIVEN:a list of points
;RETURN: a 300 scene in which a solid blue circles are drawn at every point in the given list
;Examples:
;(points-to-circles (list (make-point 10 20) (make-point 30 30) (make-point 50 40))) => an image with three blue circles at (10 20) (30 30) (50 40)
;(points-to-circles (list (make-point 5 30) (make-point 10 30) (make-point 50 30))) => an image with three blue circles at (5 30) (10 30) (50 30)
(define-struct point (x y))

(define (points-to-circles ptlist)       
  (cond
    [(empty? ptlist) (empty-scene 300 300)]
    [else 
     (place-image (circle 10 "outline" "blue") (point-x (first ptlist)) (point-y (first ptlist)) (points-to-circles (rest ptlist)))]        
    ))  

(points-to-circles (list (make-point 10 20) (make-point 30 30) (make-point 50 40)))

(points-to-circles (list (make-point 5 30) (make-point 10 30) (make-point 50 30)))