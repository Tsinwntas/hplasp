; Transport three-cities-sequential-8nodes-1000size-3degree-100mindistance-3trucks-8packages-2008seed

(define (problem transport-three-cities-sequential-8nodes-1000size-3degree-100mindistance-3trucks-8packages-2008seed)
 (:domain transport)
 (:objects
  city-1-loc-1 - location
  city-2-loc-1 - location
  city-3-loc-1 - location
  city-1-loc-2 - location
  city-2-loc-2 - location
  city-3-loc-2 - location
  city-1-loc-3 - location
  city-2-loc-3 - location
  city-3-loc-3 - location
  city-1-loc-4 - location
  city-2-loc-4 - location
  city-3-loc-4 - location
  city-1-loc-5 - location
  city-2-loc-5 - location
  city-3-loc-5 - location
  city-1-loc-6 - location
  city-2-loc-6 - location
  city-3-loc-6 - location
  city-1-loc-7 - location
  city-2-loc-7 - location
  city-3-loc-7 - location
  city-1-loc-8 - location
  city-2-loc-8 - location
  city-3-loc-8 - location
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
  ; 748,385 -> 890,543
  (road city-1-loc-3 city-1-loc-1)
  
  ; 890,543 -> 748,385
  (road city-1-loc-1 city-1-loc-3)
  
  ; 912,799 -> 890,543
  (road city-1-loc-4 city-1-loc-1)
  
  ; 890,543 -> 912,799
  (road city-1-loc-1 city-1-loc-4)
  
  ; 977,899 -> 890,543
  (road city-1-loc-5 city-1-loc-1)
  
  ; 890,543 -> 977,899
  (road city-1-loc-1 city-1-loc-5)
  
  ; 977,899 -> 912,799
  (road city-1-loc-5 city-1-loc-4)
  
  ; 912,799 -> 977,899
  (road city-1-loc-4 city-1-loc-5)
  
  ; 456,221 -> 384,50
  (road city-1-loc-6 city-1-loc-2)
  
  ; 384,50 -> 456,221
  (road city-1-loc-2 city-1-loc-6)
  
  ; 456,221 -> 748,385
  (road city-1-loc-6 city-1-loc-3)
  
  ; 748,385 -> 456,221
  (road city-1-loc-3 city-1-loc-6)
  
  ; 742,542 -> 890,543
  (road city-1-loc-7 city-1-loc-1)
  
  ; 890,543 -> 742,542
  (road city-1-loc-1 city-1-loc-7)
  
  ; 742,542 -> 748,385
  (road city-1-loc-7 city-1-loc-3)
  
  ; 748,385 -> 742,542
  (road city-1-loc-3 city-1-loc-7)
  
  ; 742,542 -> 912,799
  (road city-1-loc-7 city-1-loc-4)
  
  ; 912,799 -> 742,542
  (road city-1-loc-4 city-1-loc-7)
  
  ; 564,783 -> 890,543
  (road city-1-loc-8 city-1-loc-1)
  
  ; 890,543 -> 564,783
  (road city-1-loc-1 city-1-loc-8)
  
  ; 564,783 -> 912,799
  (road city-1-loc-8 city-1-loc-4)
  
  ; 912,799 -> 564,783
  (road city-1-loc-4 city-1-loc-8)
  
  ; 564,783 -> 742,542
  (road city-1-loc-8 city-1-loc-7)
  
  ; 742,542 -> 564,783
  (road city-1-loc-7 city-1-loc-8)
  
  ; 2748,863 -> 2362,862
  (road city-2-loc-2 city-2-loc-1)
  
  ; 2362,862 -> 2748,863
  (road city-2-loc-1 city-2-loc-2)
  
  ; 2659,497 -> 2748,863
  (road city-2-loc-4 city-2-loc-2)
  
  ; 2748,863 -> 2659,497
  (road city-2-loc-2 city-2-loc-4)
  
  ; 2257,5 -> 2006,60
  (road city-2-loc-5 city-2-loc-3)
  
  ; 2006,60 -> 2257,5
  (road city-2-loc-3 city-2-loc-5)
  
  ; 2245,346 -> 2006,60
  (road city-2-loc-6 city-2-loc-3)
  
  ; 2006,60 -> 2245,346
  (road city-2-loc-3 city-2-loc-6)
  
  ; 2245,346 -> 2257,5
  (road city-2-loc-6 city-2-loc-5)
  
  ; 2257,5 -> 2245,346
  (road city-2-loc-5 city-2-loc-6)
  
  ; 2559,565 -> 2362,862
  (road city-2-loc-7 city-2-loc-1)
  
  ; 2362,862 -> 2559,565
  (road city-2-loc-1 city-2-loc-7)
  
  ; 2559,565 -> 2748,863
  (road city-2-loc-7 city-2-loc-2)
  
  ; 2748,863 -> 2559,565
  (road city-2-loc-2 city-2-loc-7)
  
  ; 2559,565 -> 2659,497
  (road city-2-loc-7 city-2-loc-4)
  
  ; 2659,497 -> 2559,565
  (road city-2-loc-4 city-2-loc-7)
  
  ; 2559,565 -> 2245,346
  (road city-2-loc-7 city-2-loc-6)
  
  ; 2245,346 -> 2559,565
  (road city-2-loc-6 city-2-loc-7)
  
  ; 2347,149 -> 2006,60
  (road city-2-loc-8 city-2-loc-3)
  
  ; 2006,60 -> 2347,149
  (road city-2-loc-3 city-2-loc-8)
  
  ; 2347,149 -> 2257,5
  (road city-2-loc-8 city-2-loc-5)
  
  ; 2257,5 -> 2347,149
  (road city-2-loc-5 city-2-loc-8)
  
  ; 2347,149 -> 2245,346
  (road city-2-loc-8 city-2-loc-6)
  
  ; 2245,346 -> 2347,149
  (road city-2-loc-6 city-2-loc-8)
  
  ; 1170,2709 -> 1336,2475
  (road city-3-loc-2 city-3-loc-1)
  
  ; 1336,2475 -> 1170,2709
  (road city-3-loc-1 city-3-loc-2)
  
  ; 1521,2375 -> 1336,2475
  (road city-3-loc-3 city-3-loc-1)
  
  ; 1336,2475 -> 1521,2375
  (road city-3-loc-1 city-3-loc-3)
  
  ; 1316,2237 -> 1336,2475
  (road city-3-loc-5 city-3-loc-1)
  
  ; 1336,2475 -> 1316,2237
  (road city-3-loc-1 city-3-loc-5)
  
  ; 1316,2237 -> 1521,2375
  (road city-3-loc-5 city-3-loc-3)
  
  ; 1521,2375 -> 1316,2237
  (road city-3-loc-3 city-3-loc-5)
  
  ; 1720,2241 -> 1521,2375
  (road city-3-loc-6 city-3-loc-3)
  
  ; 1521,2375 -> 1720,2241
  (road city-3-loc-3 city-3-loc-6)
  
  ; 1720,2241 -> 1701,2000
  (road city-3-loc-6 city-3-loc-4)
  
  ; 1701,2000 -> 1720,2241
  (road city-3-loc-4 city-3-loc-6)
  
  ; 1720,2241 -> 1316,2237
  (road city-3-loc-6 city-3-loc-5)
  
  ; 1316,2237 -> 1720,2241
  (road city-3-loc-5 city-3-loc-6)
  
  ; 1630,2722 -> 1336,2475
  (road city-3-loc-7 city-3-loc-1)
  
  ; 1336,2475 -> 1630,2722
  (road city-3-loc-1 city-3-loc-7)
  
  ; 1630,2722 -> 1521,2375
  (road city-3-loc-7 city-3-loc-3)
  
  ; 1521,2375 -> 1630,2722
  (road city-3-loc-3 city-3-loc-7)
  
  ; 1120,2854 -> 1170,2709
  (road city-3-loc-8 city-3-loc-2)
  
  ; 1170,2709 -> 1120,2854
  (road city-3-loc-2 city-3-loc-8)
  
  ; 890,543 <-> 2006,60
  (road city-1-loc-1 city-2-loc-3)
  
  (road city-2-loc-3 city-1-loc-1)
  
  (road city-1-loc-8 city-3-loc-8)
  
  (road city-3-loc-8 city-1-loc-8)
  
  (road city-2-loc-1 city-3-loc-1)
  
  (road city-3-loc-1 city-2-loc-1)
  
  (at package-1 city-2-loc-3)
  (at package-2 city-1-loc-5)
  (at package-3 city-2-loc-5)
  (at package-4 city-2-loc-6)
  (at package-5 city-2-loc-6)
  (at package-6 city-1-loc-5)
  (at package-7 city-2-loc-2)
  (at package-8 city-2-loc-7)
  (at truck-1 city-1-loc-3)
  (capacity truck-1 capacity-4)
  (at truck-2 city-1-loc-1)
  (capacity truck-2 capacity-3)
  (at truck-3 city-1-loc-8)
  (capacity truck-3 capacity-2)
 )
 (:goal (and
  (at package-1 city-2-loc-4)
  (at package-2 city-1-loc-8)
  (at package-3 city-3-loc-5)
  (at package-4 city-2-loc-3)
  (at package-5 city-2-loc-2)
  (at package-6 city-3-loc-5)
  (at package-7 city-3-loc-8)
  (at package-8 city-1-loc-3)
 ))
 
)
