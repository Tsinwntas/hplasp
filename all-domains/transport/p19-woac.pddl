; Transport two-cities-sequential-27nodes-1000size-4degree-100mindistance-4trucks-18packages-2008seed

(define (problem transport-two-cities-sequential-27nodes-1000size-4degree-100mindistance-4trucks-18packages-2008seed)
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
  ; 305,509 -> 437,605
  (road city-1-loc-4 city-1-loc-2)
  
  ; 437,605 -> 305,509
  (road city-1-loc-2 city-1-loc-4)
  
  ; 463,927 -> 339,962
  (road city-1-loc-7 city-1-loc-5)
  
  ; 339,962 -> 463,927
  (road city-1-loc-5 city-1-loc-7)
  
  ; 486,752 -> 437,605
  (road city-1-loc-8 city-1-loc-2)
  
  ; 437,605 -> 486,752
  (road city-1-loc-2 city-1-loc-8)
  
  ; 486,752 -> 339,962
  (road city-1-loc-8 city-1-loc-5)
  
  ; 339,962 -> 486,752
  (road city-1-loc-5 city-1-loc-8)
  
  ; 486,752 -> 463,927
  (road city-1-loc-8 city-1-loc-7)
  
  ; 463,927 -> 486,752
  (road city-1-loc-7 city-1-loc-8)
  
  ; 281,709 -> 437,605
  (road city-1-loc-9 city-1-loc-2)
  
  ; 437,605 -> 281,709
  (road city-1-loc-2 city-1-loc-9)
  
  ; 281,709 -> 305,509
  (road city-1-loc-9 city-1-loc-4)
  
  ; 305,509 -> 281,709
  (road city-1-loc-4 city-1-loc-9)
  
  ; 281,709 -> 339,962
  (road city-1-loc-9 city-1-loc-5)
  
  ; 339,962 -> 281,709
  (road city-1-loc-5 city-1-loc-9)
  
  ; 281,709 -> 486,752
  (road city-1-loc-9 city-1-loc-8)
  
  ; 486,752 -> 281,709
  (road city-1-loc-8 city-1-loc-9)
  
  ; 205,275 -> 305,509
  (road city-1-loc-10 city-1-loc-4)
  
  ; 305,509 -> 205,275
  (road city-1-loc-4 city-1-loc-10)
  
  ; 119,757 -> 281,709
  (road city-1-loc-11 city-1-loc-9)
  
  ; 281,709 -> 119,757
  (road city-1-loc-9 city-1-loc-11)
  
  ; 179,400 -> 305,509
  (road city-1-loc-12 city-1-loc-4)
  
  ; 305,509 -> 179,400
  (road city-1-loc-4 city-1-loc-12)
  
  ; 179,400 -> 205,275
  (road city-1-loc-12 city-1-loc-10)
  
  ; 205,275 -> 179,400
  (road city-1-loc-10 city-1-loc-12)
  
  ; 15,529 -> 119,757
  (road city-1-loc-13 city-1-loc-11)
  
  ; 119,757 -> 15,529
  (road city-1-loc-11 city-1-loc-13)
  
  ; 15,529 -> 179,400
  (road city-1-loc-13 city-1-loc-12)
  
  ; 179,400 -> 15,529
  (road city-1-loc-12 city-1-loc-13)
  
  ; 342,393 -> 437,605
  (road city-1-loc-14 city-1-loc-2)
  
  ; 437,605 -> 342,393
  (road city-1-loc-2 city-1-loc-14)
  
  ; 342,393 -> 497,244
  (road city-1-loc-14 city-1-loc-3)
  
  ; 497,244 -> 342,393
  (road city-1-loc-3 city-1-loc-14)
  
  ; 342,393 -> 305,509
  (road city-1-loc-14 city-1-loc-4)
  
  ; 305,509 -> 342,393
  (road city-1-loc-4 city-1-loc-14)
  
  ; 342,393 -> 205,275
  (road city-1-loc-14 city-1-loc-10)
  
  ; 205,275 -> 342,393
  (road city-1-loc-10 city-1-loc-14)
  
  ; 342,393 -> 179,400
  (road city-1-loc-14 city-1-loc-12)
  
  ; 179,400 -> 342,393
  (road city-1-loc-12 city-1-loc-14)
  
  ; 612,304 -> 497,244
  (road city-1-loc-15 city-1-loc-3)
  
  ; 497,244 -> 612,304
  (road city-1-loc-3 city-1-loc-15)
  
  ; 188,934 -> 339,962
  (road city-1-loc-16 city-1-loc-5)
  
  ; 339,962 -> 188,934
  (road city-1-loc-5 city-1-loc-16)
  
  ; 188,934 -> 281,709
  (road city-1-loc-16 city-1-loc-9)
  
  ; 281,709 -> 188,934
  (road city-1-loc-9 city-1-loc-16)
  
  ; 188,934 -> 119,757
  (road city-1-loc-16 city-1-loc-11)
  
  ; 119,757 -> 188,934
  (road city-1-loc-11 city-1-loc-16)
  
  ; 660,909 -> 463,927
  (road city-1-loc-18 city-1-loc-7)
  
  ; 463,927 -> 660,909
  (road city-1-loc-7 city-1-loc-18)
  
  ; 660,909 -> 486,752
  (road city-1-loc-18 city-1-loc-8)
  
  ; 486,752 -> 660,909
  (road city-1-loc-8 city-1-loc-18)
  
  ; 660,909 -> 776,948
  (road city-1-loc-18 city-1-loc-17)
  
  ; 776,948 -> 660,909
  (road city-1-loc-17 city-1-loc-18)
  
  ; 916,162 -> 731,24
  (road city-1-loc-19 city-1-loc-6)
  
  ; 731,24 -> 916,162
  (road city-1-loc-6 city-1-loc-19)
  
  ; 914,881 -> 776,948
  (road city-1-loc-20 city-1-loc-17)
  
  ; 776,948 -> 914,881
  (road city-1-loc-17 city-1-loc-20)
  
  ; 914,881 -> 660,909
  (road city-1-loc-20 city-1-loc-18)
  
  ; 660,909 -> 914,881
  (road city-1-loc-18 city-1-loc-20)
  
  ; 331,195 -> 497,244
  (road city-1-loc-21 city-1-loc-3)
  
  ; 497,244 -> 331,195
  (road city-1-loc-3 city-1-loc-21)
  
  ; 331,195 -> 205,275
  (road city-1-loc-21 city-1-loc-10)
  
  ; 205,275 -> 331,195
  (road city-1-loc-10 city-1-loc-21)
  
  ; 331,195 -> 179,400
  (road city-1-loc-21 city-1-loc-12)
  
  ; 179,400 -> 331,195
  (road city-1-loc-12 city-1-loc-21)
  
  ; 331,195 -> 342,393
  (road city-1-loc-21 city-1-loc-14)
  
  ; 342,393 -> 331,195
  (road city-1-loc-14 city-1-loc-21)
  
  ; 599,133 -> 497,244
  (road city-1-loc-22 city-1-loc-3)
  
  ; 497,244 -> 599,133
  (road city-1-loc-3 city-1-loc-22)
  
  ; 599,133 -> 731,24
  (road city-1-loc-22 city-1-loc-6)
  
  ; 731,24 -> 599,133
  (road city-1-loc-6 city-1-loc-22)
  
  ; 599,133 -> 612,304
  (road city-1-loc-22 city-1-loc-15)
  
  ; 612,304 -> 599,133
  (road city-1-loc-15 city-1-loc-22)
  
  ; 549,437 -> 437,605
  (road city-1-loc-23 city-1-loc-2)
  
  ; 437,605 -> 549,437
  (road city-1-loc-2 city-1-loc-23)
  
  ; 549,437 -> 497,244
  (road city-1-loc-23 city-1-loc-3)
  
  ; 497,244 -> 549,437
  (road city-1-loc-3 city-1-loc-23)
  
  ; 549,437 -> 305,509
  (road city-1-loc-23 city-1-loc-4)
  
  ; 305,509 -> 549,437
  (road city-1-loc-4 city-1-loc-23)
  
  ; 549,437 -> 342,393
  (road city-1-loc-23 city-1-loc-14)
  
  ; 342,393 -> 549,437
  (road city-1-loc-14 city-1-loc-23)
  
  ; 549,437 -> 612,304
  (road city-1-loc-23 city-1-loc-15)
  
  ; 612,304 -> 549,437
  (road city-1-loc-15 city-1-loc-23)
  
  ; 870,18 -> 731,24
  (road city-1-loc-24 city-1-loc-6)
  
  ; 731,24 -> 870,18
  (road city-1-loc-6 city-1-loc-24)
  
  ; 870,18 -> 916,162
  (road city-1-loc-24 city-1-loc-19)
  
  ; 916,162 -> 870,18
  (road city-1-loc-19 city-1-loc-24)
  
  ; 63,862 -> 119,757
  (road city-1-loc-25 city-1-loc-11)
  
  ; 119,757 -> 63,862
  (road city-1-loc-11 city-1-loc-25)
  
  ; 63,862 -> 188,934
  (road city-1-loc-25 city-1-loc-16)
  
  ; 188,934 -> 63,862
  (road city-1-loc-16 city-1-loc-25)
  
  ; 720,128 -> 497,244
  (road city-1-loc-26 city-1-loc-3)
  
  ; 497,244 -> 720,128
  (road city-1-loc-3 city-1-loc-26)
  
  ; 720,128 -> 731,24
  (road city-1-loc-26 city-1-loc-6)
  
  ; 731,24 -> 720,128
  (road city-1-loc-6 city-1-loc-26)
  
  ; 720,128 -> 612,304
  (road city-1-loc-26 city-1-loc-15)
  
  ; 612,304 -> 720,128
  (road city-1-loc-15 city-1-loc-26)
  
  ; 720,128 -> 916,162
  (road city-1-loc-26 city-1-loc-19)
  
  ; 916,162 -> 720,128
  (road city-1-loc-19 city-1-loc-26)
  
  ; 720,128 -> 599,133
  (road city-1-loc-26 city-1-loc-22)
  
  ; 599,133 -> 720,128
  (road city-1-loc-22 city-1-loc-26)
  
  ; 720,128 -> 870,18
  (road city-1-loc-26 city-1-loc-24)
  
  ; 870,18 -> 720,128
  (road city-1-loc-24 city-1-loc-26)
  
  ; 683,505 -> 820,551
  (road city-1-loc-27 city-1-loc-1)
  
  ; 820,551 -> 683,505
  (road city-1-loc-1 city-1-loc-27)
  
  ; 683,505 -> 612,304
  (road city-1-loc-27 city-1-loc-15)
  
  ; 612,304 -> 683,505
  (road city-1-loc-15 city-1-loc-27)
  
  ; 683,505 -> 549,437
  (road city-1-loc-27 city-1-loc-23)
  
  ; 549,437 -> 683,505
  (road city-1-loc-23 city-1-loc-27)
  
  ; 2273,257 -> 2226,402
  (road city-2-loc-4 city-2-loc-3)
  
  ; 2226,402 -> 2273,257
  (road city-2-loc-3 city-2-loc-4)
  
  ; 2176,638 -> 2226,402
  (road city-2-loc-6 city-2-loc-3)
  
  ; 2226,402 -> 2176,638
  (road city-2-loc-3 city-2-loc-6)
  
  ; 2734,59 -> 2857,48
  (road city-2-loc-7 city-2-loc-5)
  
  ; 2857,48 -> 2734,59
  (road city-2-loc-5 city-2-loc-7)
  
  ; 2543,725 -> 2603,892
  (road city-2-loc-9 city-2-loc-1)
  
  ; 2603,892 -> 2543,725
  (road city-2-loc-1 city-2-loc-9)
  
  ; 2830,807 -> 2603,892
  (road city-2-loc-10 city-2-loc-1)
  
  ; 2603,892 -> 2830,807
  (road city-2-loc-1 city-2-loc-10)
  
  ; 2097,811 -> 2176,638
  (road city-2-loc-11 city-2-loc-6)
  
  ; 2176,638 -> 2097,811
  (road city-2-loc-6 city-2-loc-11)
  
  ; 2658,777 -> 2603,892
  (road city-2-loc-12 city-2-loc-1)
  
  ; 2603,892 -> 2658,777
  (road city-2-loc-1 city-2-loc-12)
  
  ; 2658,777 -> 2543,725
  (road city-2-loc-12 city-2-loc-9)
  
  ; 2543,725 -> 2658,777
  (road city-2-loc-9 city-2-loc-12)
  
  ; 2658,777 -> 2830,807
  (road city-2-loc-12 city-2-loc-10)
  
  ; 2830,807 -> 2658,777
  (road city-2-loc-10 city-2-loc-12)
  
  ; 2484,821 -> 2603,892
  (road city-2-loc-13 city-2-loc-1)
  
  ; 2603,892 -> 2484,821
  (road city-2-loc-1 city-2-loc-13)
  
  ; 2484,821 -> 2543,725
  (road city-2-loc-13 city-2-loc-9)
  
  ; 2543,725 -> 2484,821
  (road city-2-loc-9 city-2-loc-13)
  
  ; 2484,821 -> 2658,777
  (road city-2-loc-13 city-2-loc-12)
  
  ; 2658,777 -> 2484,821
  (road city-2-loc-12 city-2-loc-13)
  
  ; 2368,291 -> 2226,402
  (road city-2-loc-14 city-2-loc-3)
  
  ; 2226,402 -> 2368,291
  (road city-2-loc-3 city-2-loc-14)
  
  ; 2368,291 -> 2273,257
  (road city-2-loc-14 city-2-loc-4)
  
  ; 2273,257 -> 2368,291
  (road city-2-loc-4 city-2-loc-14)
  
  ; 2084,443 -> 2226,402
  (road city-2-loc-15 city-2-loc-3)
  
  ; 2226,402 -> 2084,443
  (road city-2-loc-3 city-2-loc-15)
  
  ; 2084,443 -> 2176,638
  (road city-2-loc-15 city-2-loc-6)
  
  ; 2176,638 -> 2084,443
  (road city-2-loc-6 city-2-loc-15)
  
  ; 2943,873 -> 2830,807
  (road city-2-loc-16 city-2-loc-10)
  
  ; 2830,807 -> 2943,873
  (road city-2-loc-10 city-2-loc-16)
  
  ; 2599,507 -> 2792,413
  (road city-2-loc-17 city-2-loc-8)
  
  ; 2792,413 -> 2599,507
  (road city-2-loc-8 city-2-loc-17)
  
  ; 2599,507 -> 2543,725
  (road city-2-loc-17 city-2-loc-9)
  
  ; 2543,725 -> 2599,507
  (road city-2-loc-9 city-2-loc-17)
  
  ; 2975,440 -> 2792,413
  (road city-2-loc-18 city-2-loc-8)
  
  ; 2792,413 -> 2975,440
  (road city-2-loc-8 city-2-loc-18)
  
  ; 2086,275 -> 2226,402
  (road city-2-loc-19 city-2-loc-3)
  
  ; 2226,402 -> 2086,275
  (road city-2-loc-3 city-2-loc-19)
  
  ; 2086,275 -> 2273,257
  (road city-2-loc-19 city-2-loc-4)
  
  ; 2273,257 -> 2086,275
  (road city-2-loc-4 city-2-loc-19)
  
  ; 2086,275 -> 2084,443
  (road city-2-loc-19 city-2-loc-15)
  
  ; 2084,443 -> 2086,275
  (road city-2-loc-15 city-2-loc-19)
  
  ; 2876,285 -> 2857,48
  (road city-2-loc-20 city-2-loc-5)
  
  ; 2857,48 -> 2876,285
  (road city-2-loc-5 city-2-loc-20)
  
  ; 2876,285 -> 2792,413
  (road city-2-loc-20 city-2-loc-8)
  
  ; 2792,413 -> 2876,285
  (road city-2-loc-8 city-2-loc-20)
  
  ; 2876,285 -> 2975,440
  (road city-2-loc-20 city-2-loc-18)
  
  ; 2975,440 -> 2876,285
  (road city-2-loc-18 city-2-loc-20)
  
  ; 2766,221 -> 2857,48
  (road city-2-loc-21 city-2-loc-5)
  
  ; 2857,48 -> 2766,221
  (road city-2-loc-5 city-2-loc-21)
  
  ; 2766,221 -> 2734,59
  (road city-2-loc-21 city-2-loc-7)
  
  ; 2734,59 -> 2766,221
  (road city-2-loc-7 city-2-loc-21)
  
  ; 2766,221 -> 2792,413
  (road city-2-loc-21 city-2-loc-8)
  
  ; 2792,413 -> 2766,221
  (road city-2-loc-8 city-2-loc-21)
  
  ; 2766,221 -> 2876,285
  (road city-2-loc-21 city-2-loc-20)
  
  ; 2876,285 -> 2766,221
  (road city-2-loc-20 city-2-loc-21)
  
  ; 2340,797 -> 2176,638
  (road city-2-loc-22 city-2-loc-6)
  
  ; 2176,638 -> 2340,797
  (road city-2-loc-6 city-2-loc-22)
  
  ; 2340,797 -> 2543,725
  (road city-2-loc-22 city-2-loc-9)
  
  ; 2543,725 -> 2340,797
  (road city-2-loc-9 city-2-loc-22)
  
  ; 2340,797 -> 2097,811
  (road city-2-loc-22 city-2-loc-11)
  
  ; 2097,811 -> 2340,797
  (road city-2-loc-11 city-2-loc-22)
  
  ; 2340,797 -> 2484,821
  (road city-2-loc-22 city-2-loc-13)
  
  ; 2484,821 -> 2340,797
  (road city-2-loc-13 city-2-loc-22)
  
  ; 2263,64 -> 2349,4
  (road city-2-loc-23 city-2-loc-2)
  
  ; 2349,4 -> 2263,64
  (road city-2-loc-2 city-2-loc-23)
  
  ; 2263,64 -> 2273,257
  (road city-2-loc-23 city-2-loc-4)
  
  ; 2273,257 -> 2263,64
  (road city-2-loc-4 city-2-loc-23)
  
  ; 2263,64 -> 2368,291
  (road city-2-loc-23 city-2-loc-14)
  
  ; 2368,291 -> 2263,64
  (road city-2-loc-14 city-2-loc-23)
  
  ; 2771,934 -> 2603,892
  (road city-2-loc-24 city-2-loc-1)
  
  ; 2603,892 -> 2771,934
  (road city-2-loc-1 city-2-loc-24)
  
  ; 2771,934 -> 2830,807
  (road city-2-loc-24 city-2-loc-10)
  
  ; 2830,807 -> 2771,934
  (road city-2-loc-10 city-2-loc-24)
  
  ; 2771,934 -> 2658,777
  (road city-2-loc-24 city-2-loc-12)
  
  ; 2658,777 -> 2771,934
  (road city-2-loc-12 city-2-loc-24)
  
  ; 2771,934 -> 2943,873
  (road city-2-loc-24 city-2-loc-16)
  
  ; 2943,873 -> 2771,934
  (road city-2-loc-16 city-2-loc-24)
  
  ; 2617,335 -> 2792,413
  (road city-2-loc-25 city-2-loc-8)
  
  ; 2792,413 -> 2617,335
  (road city-2-loc-8 city-2-loc-25)
  
  ; 2617,335 -> 2368,291
  (road city-2-loc-25 city-2-loc-14)
  
  ; 2368,291 -> 2617,335
  (road city-2-loc-14 city-2-loc-25)
  
  ; 2617,335 -> 2599,507
  (road city-2-loc-25 city-2-loc-17)
  
  ; 2599,507 -> 2617,335
  (road city-2-loc-17 city-2-loc-25)
  
  ; 2617,335 -> 2766,221
  (road city-2-loc-25 city-2-loc-21)
  
  ; 2766,221 -> 2617,335
  (road city-2-loc-21 city-2-loc-25)
  
  ; 2411,659 -> 2176,638
  (road city-2-loc-26 city-2-loc-6)
  
  ; 2176,638 -> 2411,659
  (road city-2-loc-6 city-2-loc-26)
  
  ; 2411,659 -> 2543,725
  (road city-2-loc-26 city-2-loc-9)
  
  ; 2543,725 -> 2411,659
  (road city-2-loc-9 city-2-loc-26)
  
  ; 2411,659 -> 2484,821
  (road city-2-loc-26 city-2-loc-13)
  
  ; 2484,821 -> 2411,659
  (road city-2-loc-13 city-2-loc-26)
  
  ; 2411,659 -> 2599,507
  (road city-2-loc-26 city-2-loc-17)
  
  ; 2599,507 -> 2411,659
  (road city-2-loc-17 city-2-loc-26)
  
  ; 2411,659 -> 2340,797
  (road city-2-loc-26 city-2-loc-22)
  
  ; 2340,797 -> 2411,659
  (road city-2-loc-22 city-2-loc-26)
  
  ; 2491,556 -> 2543,725
  (road city-2-loc-27 city-2-loc-9)
  
  ; 2543,725 -> 2491,556
  (road city-2-loc-9 city-2-loc-27)
  
  ; 2491,556 -> 2599,507
  (road city-2-loc-27 city-2-loc-17)
  
  ; 2599,507 -> 2491,556
  (road city-2-loc-17 city-2-loc-27)
  
  ; 2491,556 -> 2617,335
  (road city-2-loc-27 city-2-loc-25)
  
  ; 2617,335 -> 2491,556
  (road city-2-loc-25 city-2-loc-27)
  
  ; 2491,556 -> 2411,659
  (road city-2-loc-27 city-2-loc-26)
  
  ; 2411,659 -> 2491,556
  (road city-2-loc-26 city-2-loc-27)
  
  ; 916,162 <-> 2086,275
  (road city-1-loc-19 city-2-loc-19)
  
  (road city-2-loc-19 city-1-loc-19)
  
  (at package-1 city-1-loc-5)
  (at package-2 city-1-loc-9)
  (at package-3 city-1-loc-7)
  (at package-4 city-1-loc-26)
  (at package-5 city-1-loc-10)
  (at package-6 city-1-loc-14)
  (at package-7 city-1-loc-5)
  (at package-8 city-1-loc-3)
  (at package-9 city-1-loc-24)
  (at package-10 city-1-loc-25)
  (at package-11 city-1-loc-1)
  (at package-12 city-1-loc-15)
  (at package-13 city-1-loc-17)
  (at package-14 city-1-loc-13)
  (at package-15 city-1-loc-21)
  (at package-16 city-1-loc-13)
  (at package-17 city-1-loc-17)
  (at package-18 city-1-loc-20)
  (at truck-1 city-2-loc-5)
  (capacity truck-1 capacity-2)
  (at truck-2 city-2-loc-14)
  (capacity truck-2 capacity-2)
  (at truck-3 city-2-loc-25)
  (capacity truck-3 capacity-3)
  (at truck-4 city-2-loc-15)
  (capacity truck-4 capacity-4)
 )
 (:goal (and
  (at package-1 city-2-loc-8)
  (at package-2 city-2-loc-27)
  (at package-3 city-2-loc-27)
  (at package-4 city-2-loc-20)
  (at package-5 city-2-loc-3)
  (at package-6 city-2-loc-15)
  (at package-7 city-2-loc-12)
  (at package-8 city-2-loc-1)
  (at package-9 city-2-loc-10)
  (at package-10 city-2-loc-6)
  (at package-11 city-2-loc-21)
  (at package-12 city-2-loc-7)
  (at package-13 city-2-loc-14)
  (at package-14 city-2-loc-6)
  (at package-15 city-2-loc-9)
  (at package-16 city-2-loc-14)
  (at package-17 city-2-loc-22)
  (at package-18 city-2-loc-6)
 ))
 
)
