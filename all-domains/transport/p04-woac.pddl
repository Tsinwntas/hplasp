; Transport city-sequential-20nodes-1000size-3degree-100mindistance-3trucks-8packages-2008seed

(define (problem transport-city-sequential-20nodes-1000size-3degree-100mindistance-3trucks-8packages-2008seed)
 (:domain transport)
 (:objects
  city-loc-1 - location
  city-loc-2 - location
  city-loc-3 - location
  city-loc-4 - location
  city-loc-5 - location
  city-loc-6 - location
  city-loc-7 - location
  city-loc-8 - location
  city-loc-9 - location
  city-loc-10 - location
  city-loc-11 - location
  city-loc-12 - location
  city-loc-13 - location
  city-loc-14 - location
  city-loc-15 - location
  city-loc-16 - location
  city-loc-17 - location
  city-loc-18 - location
  city-loc-19 - location
  city-loc-20 - location
  truck-1 - vehicle
  truck-2 - vehicle
  truck-3 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
  package-5 - package
  package-6 - package
  package-7 - package
  package-8 - package
  capacity-0 - capacity-number
  capacity-1 - capacity-number
  capacity-2 - capacity-number
  capacity-3 - capacity-number
  capacity-4 - capacity-number
 )
 (:init
  
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (capacity-predecessor capacity-3 capacity-4)
  ; 447,732 -> 560,901
  (road city-loc-4 city-loc-3)
  
  ; 560,901 -> 447,732
  (road city-loc-3 city-loc-4)
  
  ; 663,402 -> 918,341
  (road city-loc-5 city-loc-1)
  
  ; 918,341 -> 663,402
  (road city-loc-1 city-loc-5)
  
  ; 663,402 -> 651,235
  (road city-loc-5 city-loc-2)
  
  ; 651,235 -> 663,402
  (road city-loc-2 city-loc-5)
  
  ; 362,940 -> 560,901
  (road city-loc-6 city-loc-3)
  
  ; 560,901 -> 362,940
  (road city-loc-3 city-loc-6)
  
  ; 362,940 -> 447,732
  (road city-loc-6 city-loc-4)
  
  ; 447,732 -> 362,940
  (road city-loc-4 city-loc-6)
  
  ; 508,430 -> 651,235
  (road city-loc-8 city-loc-2)
  
  ; 651,235 -> 508,430
  (road city-loc-2 city-loc-8)
  
  ; 508,430 -> 663,402
  (road city-loc-8 city-loc-5)
  
  ; 663,402 -> 508,430
  (road city-loc-5 city-loc-8)
  
  ; 653,507 -> 663,402
  (road city-loc-9 city-loc-5)
  
  ; 663,402 -> 653,507
  (road city-loc-5 city-loc-9)
  
  ; 653,507 -> 508,430
  (road city-loc-9 city-loc-8)
  
  ; 508,430 -> 653,507
  (road city-loc-8 city-loc-9)
  
  ; 820,551 -> 918,341
  (road city-loc-10 city-loc-1)
  
  ; 918,341 -> 820,551
  (road city-loc-1 city-loc-10)
  
  ; 820,551 -> 663,402
  (road city-loc-10 city-loc-5)
  
  ; 663,402 -> 820,551
  (road city-loc-5 city-loc-10)
  
  ; 820,551 -> 941,734
  (road city-loc-10 city-loc-7)
  
  ; 941,734 -> 820,551
  (road city-loc-7 city-loc-10)
  
  ; 820,551 -> 653,507
  (road city-loc-10 city-loc-9)
  
  ; 653,507 -> 820,551
  (road city-loc-9 city-loc-10)
  
  ; 437,605 -> 447,732
  (road city-loc-11 city-loc-4)
  
  ; 447,732 -> 437,605
  (road city-loc-4 city-loc-11)
  
  ; 437,605 -> 508,430
  (road city-loc-11 city-loc-8)
  
  ; 508,430 -> 437,605
  (road city-loc-8 city-loc-11)
  
  ; 437,605 -> 653,507
  (road city-loc-11 city-loc-9)
  
  ; 653,507 -> 437,605
  (road city-loc-9 city-loc-11)
  
  ; 497,244 -> 651,235
  (road city-loc-12 city-loc-2)
  
  ; 651,235 -> 497,244
  (road city-loc-2 city-loc-12)
  
  ; 497,244 -> 663,402
  (road city-loc-12 city-loc-5)
  
  ; 663,402 -> 497,244
  (road city-loc-5 city-loc-12)
  
  ; 497,244 -> 508,430
  (road city-loc-12 city-loc-8)
  
  ; 508,430 -> 497,244
  (road city-loc-8 city-loc-12)
  
  ; 305,509 -> 508,430
  (road city-loc-13 city-loc-8)
  
  ; 508,430 -> 305,509
  (road city-loc-8 city-loc-13)
  
  ; 305,509 -> 437,605
  (road city-loc-13 city-loc-11)
  
  ; 437,605 -> 305,509
  (road city-loc-11 city-loc-13)
  
  ; 731,24 -> 651,235
  (road city-loc-14 city-loc-2)
  
  ; 651,235 -> 731,24
  (road city-loc-2 city-loc-14)
  
  ; 463,927 -> 560,901
  (road city-loc-15 city-loc-3)
  
  ; 560,901 -> 463,927
  (road city-loc-3 city-loc-15)
  
  ; 463,927 -> 447,732
  (road city-loc-15 city-loc-4)
  
  ; 447,732 -> 463,927
  (road city-loc-4 city-loc-15)
  
  ; 463,927 -> 362,940
  (road city-loc-15 city-loc-6)
  
  ; 362,940 -> 463,927
  (road city-loc-6 city-loc-15)
  
  ; 281,709 -> 447,732
  (road city-loc-16 city-loc-4)
  
  ; 447,732 -> 281,709
  (road city-loc-4 city-loc-16)
  
  ; 281,709 -> 362,940
  (road city-loc-16 city-loc-6)
  
  ; 362,940 -> 281,709
  (road city-loc-6 city-loc-16)
  
  ; 281,709 -> 437,605
  (road city-loc-16 city-loc-11)
  
  ; 437,605 -> 281,709
  (road city-loc-11 city-loc-16)
  
  ; 281,709 -> 305,509
  (road city-loc-16 city-loc-13)
  
  ; 305,509 -> 281,709
  (road city-loc-13 city-loc-16)
  
  ; 205,275 -> 305,509
  (road city-loc-17 city-loc-13)
  
  ; 305,509 -> 205,275
  (road city-loc-13 city-loc-17)
  
  ; 119,757 -> 281,709
  (road city-loc-18 city-loc-16)
  
  ; 281,709 -> 119,757
  (road city-loc-16 city-loc-18)
  
  ; 179,400 -> 305,509
  (road city-loc-19 city-loc-13)
  
  ; 305,509 -> 179,400
  (road city-loc-13 city-loc-19)
  
  ; 179,400 -> 205,275
  (road city-loc-19 city-loc-17)
  
  ; 205,275 -> 179,400
  (road city-loc-17 city-loc-19)
  
  ; 15,529 -> 119,757
  (road city-loc-20 city-loc-18)
  
  ; 119,757 -> 15,529
  (road city-loc-18 city-loc-20)
  
  ; 15,529 -> 179,400
  (road city-loc-20 city-loc-19)
  
  ; 179,400 -> 15,529
  (road city-loc-19 city-loc-20)
  
  (at package-1 city-loc-7)
  (at package-2 city-loc-8)
  (at package-3 city-loc-13)
  (at package-4 city-loc-7)
  (at package-5 city-loc-6)
  (at package-6 city-loc-17)
  (at package-7 city-loc-4)
  (at package-8 city-loc-19)
  (at truck-1 city-loc-19)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-19)
  (capacity truck-2 capacity-3)
  (at truck-3 city-loc-4)
  (capacity truck-3 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-4)
  (at package-2 city-loc-20)
  (at package-3 city-loc-20)
  (at package-4 city-loc-3)
  (at package-5 city-loc-19)
  (at package-6 city-loc-18)
  (at package-7 city-loc-17)
  (at package-8 city-loc-3)
 ))
 
)
