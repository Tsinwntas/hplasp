; Transport two-cities-sequential-30nodes-1000size-4degree-100mindistance-4trucks-20packages-2008seed

(define (problem transport-two-cities-sequential-30nodes-1000size-4degree-100mindistance-4trucks-20packages-2008seed)
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
  city-1-loc-25 - location
  city-2-loc-25 - location
  city-1-loc-26 - location
  city-2-loc-26 - location
  city-1-loc-27 - location
  city-2-loc-27 - location
  city-1-loc-28 - location
  city-2-loc-28 - location
  city-1-loc-29 - location
  city-2-loc-29 - location
  city-1-loc-30 - location
  city-2-loc-30 - location
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
  ; 120,854 -> 200,669
  (road city-1-loc-4 city-1-loc-2)
  
  ; 200,669 -> 120,854
  (road city-1-loc-2 city-1-loc-4)
  
  ; 377,283 -> 490,285
  (road city-1-loc-5 city-1-loc-1)
  
  ; 490,285 -> 377,283
  (road city-1-loc-1 city-1-loc-5)
  
  ; 171,545 -> 200,669
  (road city-1-loc-6 city-1-loc-2)
  
  ; 200,669 -> 171,545
  (road city-1-loc-2 city-1-loc-6)
  
  ; 348,607 -> 200,669
  (road city-1-loc-7 city-1-loc-2)
  
  ; 200,669 -> 348,607
  (road city-1-loc-2 city-1-loc-7)
  
  ; 348,607 -> 171,545
  (road city-1-loc-7 city-1-loc-6)
  
  ; 171,545 -> 348,607
  (road city-1-loc-6 city-1-loc-7)
  
  ; 395,741 -> 200,669
  (road city-1-loc-8 city-1-loc-2)
  
  ; 200,669 -> 395,741
  (road city-1-loc-2 city-1-loc-8)
  
  ; 395,741 -> 630,722
  (road city-1-loc-8 city-1-loc-3)
  
  ; 630,722 -> 395,741
  (road city-1-loc-3 city-1-loc-8)
  
  ; 395,741 -> 348,607
  (road city-1-loc-8 city-1-loc-7)
  
  ; 348,607 -> 395,741
  (road city-1-loc-7 city-1-loc-8)
  
  ; 69,508 -> 200,669
  (road city-1-loc-11 city-1-loc-2)
  
  ; 200,669 -> 69,508
  (road city-1-loc-2 city-1-loc-11)
  
  ; 69,508 -> 171,545
  (road city-1-loc-11 city-1-loc-6)
  
  ; 171,545 -> 69,508
  (road city-1-loc-6 city-1-loc-11)
  
  ; 69,508 -> 71,275
  (road city-1-loc-11 city-1-loc-9)
  
  ; 71,275 -> 69,508
  (road city-1-loc-9 city-1-loc-11)
  
  ; 203,987 -> 120,854
  (road city-1-loc-12 city-1-loc-4)
  
  ; 120,854 -> 203,987
  (road city-1-loc-4 city-1-loc-12)
  
  ; 551,602 -> 630,722
  (road city-1-loc-14 city-1-loc-3)
  
  ; 630,722 -> 551,602
  (road city-1-loc-3 city-1-loc-14)
  
  ; 551,602 -> 348,607
  (road city-1-loc-14 city-1-loc-7)
  
  ; 348,607 -> 551,602
  (road city-1-loc-7 city-1-loc-14)
  
  ; 551,602 -> 395,741
  (road city-1-loc-14 city-1-loc-8)
  
  ; 395,741 -> 551,602
  (road city-1-loc-8 city-1-loc-14)
  
  ; 366,457 -> 490,285
  (road city-1-loc-15 city-1-loc-1)
  
  ; 490,285 -> 366,457
  (road city-1-loc-1 city-1-loc-15)
  
  ; 366,457 -> 377,283
  (road city-1-loc-15 city-1-loc-5)
  
  ; 377,283 -> 366,457
  (road city-1-loc-5 city-1-loc-15)
  
  ; 366,457 -> 171,545
  (road city-1-loc-15 city-1-loc-6)
  
  ; 171,545 -> 366,457
  (road city-1-loc-6 city-1-loc-15)
  
  ; 366,457 -> 348,607
  (road city-1-loc-15 city-1-loc-7)
  
  ; 348,607 -> 366,457
  (road city-1-loc-7 city-1-loc-15)
  
  ; 366,457 -> 551,602
  (road city-1-loc-15 city-1-loc-14)
  
  ; 551,602 -> 366,457
  (road city-1-loc-14 city-1-loc-15)
  
  ; 453,848 -> 630,722
  (road city-1-loc-16 city-1-loc-3)
  
  ; 630,722 -> 453,848
  (road city-1-loc-3 city-1-loc-16)
  
  ; 453,848 -> 395,741
  (road city-1-loc-16 city-1-loc-8)
  
  ; 395,741 -> 453,848
  (road city-1-loc-8 city-1-loc-16)
  
  ; 614,343 -> 490,285
  (road city-1-loc-17 city-1-loc-1)
  
  ; 490,285 -> 614,343
  (road city-1-loc-1 city-1-loc-17)
  
  ; 614,343 -> 377,283
  (road city-1-loc-17 city-1-loc-5)
  
  ; 377,283 -> 614,343
  (road city-1-loc-5 city-1-loc-17)
  
  ; 936,210 -> 858,139
  (road city-1-loc-18 city-1-loc-10)
  
  ; 858,139 -> 936,210
  (road city-1-loc-10 city-1-loc-18)
  
  ; 193,424 -> 200,669
  (road city-1-loc-19 city-1-loc-2)
  
  ; 200,669 -> 193,424
  (road city-1-loc-2 city-1-loc-19)
  
  ; 193,424 -> 377,283
  (road city-1-loc-19 city-1-loc-5)
  
  ; 377,283 -> 193,424
  (road city-1-loc-5 city-1-loc-19)
  
  ; 193,424 -> 171,545
  (road city-1-loc-19 city-1-loc-6)
  
  ; 171,545 -> 193,424
  (road city-1-loc-6 city-1-loc-19)
  
  ; 193,424 -> 348,607
  (road city-1-loc-19 city-1-loc-7)
  
  ; 348,607 -> 193,424
  (road city-1-loc-7 city-1-loc-19)
  
  ; 193,424 -> 71,275
  (road city-1-loc-19 city-1-loc-9)
  
  ; 71,275 -> 193,424
  (road city-1-loc-9 city-1-loc-19)
  
  ; 193,424 -> 69,508
  (road city-1-loc-19 city-1-loc-11)
  
  ; 69,508 -> 193,424
  (road city-1-loc-11 city-1-loc-19)
  
  ; 193,424 -> 366,457
  (road city-1-loc-19 city-1-loc-15)
  
  ; 366,457 -> 193,424
  (road city-1-loc-15 city-1-loc-19)
  
  ; 480,435 -> 490,285
  (road city-1-loc-20 city-1-loc-1)
  
  ; 490,285 -> 480,435
  (road city-1-loc-1 city-1-loc-20)
  
  ; 480,435 -> 377,283
  (road city-1-loc-20 city-1-loc-5)
  
  ; 377,283 -> 480,435
  (road city-1-loc-5 city-1-loc-20)
  
  ; 480,435 -> 348,607
  (road city-1-loc-20 city-1-loc-7)
  
  ; 348,607 -> 480,435
  (road city-1-loc-7 city-1-loc-20)
  
  ; 480,435 -> 551,602
  (road city-1-loc-20 city-1-loc-14)
  
  ; 551,602 -> 480,435
  (road city-1-loc-14 city-1-loc-20)
  
  ; 480,435 -> 366,457
  (road city-1-loc-20 city-1-loc-15)
  
  ; 366,457 -> 480,435
  (road city-1-loc-15 city-1-loc-20)
  
  ; 480,435 -> 614,343
  (road city-1-loc-20 city-1-loc-17)
  
  ; 614,343 -> 480,435
  (road city-1-loc-17 city-1-loc-20)
  
  ; 918,341 -> 858,139
  (road city-1-loc-21 city-1-loc-10)
  
  ; 858,139 -> 918,341
  (road city-1-loc-10 city-1-loc-21)
  
  ; 918,341 -> 936,210
  (road city-1-loc-21 city-1-loc-18)
  
  ; 936,210 -> 918,341
  (road city-1-loc-18 city-1-loc-21)
  
  ; 651,235 -> 490,285
  (road city-1-loc-22 city-1-loc-1)
  
  ; 490,285 -> 651,235
  (road city-1-loc-1 city-1-loc-22)
  
  ; 651,235 -> 858,139
  (road city-1-loc-22 city-1-loc-10)
  
  ; 858,139 -> 651,235
  (road city-1-loc-10 city-1-loc-22)
  
  ; 651,235 -> 614,343
  (road city-1-loc-22 city-1-loc-17)
  
  ; 614,343 -> 651,235
  (road city-1-loc-17 city-1-loc-22)
  
  ; 560,901 -> 630,722
  (road city-1-loc-23 city-1-loc-3)
  
  ; 630,722 -> 560,901
  (road city-1-loc-3 city-1-loc-23)
  
  ; 560,901 -> 395,741
  (road city-1-loc-23 city-1-loc-8)
  
  ; 395,741 -> 560,901
  (road city-1-loc-8 city-1-loc-23)
  
  ; 560,901 -> 453,848
  (road city-1-loc-23 city-1-loc-16)
  
  ; 453,848 -> 560,901
  (road city-1-loc-16 city-1-loc-23)
  
  ; 362,940 -> 395,741
  (road city-1-loc-24 city-1-loc-8)
  
  ; 395,741 -> 362,940
  (road city-1-loc-8 city-1-loc-24)
  
  ; 362,940 -> 203,987
  (road city-1-loc-24 city-1-loc-12)
  
  ; 203,987 -> 362,940
  (road city-1-loc-12 city-1-loc-24)
  
  ; 362,940 -> 453,848
  (road city-1-loc-24 city-1-loc-16)
  
  ; 453,848 -> 362,940
  (road city-1-loc-16 city-1-loc-24)
  
  ; 362,940 -> 560,901
  (road city-1-loc-24 city-1-loc-23)
  
  ; 560,901 -> 362,940
  (road city-1-loc-23 city-1-loc-24)
  
  ; 941,734 -> 968,863
  (road city-1-loc-25 city-1-loc-13)
  
  ; 968,863 -> 941,734
  (road city-1-loc-13 city-1-loc-25)
  
  ; 653,507 -> 630,722
  (road city-1-loc-26 city-1-loc-3)
  
  ; 630,722 -> 653,507
  (road city-1-loc-3 city-1-loc-26)
  
  ; 653,507 -> 551,602
  (road city-1-loc-26 city-1-loc-14)
  
  ; 551,602 -> 653,507
  (road city-1-loc-14 city-1-loc-26)
  
  ; 653,507 -> 614,343
  (road city-1-loc-26 city-1-loc-17)
  
  ; 614,343 -> 653,507
  (road city-1-loc-17 city-1-loc-26)
  
  ; 653,507 -> 480,435
  (road city-1-loc-26 city-1-loc-20)
  
  ; 480,435 -> 653,507
  (road city-1-loc-20 city-1-loc-26)
  
  ; 820,551 -> 918,341
  (road city-1-loc-27 city-1-loc-21)
  
  ; 918,341 -> 820,551
  (road city-1-loc-21 city-1-loc-27)
  
  ; 820,551 -> 941,734
  (road city-1-loc-27 city-1-loc-25)
  
  ; 941,734 -> 820,551
  (road city-1-loc-25 city-1-loc-27)
  
  ; 820,551 -> 653,507
  (road city-1-loc-27 city-1-loc-26)
  
  ; 653,507 -> 820,551
  (road city-1-loc-26 city-1-loc-27)
  
  ; 731,24 -> 858,139
  (road city-1-loc-28 city-1-loc-10)
  
  ; 858,139 -> 731,24
  (road city-1-loc-10 city-1-loc-28)
  
  ; 731,24 -> 651,235
  (road city-1-loc-28 city-1-loc-22)
  
  ; 651,235 -> 731,24
  (road city-1-loc-22 city-1-loc-28)
  
  ; 452,192 -> 490,285
  (road city-1-loc-29 city-1-loc-1)
  
  ; 490,285 -> 452,192
  (road city-1-loc-1 city-1-loc-29)
  
  ; 452,192 -> 377,283
  (road city-1-loc-29 city-1-loc-5)
  
  ; 377,283 -> 452,192
  (road city-1-loc-5 city-1-loc-29)
  
  ; 452,192 -> 614,343
  (road city-1-loc-29 city-1-loc-17)
  
  ; 614,343 -> 452,192
  (road city-1-loc-17 city-1-loc-29)
  
  ; 452,192 -> 480,435
  (road city-1-loc-29 city-1-loc-20)
  
  ; 480,435 -> 452,192
  (road city-1-loc-20 city-1-loc-29)
  
  ; 452,192 -> 651,235
  (road city-1-loc-29 city-1-loc-22)
  
  ; 651,235 -> 452,192
  (road city-1-loc-22 city-1-loc-29)
  
  ; 205,275 -> 377,283
  (road city-1-loc-30 city-1-loc-5)
  
  ; 377,283 -> 205,275
  (road city-1-loc-5 city-1-loc-30)
  
  ; 205,275 -> 71,275
  (road city-1-loc-30 city-1-loc-9)
  
  ; 71,275 -> 205,275
  (road city-1-loc-9 city-1-loc-30)
  
  ; 205,275 -> 366,457
  (road city-1-loc-30 city-1-loc-15)
  
  ; 366,457 -> 205,275
  (road city-1-loc-15 city-1-loc-30)
  
  ; 205,275 -> 193,424
  (road city-1-loc-30 city-1-loc-19)
  
  ; 193,424 -> 205,275
  (road city-1-loc-19 city-1-loc-30)
  
  ; 2179,400 -> 2267,217
  (road city-2-loc-3 city-2-loc-2)
  
  ; 2267,217 -> 2179,400
  (road city-2-loc-2 city-2-loc-3)
  
  ; 2015,529 -> 2179,400
  (road city-2-loc-4 city-2-loc-3)
  
  ; 2179,400 -> 2015,529
  (road city-2-loc-3 city-2-loc-4)
  
  ; 2342,393 -> 2267,217
  (road city-2-loc-5 city-2-loc-2)
  
  ; 2267,217 -> 2342,393
  (road city-2-loc-2 city-2-loc-5)
  
  ; 2342,393 -> 2179,400
  (road city-2-loc-5 city-2-loc-3)
  
  ; 2179,400 -> 2342,393
  (road city-2-loc-3 city-2-loc-5)
  
  ; 2256,802 -> 2119,757
  (road city-2-loc-7 city-2-loc-1)
  
  ; 2119,757 -> 2256,802
  (road city-2-loc-1 city-2-loc-7)
  
  ; 2188,934 -> 2119,757
  (road city-2-loc-8 city-2-loc-1)
  
  ; 2119,757 -> 2188,934
  (road city-2-loc-1 city-2-loc-8)
  
  ; 2188,934 -> 2256,802
  (road city-2-loc-8 city-2-loc-7)
  
  ; 2256,802 -> 2188,934
  (road city-2-loc-7 city-2-loc-8)
  
  ; 2660,909 -> 2776,948
  (road city-2-loc-10 city-2-loc-9)
  
  ; 2776,948 -> 2660,909
  (road city-2-loc-9 city-2-loc-10)
  
  ; 2914,881 -> 2776,948
  (road city-2-loc-12 city-2-loc-9)
  
  ; 2776,948 -> 2914,881
  (road city-2-loc-9 city-2-loc-12)
  
  ; 2599,133 -> 2612,304
  (road city-2-loc-13 city-2-loc-6)
  
  ; 2612,304 -> 2599,133
  (road city-2-loc-6 city-2-loc-13)
  
  ; 2549,437 -> 2342,393
  (road city-2-loc-14 city-2-loc-5)
  
  ; 2342,393 -> 2549,437
  (road city-2-loc-5 city-2-loc-14)
  
  ; 2549,437 -> 2612,304
  (road city-2-loc-14 city-2-loc-6)
  
  ; 2612,304 -> 2549,437
  (road city-2-loc-6 city-2-loc-14)
  
  ; 2870,18 -> 2916,162
  (road city-2-loc-15 city-2-loc-11)
  
  ; 2916,162 -> 2870,18
  (road city-2-loc-11 city-2-loc-15)
  
  ; 2063,862 -> 2119,757
  (road city-2-loc-16 city-2-loc-1)
  
  ; 2119,757 -> 2063,862
  (road city-2-loc-1 city-2-loc-16)
  
  ; 2063,862 -> 2256,802
  (road city-2-loc-16 city-2-loc-7)
  
  ; 2256,802 -> 2063,862
  (road city-2-loc-7 city-2-loc-16)
  
  ; 2063,862 -> 2188,934
  (road city-2-loc-16 city-2-loc-8)
  
  ; 2188,934 -> 2063,862
  (road city-2-loc-8 city-2-loc-16)
  
  ; 2365,569 -> 2342,393
  (road city-2-loc-17 city-2-loc-5)
  
  ; 2342,393 -> 2365,569
  (road city-2-loc-5 city-2-loc-17)
  
  ; 2365,569 -> 2549,437
  (road city-2-loc-17 city-2-loc-14)
  
  ; 2549,437 -> 2365,569
  (road city-2-loc-14 city-2-loc-17)
  
  ; 2720,128 -> 2612,304
  (road city-2-loc-18 city-2-loc-6)
  
  ; 2612,304 -> 2720,128
  (road city-2-loc-6 city-2-loc-18)
  
  ; 2720,128 -> 2916,162
  (road city-2-loc-18 city-2-loc-11)
  
  ; 2916,162 -> 2720,128
  (road city-2-loc-11 city-2-loc-18)
  
  ; 2720,128 -> 2599,133
  (road city-2-loc-18 city-2-loc-13)
  
  ; 2599,133 -> 2720,128
  (road city-2-loc-13 city-2-loc-18)
  
  ; 2720,128 -> 2870,18
  (road city-2-loc-18 city-2-loc-15)
  
  ; 2870,18 -> 2720,128
  (road city-2-loc-15 city-2-loc-18)
  
  ; 2683,505 -> 2612,304
  (road city-2-loc-19 city-2-loc-6)
  
  ; 2612,304 -> 2683,505
  (road city-2-loc-6 city-2-loc-19)
  
  ; 2683,505 -> 2549,437
  (road city-2-loc-19 city-2-loc-14)
  
  ; 2549,437 -> 2683,505
  (road city-2-loc-14 city-2-loc-19)
  
  ; 2369,18 -> 2267,217
  (road city-2-loc-20 city-2-loc-2)
  
  ; 2267,217 -> 2369,18
  (road city-2-loc-2 city-2-loc-20)
  
  ; 2639,796 -> 2776,948
  (road city-2-loc-21 city-2-loc-9)
  
  ; 2776,948 -> 2639,796
  (road city-2-loc-9 city-2-loc-21)
  
  ; 2639,796 -> 2660,909
  (road city-2-loc-21 city-2-loc-10)
  
  ; 2660,909 -> 2639,796
  (road city-2-loc-10 city-2-loc-21)
  
  ; 2442,989 -> 2660,909
  (road city-2-loc-22 city-2-loc-10)
  
  ; 2660,909 -> 2442,989
  (road city-2-loc-10 city-2-loc-22)
  
  ; 2056,658 -> 2119,757
  (road city-2-loc-23 city-2-loc-1)
  
  ; 2119,757 -> 2056,658
  (road city-2-loc-1 city-2-loc-23)
  
  ; 2056,658 -> 2015,529
  (road city-2-loc-23 city-2-loc-4)
  
  ; 2015,529 -> 2056,658
  (road city-2-loc-4 city-2-loc-23)
  
  ; 2056,658 -> 2256,802
  (road city-2-loc-23 city-2-loc-7)
  
  ; 2256,802 -> 2056,658
  (road city-2-loc-7 city-2-loc-23)
  
  ; 2056,658 -> 2063,862
  (road city-2-loc-23 city-2-loc-16)
  
  ; 2063,862 -> 2056,658
  (road city-2-loc-16 city-2-loc-23)
  
  ; 2520,51 -> 2599,133
  (road city-2-loc-24 city-2-loc-13)
  
  ; 2599,133 -> 2520,51
  (road city-2-loc-13 city-2-loc-24)
  
  ; 2520,51 -> 2720,128
  (road city-2-loc-24 city-2-loc-18)
  
  ; 2720,128 -> 2520,51
  (road city-2-loc-18 city-2-loc-24)
  
  ; 2520,51 -> 2369,18
  (road city-2-loc-24 city-2-loc-20)
  
  ; 2369,18 -> 2520,51
  (road city-2-loc-20 city-2-loc-24)
  
  ; 2488,155 -> 2267,217
  (road city-2-loc-25 city-2-loc-2)
  
  ; 2267,217 -> 2488,155
  (road city-2-loc-2 city-2-loc-25)
  
  ; 2488,155 -> 2612,304
  (road city-2-loc-25 city-2-loc-6)
  
  ; 2612,304 -> 2488,155
  (road city-2-loc-6 city-2-loc-25)
  
  ; 2488,155 -> 2599,133
  (road city-2-loc-25 city-2-loc-13)
  
  ; 2599,133 -> 2488,155
  (road city-2-loc-13 city-2-loc-25)
  
  ; 2488,155 -> 2720,128
  (road city-2-loc-25 city-2-loc-18)
  
  ; 2720,128 -> 2488,155
  (road city-2-loc-18 city-2-loc-25)
  
  ; 2488,155 -> 2369,18
  (road city-2-loc-25 city-2-loc-20)
  
  ; 2369,18 -> 2488,155
  (road city-2-loc-20 city-2-loc-25)
  
  ; 2488,155 -> 2520,51
  (road city-2-loc-25 city-2-loc-24)
  
  ; 2520,51 -> 2488,155
  (road city-2-loc-24 city-2-loc-25)
  
  ; 2160,40 -> 2267,217
  (road city-2-loc-26 city-2-loc-2)
  
  ; 2267,217 -> 2160,40
  (road city-2-loc-2 city-2-loc-26)
  
  ; 2160,40 -> 2369,18
  (road city-2-loc-26 city-2-loc-20)
  
  ; 2369,18 -> 2160,40
  (road city-2-loc-20 city-2-loc-26)
  
  ; 2221,510 -> 2179,400
  (road city-2-loc-27 city-2-loc-3)
  
  ; 2179,400 -> 2221,510
  (road city-2-loc-3 city-2-loc-27)
  
  ; 2221,510 -> 2015,529
  (road city-2-loc-27 city-2-loc-4)
  
  ; 2015,529 -> 2221,510
  (road city-2-loc-4 city-2-loc-27)
  
  ; 2221,510 -> 2342,393
  (road city-2-loc-27 city-2-loc-5)
  
  ; 2342,393 -> 2221,510
  (road city-2-loc-5 city-2-loc-27)
  
  ; 2221,510 -> 2365,569
  (road city-2-loc-27 city-2-loc-17)
  
  ; 2365,569 -> 2221,510
  (road city-2-loc-17 city-2-loc-27)
  
  ; 2221,510 -> 2056,658
  (road city-2-loc-27 city-2-loc-23)
  
  ; 2056,658 -> 2221,510
  (road city-2-loc-23 city-2-loc-27)
  
  ; 2135,236 -> 2267,217
  (road city-2-loc-28 city-2-loc-2)
  
  ; 2267,217 -> 2135,236
  (road city-2-loc-2 city-2-loc-28)
  
  ; 2135,236 -> 2179,400
  (road city-2-loc-28 city-2-loc-3)
  
  ; 2179,400 -> 2135,236
  (road city-2-loc-3 city-2-loc-28)
  
  ; 2135,236 -> 2160,40
  (road city-2-loc-28 city-2-loc-26)
  
  ; 2160,40 -> 2135,236
  (road city-2-loc-26 city-2-loc-28)
  
  ; 2300,931 -> 2256,802
  (road city-2-loc-29 city-2-loc-7)
  
  ; 2256,802 -> 2300,931
  (road city-2-loc-7 city-2-loc-29)
  
  ; 2300,931 -> 2188,934
  (road city-2-loc-29 city-2-loc-8)
  
  ; 2188,934 -> 2300,931
  (road city-2-loc-8 city-2-loc-29)
  
  ; 2300,931 -> 2063,862
  (road city-2-loc-29 city-2-loc-16)
  
  ; 2063,862 -> 2300,931
  (road city-2-loc-16 city-2-loc-29)
  
  ; 2300,931 -> 2442,989
  (road city-2-loc-29 city-2-loc-22)
  
  ; 2442,989 -> 2300,931
  (road city-2-loc-22 city-2-loc-29)
  
  ; 2701,682 -> 2660,909
  (road city-2-loc-30 city-2-loc-10)
  
  ; 2660,909 -> 2701,682
  (road city-2-loc-10 city-2-loc-30)
  
  ; 2701,682 -> 2683,505
  (road city-2-loc-30 city-2-loc-19)
  
  ; 2683,505 -> 2701,682
  (road city-2-loc-19 city-2-loc-30)
  
  ; 2701,682 -> 2639,796
  (road city-2-loc-30 city-2-loc-21)
  
  ; 2639,796 -> 2701,682
  (road city-2-loc-21 city-2-loc-30)
  
  ; 941,734 <-> 2015,529
  (road city-1-loc-25 city-2-loc-4)
  
  (road city-2-loc-4 city-1-loc-25)
  
  (at package-1 city-1-loc-2)
  (at package-2 city-1-loc-17)
  (at package-3 city-1-loc-26)
  (at package-4 city-1-loc-1)
  (at package-5 city-1-loc-5)
  (at package-6 city-1-loc-13)
  (at package-7 city-1-loc-2)
  (at package-8 city-1-loc-25)
  (at package-9 city-1-loc-29)
  (at package-10 city-1-loc-6)
  (at package-11 city-1-loc-21)
  (at package-12 city-1-loc-24)
  (at package-13 city-1-loc-3)
  (at package-14 city-1-loc-11)
  (at package-15 city-1-loc-26)
  (at package-16 city-1-loc-14)
  (at package-17 city-1-loc-25)
  (at package-18 city-1-loc-25)
  (at package-19 city-1-loc-27)
  (at package-20 city-1-loc-10)
  (at truck-1 city-2-loc-9)
  (capacity truck-1 capacity-3)
  (at truck-2 city-2-loc-23)
  (capacity truck-2 capacity-2)
  (at truck-3 city-2-loc-9)
  (capacity truck-3 capacity-2)
  (at truck-4 city-2-loc-27)
  (capacity truck-4 capacity-4)
 )
 (:goal (and
  (at package-1 city-2-loc-8)
  (at package-2 city-2-loc-14)
  (at package-3 city-2-loc-10)
  (at package-4 city-2-loc-18)
  (at package-5 city-2-loc-29)
  (at package-6 city-2-loc-9)
  (at package-7 city-2-loc-16)
  (at package-8 city-2-loc-15)
  (at package-9 city-2-loc-15)
  (at package-10 city-2-loc-18)
  (at package-11 city-2-loc-26)
  (at package-12 city-2-loc-26)
  (at package-13 city-2-loc-13)
  (at package-14 city-2-loc-3)
  (at package-15 city-2-loc-26)
  (at package-16 city-2-loc-22)
  (at package-17 city-2-loc-17)
  (at package-18 city-2-loc-11)
  (at package-19 city-2-loc-26)
  (at package-20 city-2-loc-17)
 ))
 
)
