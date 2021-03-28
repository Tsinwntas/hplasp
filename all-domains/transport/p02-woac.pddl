; Transport city-sequential-10nodes-1000size-2degree-100mindistance-2trucks-4packages-2008seed

(define (problem transport-city-sequential-10nodes-1000size-2degree-100mindistance-2trucks-4packages-2008seed)
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
  truck-1 - vehicle
  truck-2 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
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
  ; 480,435 -> 193,424
  (road city-loc-4 city-loc-2)
  
  ; 193,424 -> 480,435
  (road city-loc-2 city-loc-4)
  
  ; 918,341 -> 936,210
  (road city-loc-5 city-loc-1)
  
  ; 936,210 -> 918,341
  (road city-loc-1 city-loc-5)
  
  ; 651,235 -> 936,210
  (road city-loc-6 city-loc-1)
  
  ; 936,210 -> 651,235
  (road city-loc-1 city-loc-6)
  
  ; 651,235 -> 480,435
  (road city-loc-6 city-loc-4)
  
  ; 480,435 -> 651,235
  (road city-loc-4 city-loc-6)
  
  ; 651,235 -> 918,341
  (road city-loc-6 city-loc-5)
  
  ; 918,341 -> 651,235
  (road city-loc-5 city-loc-6)
  
  ; 560,901 -> 611,710
  (road city-loc-7 city-loc-3)
  
  ; 611,710 -> 560,901
  (road city-loc-3 city-loc-7)
  
  ; 447,732 -> 611,710
  (road city-loc-8 city-loc-3)
  
  ; 611,710 -> 447,732
  (road city-loc-3 city-loc-8)
  
  ; 447,732 -> 480,435
  (road city-loc-8 city-loc-4)
  
  ; 480,435 -> 447,732
  (road city-loc-4 city-loc-8)
  
  ; 447,732 -> 560,901
  (road city-loc-8 city-loc-7)
  
  ; 560,901 -> 447,732
  (road city-loc-7 city-loc-8)
  
  ; 663,402 -> 480,435
  (road city-loc-9 city-loc-4)
  
  ; 480,435 -> 663,402
  (road city-loc-4 city-loc-9)
  
  ; 663,402 -> 918,341
  (road city-loc-9 city-loc-5)
  
  ; 918,341 -> 663,402
  (road city-loc-5 city-loc-9)
  
  ; 663,402 -> 651,235
  (road city-loc-9 city-loc-6)
  
  ; 651,235 -> 663,402
  (road city-loc-6 city-loc-9)
  
  ; 362,940 -> 560,901
  (road city-loc-10 city-loc-7)
  
  ; 560,901 -> 362,940
  (road city-loc-7 city-loc-10)
  
  ; 362,940 -> 447,732
  (road city-loc-10 city-loc-8)
  
  ; 447,732 -> 362,940
  (road city-loc-8 city-loc-10)
  
  (at package-1 city-loc-10)
  (at package-2 city-loc-8)
  (at package-3 city-loc-6)
  (at package-4 city-loc-5)
  (at truck-1 city-loc-6)
  (capacity truck-1 capacity-3)
  (at truck-2 city-loc-6)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-5)
  (at package-2 city-loc-7)
  (at package-3 city-loc-5)
  (at package-4 city-loc-3)
 ))
 
)
