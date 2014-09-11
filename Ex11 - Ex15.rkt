;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Ex11 - Ex15|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(require rackunit)
(require 2htdp/image)
(define-struct point (x y)) 

;Ex11: What do you think are the contracts for the point-functions?
;point-x: Point -> Real
;point-y: Point -> Real


;Ex12: What are the values of the following expressions? Be sure to predict the answers in your head before trying the expressions.
;
;(make-point 5 3)
;a point with its x field = 5 and its y field = 3

;(point? 5)
;false

;(point? true)
;false

;(point? (make-point 2 1))
;true

;(point-x (make-point 8 5))
;8

;(point-y (make-point 42 15))
;15

;Ex13: What will happen if you type (make-point true false)? what is the result of (point-x (make-point true false))?
;a point with x field = true and y field = false is created.  (point-x (make-point true false)) = true


;Ex14: Which functions will Racket create when we execute this: (define-struct student (id name major))?
;make-student
;student?
;student-id
;student-name
;student-major


;Ex15: Write down reasonable comments for the definition of the type Student from Ex14 that define the types of the fields and their interpretation.
;A student is (make-student PosInteger String String)
;It represent the information of a student
;Interpretation
;id is the ID number of the student
;name is the name of the student
;major is the major of the student

