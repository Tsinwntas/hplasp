; Transport three-cities-sequential-14nodes-1000size-4degree-100mindistance-4trucks-14packages-2008seed

(define (problem transport-three-cities-sequential-14nodes-1000size-4degree-100mindistance-4trucks-14packages-2008seed)
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
  city-1-loc-9 - location
  city-2-loc-9 - location
  city-3-loc-9 - location
  city-1-loc-10 - location
  city-2-loc-10 - location
  city-3-loc-10 - location
  city-1-loc-11 - location
  city-2-loc-11 - location
  city-3-loc-11 - location
  city-1-loc-12 - location
  city-2-loc-12 - location
  city-3-loc-12 - location
  city-1-loc-13 - location
  city-2-loc-13 - location
  city-3-loc-13 - location
  city-1-loc-14 - location
  city-2-loc-14 - location
  city-3-loc-14 - location
  truck-1 - vehicle
  truck-2 - vehicle
  truck-3 - vehicle
  truck-4 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
  package-5 - package
  package-6 - package
  package-7 - package
  package-8 - package
  package-9 - package
  package-10 - package
  package-11 - package
  package-12 - package
  package-13 - package
  package-14 - package
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
  
  ; 564,783 -> 912,799
  (road city-1-loc-8 city-1-loc-4)
  
  ; 912,799 -> 564,783
  (road city-1-loc-4 city-1-loc-8)
  
  ; 564,783 -> 742,542
  (road city-1-loc-8 city-1-loc-7)
  
  ; 742,542 -> 564,783
  (road city-1-loc-7 city-1-loc-8)
  
  ; 273,425 -> 456,221
  (road city-1-loc-9 city-1-loc-6)
  
  ; 456,221 -> 273,425
  (road city-1-loc-6 city-1-loc-9)
  
  ; 566,552 -> 890,543
  (road city-1-loc-10 city-1-loc-1)
  
  ; 890,543 -> 566,552
  (road city-1-loc-1 city-1-loc-10)
  
  ; 566,552 -> 748,385
  (road city-1-loc-10 city-1-loc-3)
  
  ; 748,385 -> 566,552
  (road city-1-loc-3 city-1-loc-10)
  
  ; 566,552 -> 456,221
  (road city-1-loc-10 city-1-loc-6)
  
  ; 456,221 -> 566,552
  (road city-1-loc-6 city-1-loc-10)
  
  ; 566,552 -> 742,542
  (road city-1-loc-10 city-1-loc-7)
  
  ; 742,542 -> 566,552
  (road city-1-loc-7 city-1-loc-10)
  
  ; 566,552 -> 564,783
  (road city-1-loc-10 city-1-loc-8)
  
  ; 564,783 -> 566,552
  (road city-1-loc-8 city-1-loc-10)
  
  ; 566,552 -> 273,425
  (road city-1-loc-10 city-1-loc-9)
  
  ; 273,425 -> 566,552
  (road city-1-loc-9 city-1-loc-10)
  
  ; 174,643 -> 273,425
  (road city-1-loc-11 city-1-loc-9)
  
  ; 273,425 -> 174,643
  (road city-1-loc-9 city-1-loc-11)
  
  ; 930,259 -> 890,543
  (road city-1-loc-12 city-1-loc-1)
  
  ; 890,543 -> 930,259
  (road city-1-loc-1 city-1-loc-12)
  
  ; 930,259 -> 748,385
  (road city-1-loc-12 city-1-loc-3)
  
  ; 748,385 -> 930,259
  (road city-1-loc-3 city-1-loc-12)
  
  ; 930,259 -> 742,542
  (road city-1-loc-12 city-1-loc-7)
  
  ; 742,542 -> 930,259
  (road city-1-loc-7 city-1-loc-12)
  
  ; 55,605 -> 273,425
  (road city-1-loc-13 city-1-loc-9)
  
  ; 273,425 -> 55,605
  (road city-1-loc-9 city-1-loc-13)
  
  ; 55,605 -> 174,643
  (road city-1-loc-13 city-1-loc-11)
  
  ; 174,643 -> 55,605
  (road city-1-loc-11 city-1-loc-13)
  
  ; 803,858 -> 890,543
  (road city-1-loc-14 city-1-loc-1)
  
  ; 890,543 -> 803,858
  (road city-1-loc-1 city-1-loc-14)
  
  ; 803,858 -> 912,799
  (road city-1-loc-14 city-1-loc-4)
  
  ; 912,799 -> 803,858
  (road city-1-loc-4 city-1-loc-14)
  
  ; 803,858 -> 977,899
  (road city-1-loc-14 city-1-loc-5)
  
  ; 977,899 -> 803,858
  (road city-1-loc-5 city-1-loc-14)
  
  ; 803,858 -> 742,542
  (road city-1-loc-14 city-1-loc-7)
  
  ; 742,542 -> 803,858
  (road city-1-loc-7 city-1-loc-14)
  
  ; 803,858 -> 564,783
  (road city-1-loc-14 city-1-loc-8)
  
  ; 564,783 -> 803,858
  (road city-1-loc-8 city-1-loc-14)
  
  ; 2257,5 -> 2006,60
  (road city-2-loc-4 city-2-loc-2)
  
  ; 2006,60 -> 2257,5
  (road city-2-loc-2 city-2-loc-4)
  
  ; 2245,346 -> 2257,5
  (road city-2-loc-5 city-2-loc-4)
  
  ; 2257,5 -> 2245,346
  (road city-2-loc-4 city-2-loc-5)
  
  ; 2559,565 -> 2748,863
  (road city-2-loc-6 city-2-loc-1)
  
  ; 2748,863 -> 2559,565
  (road city-2-loc-1 city-2-loc-6)
  
  ; 2559,565 -> 2659,497
  (road city-2-loc-6 city-2-loc-3)
  
  ; 2659,497 -> 2559,565
  (road city-2-loc-3 city-2-loc-6)
  
  ; 2347,149 -> 2006,60
  (road city-2-loc-7 city-2-loc-2)
  
  ; 2006,60 -> 2347,149
  (road city-2-loc-2 city-2-loc-7)
  
  ; 2347,149 -> 2257,5
  (road city-2-loc-7 city-2-loc-4)
  
  ; 2257,5 -> 2347,149
  (road city-2-loc-4 city-2-loc-7)
  
  ; 2347,149 -> 2245,346
  (road city-2-loc-7 city-2-loc-5)
  
  ; 2245,346 -> 2347,149
  (road city-2-loc-5 city-2-loc-7)
  
  ; 2336,475 -> 2659,497
  (road city-2-loc-8 city-2-loc-3)
  
  ; 2659,497 -> 2336,475
  (road city-2-loc-3 city-2-loc-8)
  
  ; 2336,475 -> 2245,346
  (road city-2-loc-8 city-2-loc-5)
  
  ; 2245,346 -> 2336,475
  (road city-2-loc-5 city-2-loc-8)
  
  ; 2336,475 -> 2559,565
  (road city-2-loc-8 city-2-loc-6)
  
  ; 2559,565 -> 2336,475
  (road city-2-loc-6 city-2-loc-8)
  
  ; 2336,475 -> 2347,149
  (road city-2-loc-8 city-2-loc-7)
  
  ; 2347,149 -> 2336,475
  (road city-2-loc-7 city-2-loc-8)
  
  ; 2170,709 -> 2336,475
  (road city-2-loc-9 city-2-loc-8)
  
  ; 2336,475 -> 2170,709
  (road city-2-loc-8 city-2-loc-9)
  
  ; 2521,375 -> 2659,497
  (road city-2-loc-10 city-2-loc-3)
  
  ; 2659,497 -> 2521,375
  (road city-2-loc-3 city-2-loc-10)
  
  ; 2521,375 -> 2245,346
  (road city-2-loc-10 city-2-loc-5)
  
  ; 2245,346 -> 2521,375
  (road city-2-loc-5 city-2-loc-10)
  
  ; 2521,375 -> 2559,565
  (road city-2-loc-10 city-2-loc-6)
  
  ; 2559,565 -> 2521,375
  (road city-2-loc-6 city-2-loc-10)
  
  ; 2521,375 -> 2347,149
  (road city-2-loc-10 city-2-loc-7)
  
  ; 2347,149 -> 2521,375
  (road city-2-loc-7 city-2-loc-10)
  
  ; 2521,375 -> 2336,475
  (road city-2-loc-10 city-2-loc-8)
  
  ; 2336,475 -> 2521,375
  (road city-2-loc-8 city-2-loc-10)
  
  ; 2720,241 -> 2659,497
  (road city-2-loc-12 city-2-loc-3)
  
  ; 2659,497 -> 2720,241
  (road city-2-loc-3 city-2-loc-12)
  
  ; 2720,241 -> 2559,565
  (road city-2-loc-12 city-2-loc-6)
  
  ; 2559,565 -> 2720,241
  (road city-2-loc-6 city-2-loc-12)
  
  ; 2720,241 -> 2521,375
  (road city-2-loc-12 city-2-loc-10)
  
  ; 2521,375 -> 2720,241
  (road city-2-loc-10 city-2-loc-12)
  
  ; 2720,241 -> 2701,0
  (road city-2-loc-12 city-2-loc-11)
  
  ; 2701,0 -> 2720,241
  (road city-2-loc-11 city-2-loc-12)
  
  ; 2630,722 -> 2748,863
  (road city-2-loc-13 city-2-loc-1)
  
  ; 2748,863 -> 2630,722
  (road city-2-loc-1 city-2-loc-13)
  
  ; 2630,722 -> 2659,497
  (road city-2-loc-13 city-2-loc-3)
  
  ; 2659,497 -> 2630,722
  (road city-2-loc-3 city-2-loc-13)
  
  ; 2630,722 -> 2559,565
  (road city-2-loc-13 city-2-loc-6)
  
  ; 2559,565 -> 2630,722
  (road city-2-loc-6 city-2-loc-13)
  
  ; 2120,854 -> 2170,709
  (road city-2-loc-14 city-2-loc-9)
  
  ; 2170,709 -> 2120,854
  (road city-2-loc-9 city-2-loc-14)
  
  ; 1330,2495 -> 1542,2761
  (road city-3-loc-3 city-3-loc-1)
  
  ; 1542,2761 -> 1330,2495
  (road city-3-loc-1 city-3-loc-3)
  
  ; 1453,2848 -> 1542,2761
  (road city-3-loc-4 city-3-loc-1)
  
  ; 1542,2761 -> 1453,2848
  (road city-3-loc-1 city-3-loc-4)
  
  ; 1645,2721 -> 1542,2761
  (road city-3-loc-5 city-3-loc-1)
  
  ; 1542,2761 -> 1645,2721
  (road city-3-loc-1 city-3-loc-5)
  
  ; 1645,2721 -> 1453,2848
  (road city-3-loc-5 city-3-loc-4)
  
  ; 1453,2848 -> 1645,2721
  (road city-3-loc-4 city-3-loc-5)
  
  ; 1614,2343 -> 1330,2495
  (road city-3-loc-6 city-3-loc-3)
  
  ; 1330,2495 -> 1614,2343
  (road city-3-loc-3 city-3-loc-6)
  
  ; 1936,2210 -> 1889,2064
  (road city-3-loc-7 city-3-loc-2)
  
  ; 1889,2064 -> 1936,2210
  (road city-3-loc-2 city-3-loc-7)
  
  ; 1936,2210 -> 1614,2343
  (road city-3-loc-7 city-3-loc-6)
  
  ; 1614,2343 -> 1936,2210
  (road city-3-loc-6 city-3-loc-7)
  
  ; 1193,2424 -> 1330,2495
  (road city-3-loc-8 city-3-loc-3)
  
  ; 1330,2495 -> 1193,2424
  (road city-3-loc-3 city-3-loc-8)
  
  ; 1480,2435 -> 1542,2761
  (road city-3-loc-9 city-3-loc-1)
  
  ; 1542,2761 -> 1480,2435
  (road city-3-loc-1 city-3-loc-9)
  
  ; 1480,2435 -> 1330,2495
  (road city-3-loc-9 city-3-loc-3)
  
  ; 1330,2495 -> 1480,2435
  (road city-3-loc-3 city-3-loc-9)
  
  ; 1480,2435 -> 1645,2721
  (road city-3-loc-9 city-3-loc-5)
  
  ; 1645,2721 -> 1480,2435
  (road city-3-loc-5 city-3-loc-9)
  
  ; 1480,2435 -> 1614,2343
  (road city-3-loc-9 city-3-loc-6)
  
  ; 1614,2343 -> 1480,2435
  (road city-3-loc-6 city-3-loc-9)
  
  ; 1480,2435 -> 1193,2424
  (road city-3-loc-9 city-3-loc-8)
  
  ; 1193,2424 -> 1480,2435
  (road city-3-loc-8 city-3-loc-9)
  
  ; 1918,2341 -> 1889,2064
  (road city-3-loc-10 city-3-loc-2)
  
  ; 1889,2064 -> 1918,2341
  (road city-3-loc-2 city-3-loc-10)
  
  ; 1918,2341 -> 1614,2343
  (road city-3-loc-10 city-3-loc-6)
  
  ; 1614,2343 -> 1918,2341
  (road city-3-loc-6 city-3-loc-10)
  
  ; 1918,2341 -> 1936,2210
  (road city-3-loc-10 city-3-loc-7)
  
  ; 1936,2210 -> 1918,2341
  (road city-3-loc-7 city-3-loc-10)
  
  ; 1651,2235 -> 1889,2064
  (road city-3-loc-11 city-3-loc-2)
  
  ; 1889,2064 -> 1651,2235
  (road city-3-loc-2 city-3-loc-11)
  
  ; 1651,2235 -> 1614,2343
  (road city-3-loc-11 city-3-loc-6)
  
  ; 1614,2343 -> 1651,2235
  (road city-3-loc-6 city-3-loc-11)
  
  ; 1651,2235 -> 1936,2210
  (road city-3-loc-11 city-3-loc-7)
  
  ; 1936,2210 -> 1651,2235
  (road city-3-loc-7 city-3-loc-11)
  
  ; 1651,2235 -> 1480,2435
  (road city-3-loc-11 city-3-loc-9)
  
  ; 1480,2435 -> 1651,2235
  (road city-3-loc-9 city-3-loc-11)
  
  ; 1651,2235 -> 1918,2341
  (road city-3-loc-11 city-3-loc-10)
  
  ; 1918,2341 -> 1651,2235
  (road city-3-loc-10 city-3-loc-11)
  
  ; 1560,2901 -> 1542,2761
  (road city-3-loc-12 city-3-loc-1)
  
  ; 1542,2761 -> 1560,2901
  (road city-3-loc-1 city-3-loc-12)
  
  ; 1560,2901 -> 1453,2848
  (road city-3-loc-12 city-3-loc-4)
  
  ; 1453,2848 -> 1560,2901
  (road city-3-loc-4 city-3-loc-12)
  
  ; 1560,2901 -> 1645,2721
  (road city-3-loc-12 city-3-loc-5)
  
  ; 1645,2721 -> 1560,2901
  (road city-3-loc-5 city-3-loc-12)
  
  ; 1362,2940 -> 1542,2761
  (road city-3-loc-13 city-3-loc-1)
  
  ; 1542,2761 -> 1362,2940
  (road city-3-loc-1 city-3-loc-13)
  
  ; 1362,2940 -> 1453,2848
  (road city-3-loc-13 city-3-loc-4)
  
  ; 1453,2848 -> 1362,2940
  (road city-3-loc-4 city-3-loc-13)
  
  ; 1362,2940 -> 1645,2721
  (road city-3-loc-13 city-3-loc-5)
  
  ; 1645,2721 -> 1362,2940
  (road city-3-loc-5 city-3-loc-13)
  
  ; 1362,2940 -> 1560,2901
  (road city-3-loc-13 city-3-loc-12)
  
  ; 1560,2901 -> 1362,2940
  (road city-3-loc-12 city-3-loc-13)
  
  ; 1941,2734 -> 1645,2721
  (road city-3-loc-14 city-3-loc-5)
  
  ; 1645,2721 -> 1941,2734
  (road city-3-loc-5 city-3-loc-14)
  
  ; 930,259 <-> 2006,60
  (road city-1-loc-12 city-2-loc-2)
  
  (road city-2-loc-2 city-1-loc-12)
  
  (road city-1-loc-14 city-3-loc-12)
  
  (road city-3-loc-12 city-1-loc-14)
  
  (road city-2-loc-1 city-3-loc-9)
  
  (road city-3-loc-9 city-2-loc-1)
  
  (at package-1 city-2-loc-7)
  (at package-2 city-2-loc-8)
  (at package-3 city-3-loc-8)
  (at package-4 city-2-loc-9)
  (at package-5 city-2-loc-4)
  (at package-6 city-3-loc-10)
  (at package-7 city-1-loc-8)
  (at package-8 city-2-loc-14)
  (at package-9 city-3-loc-1)
  (at package-10 city-2-loc-3)
  (at package-11 city-2-loc-13)
  (at package-12 city-2-loc-11)
  (at package-13 city-2-loc-4)
  (at package-14 city-3-loc-8)
  (at truck-1 city-2-loc-14)
  (capacity truck-1 capacity-2)
  (at truck-2 city-3-loc-3)
  (capacity truck-2 capacity-2)
  (at truck-3 city-1-loc-11)
  (capacity truck-3 capacity-2)
  (at truck-4 city-1-loc-3)
  (capacity truck-4 capacity-3)
 )
 (:goal (and
  (at package-1 city-1-loc-8)
  (at package-2 city-2-loc-6)
  (at package-3 city-2-loc-5)
  (at package-4 city-1-loc-12)
  (at package-5 city-1-loc-14)
  (at package-6 city-3-loc-14)
  (at package-7 city-2-loc-13)
  (at package-8 city-3-loc-3)
  (at package-9 city-1-loc-14)
  (at package-10 city-3-loc-2)
  (at package-11 city-3-loc-13)
  (at package-12 city-3-loc-2)
  (at package-13 city-1-loc-3)
  (at package-14 city-2-loc-2)
 ))
 
)
