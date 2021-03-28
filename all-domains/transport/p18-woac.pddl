; Transport two-cities-sequential-24nodes-1000size-4degree-100mindistance-4trucks-16packages-2008seed

(define (problem transport-two-cities-sequential-24nodes-1000size-4degree-100mindistance-4trucks-16packages-2008seed)
 (:domain transport)
 (:objects
  city-1-loc-1 - location
  city-2-loc-1 - location
  city-1-loc-2 - location
  city-2-loc-2 - location
  city-1-loc-3 - location
  city-2-loc-3 - location
  city-1-loc-4 - location
  city-2-loc-4 - location
  city-1-loc-5 - location
  city-2-loc-5 - location
  city-1-loc-6 - location
  city-2-loc-6 - location
  city-1-loc-7 - location
  city-2-loc-7 - location
  city-1-loc-8 - location
  city-2-loc-8 - location
  city-1-loc-9 - location
  city-2-loc-9 - location
  city-1-loc-10 - location
  city-2-loc-10 - location
  city-1-loc-11 - location
  city-2-loc-11 - location
  city-1-loc-12 - location
  city-2-loc-12 - location
  city-1-loc-13 - location
  city-2-loc-13 - location
  city-1-loc-14 - location
  city-2-loc-14 - location
  city-1-loc-15 - location
  city-2-loc-15 - location
  city-1-loc-16 - location
  city-2-loc-16 - location
  city-1-loc-17 - location
  city-2-loc-17 - location
  city-1-loc-18 - location
  city-2-loc-18 - location
  city-1-loc-19 - location
  city-2-loc-19 - location
  city-1-loc-20 - location
  city-2-loc-20 - location
  city-1-loc-21 - location
  city-2-loc-21 - location
  city-1-loc-22 - location
  city-2-loc-22 - location
  city-1-loc-23 - location
  city-2-loc-23 - location
  city-1-loc-24 - location
  city-2-loc-24 - location
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
  
  ; 930,259 -> 748,385
  (road city-1-loc-12 city-1-loc-3)
  
  ; 748,385 -> 930,259
  (road city-1-loc-3 city-1-loc-12)
  
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
  
  ; 806,18 -> 930,259
  (road city-1-loc-19 city-1-loc-12)
  
  ; 930,259 -> 806,18
  (road city-1-loc-12 city-1-loc-19)
  
  ; 138,109 -> 384,50
  (road city-1-loc-20 city-1-loc-2)
  
  ; 384,50 -> 138,109
  (road city-1-loc-2 city-1-loc-20)
  
  ; 392,433 -> 456,221
  (road city-1-loc-21 city-1-loc-6)
  
  ; 456,221 -> 392,433
  (road city-1-loc-6 city-1-loc-21)
  
  ; 392,433 -> 273,425
  (road city-1-loc-21 city-1-loc-9)
  
  ; 273,425 -> 392,433
  (road city-1-loc-9 city-1-loc-21)
  
  ; 392,433 -> 566,552
  (road city-1-loc-21 city-1-loc-10)
  
  ; 566,552 -> 392,433
  (road city-1-loc-10 city-1-loc-21)
  
  ; 392,433 -> 263,567
  (road city-1-loc-21 city-1-loc-15)
  
  ; 263,567 -> 392,433
  (road city-1-loc-15 city-1-loc-21)
  
  ; 392,433 -> 426,706
  (road city-1-loc-21 city-1-loc-17)
  
  ; 426,706 -> 392,433
  (road city-1-loc-17 city-1-loc-21)
  
  ; 231,881 -> 174,643
  (road city-1-loc-22 city-1-loc-11)
  
  ; 174,643 -> 231,881
  (road city-1-loc-11 city-1-loc-22)
  
  ; 231,881 -> 128,791
  (road city-1-loc-22 city-1-loc-16)
  
  ; 128,791 -> 231,881
  (road city-1-loc-16 city-1-loc-22)
  
  ; 231,881 -> 426,706
  (road city-1-loc-22 city-1-loc-17)
  
  ; 426,706 -> 231,881
  (road city-1-loc-17 city-1-loc-22)
  
  ; 682,8 -> 806,18
  (road city-1-loc-23 city-1-loc-19)
  
  ; 806,18 -> 682,8
  (road city-1-loc-19 city-1-loc-23)
  
  ; 989,457 -> 890,543
  (road city-1-loc-24 city-1-loc-1)
  
  ; 890,543 -> 989,457
  (road city-1-loc-1 city-1-loc-24)
  
  ; 989,457 -> 748,385
  (road city-1-loc-24 city-1-loc-3)
  
  ; 748,385 -> 989,457
  (road city-1-loc-3 city-1-loc-24)
  
  ; 989,457 -> 742,542
  (road city-1-loc-24 city-1-loc-7)
  
  ; 742,542 -> 989,457
  (road city-1-loc-7 city-1-loc-24)
  
  ; 989,457 -> 930,259
  (road city-1-loc-24 city-1-loc-12)
  
  ; 930,259 -> 989,457
  (road city-1-loc-12 city-1-loc-24)
  
  ; 2362,862 -> 2589,754
  (road city-2-loc-5 city-2-loc-3)
  
  ; 2589,754 -> 2362,862
  (road city-2-loc-3 city-2-loc-5)
  
  ; 2748,863 -> 2589,754
  (road city-2-loc-6 city-2-loc-3)
  
  ; 2589,754 -> 2748,863
  (road city-2-loc-3 city-2-loc-6)
  
  ; 2006,60 -> 2053,153
  (road city-2-loc-7 city-2-loc-4)
  
  ; 2053,153 -> 2006,60
  (road city-2-loc-4 city-2-loc-7)
  
  ; 2659,497 -> 2589,754
  (road city-2-loc-8 city-2-loc-3)
  
  ; 2589,754 -> 2659,497
  (road city-2-loc-3 city-2-loc-8)
  
  ; 2257,5 -> 2053,153
  (road city-2-loc-9 city-2-loc-4)
  
  ; 2053,153 -> 2257,5
  (road city-2-loc-4 city-2-loc-9)
  
  ; 2257,5 -> 2006,60
  (road city-2-loc-9 city-2-loc-7)
  
  ; 2006,60 -> 2257,5
  (road city-2-loc-7 city-2-loc-9)
  
  ; 2245,346 -> 2053,153
  (road city-2-loc-10 city-2-loc-4)
  
  ; 2053,153 -> 2245,346
  (road city-2-loc-4 city-2-loc-10)
  
  ; 2559,565 -> 2589,754
  (road city-2-loc-11 city-2-loc-3)
  
  ; 2589,754 -> 2559,565
  (road city-2-loc-3 city-2-loc-11)
  
  ; 2559,565 -> 2659,497
  (road city-2-loc-11 city-2-loc-8)
  
  ; 2659,497 -> 2559,565
  (road city-2-loc-8 city-2-loc-11)
  
  ; 2347,149 -> 2257,5
  (road city-2-loc-12 city-2-loc-9)
  
  ; 2257,5 -> 2347,149
  (road city-2-loc-9 city-2-loc-12)
  
  ; 2347,149 -> 2245,346
  (road city-2-loc-12 city-2-loc-10)
  
  ; 2245,346 -> 2347,149
  (road city-2-loc-10 city-2-loc-12)
  
  ; 2336,475 -> 2245,346
  (road city-2-loc-13 city-2-loc-10)
  
  ; 2245,346 -> 2336,475
  (road city-2-loc-10 city-2-loc-13)
  
  ; 2336,475 -> 2559,565
  (road city-2-loc-13 city-2-loc-11)
  
  ; 2559,565 -> 2336,475
  (road city-2-loc-11 city-2-loc-13)
  
  ; 2170,709 -> 2058,770
  (road city-2-loc-14 city-2-loc-1)
  
  ; 2058,770 -> 2170,709
  (road city-2-loc-1 city-2-loc-14)
  
  ; 2170,709 -> 2362,862
  (road city-2-loc-14 city-2-loc-5)
  
  ; 2362,862 -> 2170,709
  (road city-2-loc-5 city-2-loc-14)
  
  ; 2521,375 -> 2659,497
  (road city-2-loc-15 city-2-loc-8)
  
  ; 2659,497 -> 2521,375
  (road city-2-loc-8 city-2-loc-15)
  
  ; 2521,375 -> 2559,565
  (road city-2-loc-15 city-2-loc-11)
  
  ; 2559,565 -> 2521,375
  (road city-2-loc-11 city-2-loc-15)
  
  ; 2521,375 -> 2336,475
  (road city-2-loc-15 city-2-loc-13)
  
  ; 2336,475 -> 2521,375
  (road city-2-loc-13 city-2-loc-15)
  
  ; 2720,241 -> 2988,202
  (road city-2-loc-17 city-2-loc-2)
  
  ; 2988,202 -> 2720,241
  (road city-2-loc-2 city-2-loc-17)
  
  ; 2720,241 -> 2659,497
  (road city-2-loc-17 city-2-loc-8)
  
  ; 2659,497 -> 2720,241
  (road city-2-loc-8 city-2-loc-17)
  
  ; 2720,241 -> 2521,375
  (road city-2-loc-17 city-2-loc-15)
  
  ; 2521,375 -> 2720,241
  (road city-2-loc-15 city-2-loc-17)
  
  ; 2720,241 -> 2701,0
  (road city-2-loc-17 city-2-loc-16)
  
  ; 2701,0 -> 2720,241
  (road city-2-loc-16 city-2-loc-17)
  
  ; 2120,854 -> 2058,770
  (road city-2-loc-18 city-2-loc-1)
  
  ; 2058,770 -> 2120,854
  (road city-2-loc-1 city-2-loc-18)
  
  ; 2120,854 -> 2362,862
  (road city-2-loc-18 city-2-loc-5)
  
  ; 2362,862 -> 2120,854
  (road city-2-loc-5 city-2-loc-18)
  
  ; 2120,854 -> 2170,709
  (road city-2-loc-18 city-2-loc-14)
  
  ; 2170,709 -> 2120,854
  (road city-2-loc-14 city-2-loc-18)
  
  ; 2377,283 -> 2245,346
  (road city-2-loc-19 city-2-loc-10)
  
  ; 2245,346 -> 2377,283
  (road city-2-loc-10 city-2-loc-19)
  
  ; 2377,283 -> 2347,149
  (road city-2-loc-19 city-2-loc-12)
  
  ; 2347,149 -> 2377,283
  (road city-2-loc-12 city-2-loc-19)
  
  ; 2377,283 -> 2336,475
  (road city-2-loc-19 city-2-loc-13)
  
  ; 2336,475 -> 2377,283
  (road city-2-loc-13 city-2-loc-19)
  
  ; 2377,283 -> 2521,375
  (road city-2-loc-19 city-2-loc-15)
  
  ; 2521,375 -> 2377,283
  (road city-2-loc-15 city-2-loc-19)
  
  ; 2171,545 -> 2058,770
  (road city-2-loc-20 city-2-loc-1)
  
  ; 2058,770 -> 2171,545
  (road city-2-loc-1 city-2-loc-20)
  
  ; 2171,545 -> 2245,346
  (road city-2-loc-20 city-2-loc-10)
  
  ; 2245,346 -> 2171,545
  (road city-2-loc-10 city-2-loc-20)
  
  ; 2171,545 -> 2336,475
  (road city-2-loc-20 city-2-loc-13)
  
  ; 2336,475 -> 2171,545
  (road city-2-loc-13 city-2-loc-20)
  
  ; 2171,545 -> 2170,709
  (road city-2-loc-20 city-2-loc-14)
  
  ; 2170,709 -> 2171,545
  (road city-2-loc-14 city-2-loc-20)
  
  ; 2348,607 -> 2362,862
  (road city-2-loc-21 city-2-loc-5)
  
  ; 2362,862 -> 2348,607
  (road city-2-loc-5 city-2-loc-21)
  
  ; 2348,607 -> 2559,565
  (road city-2-loc-21 city-2-loc-11)
  
  ; 2559,565 -> 2348,607
  (road city-2-loc-11 city-2-loc-21)
  
  ; 2348,607 -> 2336,475
  (road city-2-loc-21 city-2-loc-13)
  
  ; 2336,475 -> 2348,607
  (road city-2-loc-13 city-2-loc-21)
  
  ; 2348,607 -> 2170,709
  (road city-2-loc-21 city-2-loc-14)
  
  ; 2170,709 -> 2348,607
  (road city-2-loc-14 city-2-loc-21)
  
  ; 2348,607 -> 2171,545
  (road city-2-loc-21 city-2-loc-20)
  
  ; 2171,545 -> 2348,607
  (road city-2-loc-20 city-2-loc-21)
  
  ; 2395,741 -> 2589,754
  (road city-2-loc-22 city-2-loc-3)
  
  ; 2589,754 -> 2395,741
  (road city-2-loc-3 city-2-loc-22)
  
  ; 2395,741 -> 2362,862
  (road city-2-loc-22 city-2-loc-5)
  
  ; 2362,862 -> 2395,741
  (road city-2-loc-5 city-2-loc-22)
  
  ; 2395,741 -> 2559,565
  (road city-2-loc-22 city-2-loc-11)
  
  ; 2559,565 -> 2395,741
  (road city-2-loc-11 city-2-loc-22)
  
  ; 2395,741 -> 2336,475
  (road city-2-loc-22 city-2-loc-13)
  
  ; 2336,475 -> 2395,741
  (road city-2-loc-13 city-2-loc-22)
  
  ; 2395,741 -> 2170,709
  (road city-2-loc-22 city-2-loc-14)
  
  ; 2170,709 -> 2395,741
  (road city-2-loc-14 city-2-loc-22)
  
  ; 2395,741 -> 2348,607
  (road city-2-loc-22 city-2-loc-21)
  
  ; 2348,607 -> 2395,741
  (road city-2-loc-21 city-2-loc-22)
  
  ; 2643,669 -> 2589,754
  (road city-2-loc-23 city-2-loc-3)
  
  ; 2589,754 -> 2643,669
  (road city-2-loc-3 city-2-loc-23)
  
  ; 2643,669 -> 2748,863
  (road city-2-loc-23 city-2-loc-6)
  
  ; 2748,863 -> 2643,669
  (road city-2-loc-6 city-2-loc-23)
  
  ; 2643,669 -> 2659,497
  (road city-2-loc-23 city-2-loc-8)
  
  ; 2659,497 -> 2643,669
  (road city-2-loc-8 city-2-loc-23)
  
  ; 2643,669 -> 2559,565
  (road city-2-loc-23 city-2-loc-11)
  
  ; 2559,565 -> 2643,669
  (road city-2-loc-11 city-2-loc-23)
  
  ; 2643,669 -> 2395,741
  (road city-2-loc-23 city-2-loc-22)
  
  ; 2395,741 -> 2643,669
  (road city-2-loc-22 city-2-loc-23)
  
  ; 2071,275 -> 2053,153
  (road city-2-loc-24 city-2-loc-4)
  
  ; 2053,153 -> 2071,275
  (road city-2-loc-4 city-2-loc-24)
  
  ; 2071,275 -> 2006,60
  (road city-2-loc-24 city-2-loc-7)
  
  ; 2006,60 -> 2071,275
  (road city-2-loc-7 city-2-loc-24)
  
  ; 2071,275 -> 2245,346
  (road city-2-loc-24 city-2-loc-10)
  
  ; 2245,346 -> 2071,275
  (road city-2-loc-10 city-2-loc-24)
  
  ; 977,899 <-> 2058,770
  (road city-1-loc-5 city-2-loc-1)
  
  (road city-2-loc-1 city-1-loc-5)
  
  (at package-1 city-1-loc-21)
  (at package-2 city-1-loc-4)
  (at package-3 city-1-loc-2)
  (at package-4 city-1-loc-13)
  (at package-5 city-1-loc-5)
  (at package-6 city-1-loc-24)
  (at package-7 city-1-loc-7)
  (at package-8 city-1-loc-16)
  (at package-9 city-1-loc-10)
  (at package-10 city-1-loc-5)
  (at package-11 city-1-loc-24)
  (at package-12 city-1-loc-21)
  (at package-13 city-1-loc-14)
  (at package-14 city-1-loc-15)
  (at package-15 city-1-loc-9)
  (at package-16 city-1-loc-11)
  (at truck-1 city-2-loc-5)
  (capacity truck-1 capacity-4)
  (at truck-2 city-2-loc-14)
  (capacity truck-2 capacity-4)
  (at truck-3 city-2-loc-22)
  (capacity truck-3 capacity-2)
  (at truck-4 city-2-loc-8)
  (capacity truck-4 capacity-3)
 )
 (:goal (and
  (at package-1 city-2-loc-11)
  (at package-2 city-2-loc-21)
  (at package-3 city-2-loc-21)
  (at package-4 city-2-loc-2)
  (at package-5 city-2-loc-16)
  (at package-6 city-2-loc-18)
  (at package-7 city-2-loc-15)
  (at package-8 city-2-loc-9)
  (at package-9 city-2-loc-23)
  (at package-10 city-2-loc-6)
  (at package-11 city-2-loc-5)
  (at package-12 city-2-loc-11)
  (at package-13 city-2-loc-15)
  (at package-14 city-2-loc-18)
  (at package-15 city-2-loc-12)
  (at package-16 city-2-loc-11)
 ))
 
)
