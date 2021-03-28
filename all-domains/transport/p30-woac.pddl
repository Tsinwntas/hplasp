; Transport three-cities-sequential-20nodes-1000size-4degree-100mindistance-4trucks-20packages-2008seed

(define (problem transport-three-cities-sequential-20nodes-1000size-4degree-100mindistance-4trucks-20packages-2008seed)
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
  city-1-loc-15 - location
  city-2-loc-15 - location
  city-3-loc-15 - location
  city-1-loc-16 - location
  city-2-loc-16 - location
  city-3-loc-16 - location
  city-1-loc-17 - location
  city-2-loc-17 - location
  city-3-loc-17 - location
  city-1-loc-18 - location
  city-2-loc-18 - location
  city-3-loc-18 - location
  city-1-loc-19 - location
  city-2-loc-19 - location
  city-3-loc-19 - location
  city-1-loc-20 - location
  city-2-loc-20 - location
  city-3-loc-20 - location
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
  package-15 - package
  package-16 - package
  package-17 - package
  package-18 - package
  package-19 - package
  package-20 - package
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
  
  ; 742,542 -> 890,543
  (road city-1-loc-7 city-1-loc-1)
  
  ; 890,543 -> 742,542
  (road city-1-loc-1 city-1-loc-7)
  
  ; 742,542 -> 748,385
  (road city-1-loc-7 city-1-loc-3)
  
  ; 748,385 -> 742,542
  (road city-1-loc-3 city-1-loc-7)
  
  ; 564,783 -> 742,542
  (road city-1-loc-8 city-1-loc-7)
  
  ; 742,542 -> 564,783
  (road city-1-loc-7 city-1-loc-8)
  
  ; 273,425 -> 456,221
  (road city-1-loc-9 city-1-loc-6)
  
  ; 456,221 -> 273,425
  (road city-1-loc-6 city-1-loc-9)
  
  ; 566,552 -> 748,385
  (road city-1-loc-10 city-1-loc-3)
  
  ; 748,385 -> 566,552
  (road city-1-loc-3 city-1-loc-10)
  
  ; 566,552 -> 742,542
  (road city-1-loc-10 city-1-loc-7)
  
  ; 742,542 -> 566,552
  (road city-1-loc-7 city-1-loc-10)
  
  ; 566,552 -> 564,783
  (road city-1-loc-10 city-1-loc-8)
  
  ; 564,783 -> 566,552
  (road city-1-loc-8 city-1-loc-10)
  
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
  
  ; 55,605 -> 273,425
  (road city-1-loc-13 city-1-loc-9)
  
  ; 273,425 -> 55,605
  (road city-1-loc-9 city-1-loc-13)
  
  ; 55,605 -> 174,643
  (road city-1-loc-13 city-1-loc-11)
  
  ; 174,643 -> 55,605
  (road city-1-loc-11 city-1-loc-13)
  
  ; 803,858 -> 912,799
  (road city-1-loc-14 city-1-loc-4)
  
  ; 912,799 -> 803,858
  (road city-1-loc-4 city-1-loc-14)
  
  ; 803,858 -> 977,899
  (road city-1-loc-14 city-1-loc-5)
  
  ; 977,899 -> 803,858
  (road city-1-loc-5 city-1-loc-14)
  
  ; 803,858 -> 564,783
  (road city-1-loc-14 city-1-loc-8)
  
  ; 564,783 -> 803,858
  (road city-1-loc-8 city-1-loc-14)
  
  ; 263,567 -> 273,425
  (road city-1-loc-15 city-1-loc-9)
  
  ; 273,425 -> 263,567
  (road city-1-loc-9 city-1-loc-15)
  
  ; 263,567 -> 174,643
  (road city-1-loc-15 city-1-loc-11)
  
  ; 174,643 -> 263,567
  (road city-1-loc-11 city-1-loc-15)
  
  ; 263,567 -> 55,605
  (road city-1-loc-15 city-1-loc-13)
  
  ; 55,605 -> 263,567
  (road city-1-loc-13 city-1-loc-15)
  
  ; 128,791 -> 174,643
  (road city-1-loc-16 city-1-loc-11)
  
  ; 174,643 -> 128,791
  (road city-1-loc-11 city-1-loc-16)
  
  ; 128,791 -> 55,605
  (road city-1-loc-16 city-1-loc-13)
  
  ; 55,605 -> 128,791
  (road city-1-loc-13 city-1-loc-16)
  
  ; 128,791 -> 263,567
  (road city-1-loc-16 city-1-loc-15)
  
  ; 263,567 -> 128,791
  (road city-1-loc-15 city-1-loc-16)
  
  ; 426,706 -> 564,783
  (road city-1-loc-17 city-1-loc-8)
  
  ; 564,783 -> 426,706
  (road city-1-loc-8 city-1-loc-17)
  
  ; 426,706 -> 566,552
  (road city-1-loc-17 city-1-loc-10)
  
  ; 566,552 -> 426,706
  (road city-1-loc-10 city-1-loc-17)
  
  ; 426,706 -> 174,643
  (road city-1-loc-17 city-1-loc-11)
  
  ; 174,643 -> 426,706
  (road city-1-loc-11 city-1-loc-17)
  
  ; 426,706 -> 263,567
  (road city-1-loc-17 city-1-loc-15)
  
  ; 263,567 -> 426,706
  (road city-1-loc-15 city-1-loc-17)
  
  ; 36,368 -> 273,425
  (road city-1-loc-18 city-1-loc-9)
  
  ; 273,425 -> 36,368
  (road city-1-loc-9 city-1-loc-18)
  
  ; 36,368 -> 55,605
  (road city-1-loc-18 city-1-loc-13)
  
  ; 55,605 -> 36,368
  (road city-1-loc-13 city-1-loc-18)
  
  ; 36,368 -> 263,567
  (road city-1-loc-18 city-1-loc-15)
  
  ; 263,567 -> 36,368
  (road city-1-loc-15 city-1-loc-18)
  
  ; 806,18 -> 930,259
  (road city-1-loc-19 city-1-loc-12)
  
  ; 930,259 -> 806,18
  (road city-1-loc-12 city-1-loc-19)
  
  ; 138,109 -> 384,50
  (road city-1-loc-20 city-1-loc-2)
  
  ; 384,50 -> 138,109
  (road city-1-loc-2 city-1-loc-20)
  
  ; 138,109 -> 36,368
  (road city-1-loc-20 city-1-loc-18)
  
  ; 36,368 -> 138,109
  (road city-1-loc-18 city-1-loc-20)
  
  ; 2058,770 -> 2231,881
  (road city-2-loc-7 city-2-loc-3)
  
  ; 2231,881 -> 2058,770
  (road city-2-loc-3 city-2-loc-7)
  
  ; 2988,202 -> 2989,457
  (road city-2-loc-8 city-2-loc-6)
  
  ; 2989,457 -> 2988,202
  (road city-2-loc-6 city-2-loc-8)
  
  ; 2589,754 -> 2842,866
  (road city-2-loc-9 city-2-loc-2)
  
  ; 2842,866 -> 2589,754
  (road city-2-loc-2 city-2-loc-9)
  
  ; 2053,153 -> 2013,291
  (road city-2-loc-10 city-2-loc-4)
  
  ; 2013,291 -> 2053,153
  (road city-2-loc-4 city-2-loc-10)
  
  ; 2362,862 -> 2231,881
  (road city-2-loc-11 city-2-loc-3)
  
  ; 2231,881 -> 2362,862
  (road city-2-loc-3 city-2-loc-11)
  
  ; 2362,862 -> 2589,754
  (road city-2-loc-11 city-2-loc-9)
  
  ; 2589,754 -> 2362,862
  (road city-2-loc-9 city-2-loc-11)
  
  ; 2006,60 -> 2013,291
  (road city-2-loc-12 city-2-loc-4)
  
  ; 2013,291 -> 2006,60
  (road city-2-loc-4 city-2-loc-12)
  
  ; 2006,60 -> 2053,153
  (road city-2-loc-12 city-2-loc-10)
  
  ; 2053,153 -> 2006,60
  (road city-2-loc-10 city-2-loc-12)
  
  ; 2659,497 -> 2392,433
  (road city-2-loc-13 city-2-loc-1)
  
  ; 2392,433 -> 2659,497
  (road city-2-loc-1 city-2-loc-13)
  
  ; 2659,497 -> 2589,754
  (road city-2-loc-13 city-2-loc-9)
  
  ; 2589,754 -> 2659,497
  (road city-2-loc-9 city-2-loc-13)
  
  ; 2257,5 -> 2053,153
  (road city-2-loc-14 city-2-loc-10)
  
  ; 2053,153 -> 2257,5
  (road city-2-loc-10 city-2-loc-14)
  
  ; 2257,5 -> 2006,60
  (road city-2-loc-14 city-2-loc-12)
  
  ; 2006,60 -> 2257,5
  (road city-2-loc-12 city-2-loc-14)
  
  ; 2245,346 -> 2392,433
  (road city-2-loc-15 city-2-loc-1)
  
  ; 2392,433 -> 2245,346
  (road city-2-loc-1 city-2-loc-15)
  
  ; 2245,346 -> 2013,291
  (road city-2-loc-15 city-2-loc-4)
  
  ; 2013,291 -> 2245,346
  (road city-2-loc-4 city-2-loc-15)
  
  ; 2245,346 -> 2053,153
  (road city-2-loc-15 city-2-loc-10)
  
  ; 2053,153 -> 2245,346
  (road city-2-loc-10 city-2-loc-15)
  
  ; 2559,565 -> 2392,433
  (road city-2-loc-16 city-2-loc-1)
  
  ; 2392,433 -> 2559,565
  (road city-2-loc-1 city-2-loc-16)
  
  ; 2559,565 -> 2589,754
  (road city-2-loc-16 city-2-loc-9)
  
  ; 2589,754 -> 2559,565
  (road city-2-loc-9 city-2-loc-16)
  
  ; 2559,565 -> 2659,497
  (road city-2-loc-16 city-2-loc-13)
  
  ; 2659,497 -> 2559,565
  (road city-2-loc-13 city-2-loc-16)
  
  ; 2347,149 -> 2392,433
  (road city-2-loc-17 city-2-loc-1)
  
  ; 2392,433 -> 2347,149
  (road city-2-loc-1 city-2-loc-17)
  
  ; 2347,149 -> 2053,153
  (road city-2-loc-17 city-2-loc-10)
  
  ; 2053,153 -> 2347,149
  (road city-2-loc-10 city-2-loc-17)
  
  ; 2347,149 -> 2257,5
  (road city-2-loc-17 city-2-loc-14)
  
  ; 2257,5 -> 2347,149
  (road city-2-loc-14 city-2-loc-17)
  
  ; 2347,149 -> 2245,346
  (road city-2-loc-17 city-2-loc-15)
  
  ; 2245,346 -> 2347,149
  (road city-2-loc-15 city-2-loc-17)
  
  ; 2170,709 -> 2231,881
  (road city-2-loc-18 city-2-loc-3)
  
  ; 2231,881 -> 2170,709
  (road city-2-loc-3 city-2-loc-18)
  
  ; 2170,709 -> 2058,770
  (road city-2-loc-18 city-2-loc-7)
  
  ; 2058,770 -> 2170,709
  (road city-2-loc-7 city-2-loc-18)
  
  ; 2170,709 -> 2362,862
  (road city-2-loc-18 city-2-loc-11)
  
  ; 2362,862 -> 2170,709
  (road city-2-loc-11 city-2-loc-18)
  
  ; 2521,375 -> 2392,433
  (road city-2-loc-19 city-2-loc-1)
  
  ; 2392,433 -> 2521,375
  (road city-2-loc-1 city-2-loc-19)
  
  ; 2521,375 -> 2659,497
  (road city-2-loc-19 city-2-loc-13)
  
  ; 2659,497 -> 2521,375
  (road city-2-loc-13 city-2-loc-19)
  
  ; 2521,375 -> 2245,346
  (road city-2-loc-19 city-2-loc-15)
  
  ; 2245,346 -> 2521,375
  (road city-2-loc-15 city-2-loc-19)
  
  ; 2521,375 -> 2559,565
  (road city-2-loc-19 city-2-loc-16)
  
  ; 2559,565 -> 2521,375
  (road city-2-loc-16 city-2-loc-19)
  
  ; 2521,375 -> 2347,149
  (road city-2-loc-19 city-2-loc-17)
  
  ; 2347,149 -> 2521,375
  (road city-2-loc-17 city-2-loc-19)
  
  ; 2720,241 -> 2682,8
  (road city-2-loc-20 city-2-loc-5)
  
  ; 2682,8 -> 2720,241
  (road city-2-loc-5 city-2-loc-20)
  
  ; 2720,241 -> 2988,202
  (road city-2-loc-20 city-2-loc-8)
  
  ; 2988,202 -> 2720,241
  (road city-2-loc-8 city-2-loc-20)
  
  ; 2720,241 -> 2659,497
  (road city-2-loc-20 city-2-loc-13)
  
  ; 2659,497 -> 2720,241
  (road city-2-loc-13 city-2-loc-20)
  
  ; 2720,241 -> 2521,375
  (road city-2-loc-20 city-2-loc-19)
  
  ; 2521,375 -> 2720,241
  (road city-2-loc-19 city-2-loc-20)
  
  ; 1651,2235 -> 1918,2341
  (road city-3-loc-2 city-3-loc-1)
  
  ; 1918,2341 -> 1651,2235
  (road city-3-loc-1 city-3-loc-2)
  
  ; 1447,2732 -> 1560,2901
  (road city-3-loc-4 city-3-loc-3)
  
  ; 1560,2901 -> 1447,2732
  (road city-3-loc-3 city-3-loc-4)
  
  ; 1663,2402 -> 1918,2341
  (road city-3-loc-5 city-3-loc-1)
  
  ; 1918,2341 -> 1663,2402
  (road city-3-loc-1 city-3-loc-5)
  
  ; 1663,2402 -> 1651,2235
  (road city-3-loc-5 city-3-loc-2)
  
  ; 1651,2235 -> 1663,2402
  (road city-3-loc-2 city-3-loc-5)
  
  ; 1362,2940 -> 1560,2901
  (road city-3-loc-6 city-3-loc-3)
  
  ; 1560,2901 -> 1362,2940
  (road city-3-loc-3 city-3-loc-6)
  
  ; 1362,2940 -> 1447,2732
  (road city-3-loc-6 city-3-loc-4)
  
  ; 1447,2732 -> 1362,2940
  (road city-3-loc-4 city-3-loc-6)
  
  ; 1508,2430 -> 1651,2235
  (road city-3-loc-8 city-3-loc-2)
  
  ; 1651,2235 -> 1508,2430
  (road city-3-loc-2 city-3-loc-8)
  
  ; 1508,2430 -> 1663,2402
  (road city-3-loc-8 city-3-loc-5)
  
  ; 1663,2402 -> 1508,2430
  (road city-3-loc-5 city-3-loc-8)
  
  ; 1653,2507 -> 1651,2235
  (road city-3-loc-9 city-3-loc-2)
  
  ; 1651,2235 -> 1653,2507
  (road city-3-loc-2 city-3-loc-9)
  
  ; 1653,2507 -> 1663,2402
  (road city-3-loc-9 city-3-loc-5)
  
  ; 1663,2402 -> 1653,2507
  (road city-3-loc-5 city-3-loc-9)
  
  ; 1653,2507 -> 1508,2430
  (road city-3-loc-9 city-3-loc-8)
  
  ; 1508,2430 -> 1653,2507
  (road city-3-loc-8 city-3-loc-9)
  
  ; 1820,2551 -> 1918,2341
  (road city-3-loc-10 city-3-loc-1)
  
  ; 1918,2341 -> 1820,2551
  (road city-3-loc-1 city-3-loc-10)
  
  ; 1820,2551 -> 1663,2402
  (road city-3-loc-10 city-3-loc-5)
  
  ; 1663,2402 -> 1820,2551
  (road city-3-loc-5 city-3-loc-10)
  
  ; 1820,2551 -> 1941,2734
  (road city-3-loc-10 city-3-loc-7)
  
  ; 1941,2734 -> 1820,2551
  (road city-3-loc-7 city-3-loc-10)
  
  ; 1820,2551 -> 1653,2507
  (road city-3-loc-10 city-3-loc-9)
  
  ; 1653,2507 -> 1820,2551
  (road city-3-loc-9 city-3-loc-10)
  
  ; 1437,2605 -> 1447,2732
  (road city-3-loc-11 city-3-loc-4)
  
  ; 1447,2732 -> 1437,2605
  (road city-3-loc-4 city-3-loc-11)
  
  ; 1437,2605 -> 1508,2430
  (road city-3-loc-11 city-3-loc-8)
  
  ; 1508,2430 -> 1437,2605
  (road city-3-loc-8 city-3-loc-11)
  
  ; 1437,2605 -> 1653,2507
  (road city-3-loc-11 city-3-loc-9)
  
  ; 1653,2507 -> 1437,2605
  (road city-3-loc-9 city-3-loc-11)
  
  ; 1497,2244 -> 1651,2235
  (road city-3-loc-12 city-3-loc-2)
  
  ; 1651,2235 -> 1497,2244
  (road city-3-loc-2 city-3-loc-12)
  
  ; 1497,2244 -> 1663,2402
  (road city-3-loc-12 city-3-loc-5)
  
  ; 1663,2402 -> 1497,2244
  (road city-3-loc-5 city-3-loc-12)
  
  ; 1497,2244 -> 1508,2430
  (road city-3-loc-12 city-3-loc-8)
  
  ; 1508,2430 -> 1497,2244
  (road city-3-loc-8 city-3-loc-12)
  
  ; 1305,2509 -> 1447,2732
  (road city-3-loc-13 city-3-loc-4)
  
  ; 1447,2732 -> 1305,2509
  (road city-3-loc-4 city-3-loc-13)
  
  ; 1305,2509 -> 1508,2430
  (road city-3-loc-13 city-3-loc-8)
  
  ; 1508,2430 -> 1305,2509
  (road city-3-loc-8 city-3-loc-13)
  
  ; 1305,2509 -> 1437,2605
  (road city-3-loc-13 city-3-loc-11)
  
  ; 1437,2605 -> 1305,2509
  (road city-3-loc-11 city-3-loc-13)
  
  ; 1731,2024 -> 1651,2235
  (road city-3-loc-14 city-3-loc-2)
  
  ; 1651,2235 -> 1731,2024
  (road city-3-loc-2 city-3-loc-14)
  
  ; 1463,2927 -> 1560,2901
  (road city-3-loc-15 city-3-loc-3)
  
  ; 1560,2901 -> 1463,2927
  (road city-3-loc-3 city-3-loc-15)
  
  ; 1463,2927 -> 1447,2732
  (road city-3-loc-15 city-3-loc-4)
  
  ; 1447,2732 -> 1463,2927
  (road city-3-loc-4 city-3-loc-15)
  
  ; 1463,2927 -> 1362,2940
  (road city-3-loc-15 city-3-loc-6)
  
  ; 1362,2940 -> 1463,2927
  (road city-3-loc-6 city-3-loc-15)
  
  ; 1281,2709 -> 1447,2732
  (road city-3-loc-16 city-3-loc-4)
  
  ; 1447,2732 -> 1281,2709
  (road city-3-loc-4 city-3-loc-16)
  
  ; 1281,2709 -> 1362,2940
  (road city-3-loc-16 city-3-loc-6)
  
  ; 1362,2940 -> 1281,2709
  (road city-3-loc-6 city-3-loc-16)
  
  ; 1281,2709 -> 1437,2605
  (road city-3-loc-16 city-3-loc-11)
  
  ; 1437,2605 -> 1281,2709
  (road city-3-loc-11 city-3-loc-16)
  
  ; 1281,2709 -> 1305,2509
  (road city-3-loc-16 city-3-loc-13)
  
  ; 1305,2509 -> 1281,2709
  (road city-3-loc-13 city-3-loc-16)
  
  ; 1281,2709 -> 1463,2927
  (road city-3-loc-16 city-3-loc-15)
  
  ; 1463,2927 -> 1281,2709
  (road city-3-loc-15 city-3-loc-16)
  
  ; 1205,2275 -> 1497,2244
  (road city-3-loc-17 city-3-loc-12)
  
  ; 1497,2244 -> 1205,2275
  (road city-3-loc-12 city-3-loc-17)
  
  ; 1205,2275 -> 1305,2509
  (road city-3-loc-17 city-3-loc-13)
  
  ; 1305,2509 -> 1205,2275
  (road city-3-loc-13 city-3-loc-17)
  
  ; 1119,2757 -> 1281,2709
  (road city-3-loc-18 city-3-loc-16)
  
  ; 1281,2709 -> 1119,2757
  (road city-3-loc-16 city-3-loc-18)
  
  ; 1179,2400 -> 1305,2509
  (road city-3-loc-19 city-3-loc-13)
  
  ; 1305,2509 -> 1179,2400
  (road city-3-loc-13 city-3-loc-19)
  
  ; 1179,2400 -> 1205,2275
  (road city-3-loc-19 city-3-loc-17)
  
  ; 1205,2275 -> 1179,2400
  (road city-3-loc-17 city-3-loc-19)
  
  ; 1015,2529 -> 1305,2509
  (road city-3-loc-20 city-3-loc-13)
  
  ; 1305,2509 -> 1015,2529
  (road city-3-loc-13 city-3-loc-20)
  
  ; 1015,2529 -> 1119,2757
  (road city-3-loc-20 city-3-loc-18)
  
  ; 1119,2757 -> 1015,2529
  (road city-3-loc-18 city-3-loc-20)
  
  ; 1015,2529 -> 1179,2400
  (road city-3-loc-20 city-3-loc-19)
  
  ; 1179,2400 -> 1015,2529
  (road city-3-loc-19 city-3-loc-20)
  
  ; 930,259 <-> 2013,291
  (road city-1-loc-12 city-2-loc-4)
  
  (road city-2-loc-4 city-1-loc-12)
  
  (road city-1-loc-18 city-3-loc-12)
  
  (road city-3-loc-12 city-1-loc-18)
  
  (road city-2-loc-19 city-3-loc-18)
  
  (road city-3-loc-18 city-2-loc-19)
  
  (at package-1 city-2-loc-8)
  (at package-2 city-2-loc-7)
  (at package-3 city-1-loc-17)
  (at package-4 city-1-loc-19)
  (at package-5 city-3-loc-19)
  (at package-6 city-2-loc-19)
  (at package-7 city-3-loc-4)
  (at package-8 city-1-loc-20)
  (at package-9 city-3-loc-3)
  (at package-10 city-3-loc-18)
  (at package-11 city-3-loc-3)
  (at package-12 city-1-loc-4)
  (at package-13 city-2-loc-3)
  (at package-14 city-2-loc-9)
  (at package-15 city-2-loc-5)
  (at package-16 city-2-loc-10)
  (at package-17 city-2-loc-3)
  (at package-18 city-3-loc-1)
  (at package-19 city-1-loc-10)
  (at package-20 city-3-loc-20)
  (at truck-1 city-1-loc-18)
  (capacity truck-1 capacity-3)
  (at truck-2 city-2-loc-15)
  (capacity truck-2 capacity-2)
  (at truck-3 city-2-loc-9)
  (capacity truck-3 capacity-4)
  (at truck-4 city-1-loc-14)
  (capacity truck-4 capacity-3)
 )
 (:goal (and
  (at package-1 city-2-loc-1)
  (at package-2 city-2-loc-2)
  (at package-3 city-1-loc-6)
  (at package-4 city-3-loc-18)
  (at package-5 city-2-loc-16)
  (at package-6 city-2-loc-11)
  (at package-7 city-2-loc-20)
  (at package-8 city-1-loc-14)
  (at package-9 city-2-loc-2)
  (at package-10 city-1-loc-13)
  (at package-11 city-1-loc-7)
  (at package-12 city-2-loc-4)
  (at package-13 city-1-loc-1)
  (at package-14 city-1-loc-10)
  (at package-15 city-1-loc-11)
  (at package-16 city-1-loc-5)
  (at package-17 city-1-loc-14)
  (at package-18 city-2-loc-6)
  (at package-19 city-1-loc-13)
  (at package-20 city-1-loc-19)
 ))
 
)
