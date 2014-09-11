;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex32) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;Ex32: Design a function that takes a list of Points and returns the sum of all distances of those Points from (0,0). You should write a helper function to calculate the distance. 
;For simplicity, you can use the Manhattan distance measure (distance = x + y).



;distance-to-origin: Point -> PosReal
;calculate the distance of the given point to the origin (0,0)
;GIVEN: a point
;RETURN: its distance to origin calculated by the Manhattan distance measure (distance =x+y)
;Examples:
;(distance-to-origin (make-point 20 30) => 50
;(distance-to-origin (make-point 10 50) => 60

(define-struct point (x y))
(define (distance-to-origin pt)
      (+ (point-x pt) (point-y pt)))

(check-expect (distance-to-origin (make-point 20 30))  50)
(check-expect (distance-to-origin (make-point 10 50))  60)

;distance-sum: ListOfPoint -> PosReal
;takes a list of Points and returns the sum of all distances of those Points from (0,0)
;GIVEN: a list of Points
;RETURN: the sum of all distances of those Points from (0,0)
;Examples:
;(distance-sum (list (make-point 20 30) (make-point 10 50))) => 110
;(distance-sum (list (make-point 10 10) (make-point 20 40) (make-point 20 20))) => 120

(define (distance-sum lst)
  (cond
    [(empty? lst) 0]
    [else (+ (distance-to-origin (first lst)) (distance-sum (rest lst)))]))

(check-expect (distance-sum (list (make-point 20 30) (make-point 10 50))) 110)
(check-expect (distance-sum (list (make-point 10 10) (make-point 20 40) (make-point 20 20)))  120)
    

