; Transport city-sequential-35nodes-1000size-4degree-100mindistance-4trucks-14packages-2008seed

(define (problem transport-city-sequential-35nodes-1000size-4degree-100mindistance-4trucks-14packages-2008seed)
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
  city-loc-21 - location
  city-loc-22 - location
  city-loc-23 - location
  city-loc-24 - location
  city-loc-25 - location
  city-loc-26 - location
  city-loc-27 - location
  city-loc-28 - location
  city-loc-29 - location
  city-loc-30 - location
  city-loc-31 - location
  city-loc-32 - location
  city-loc-33 - location
  city-loc-34 - location
  city-loc-35 - location
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
  ; 362,940 -> 447,732
  (road city-loc-3 city-loc-1)
  
  ; 447,732 -> 362,940
  (road city-loc-1 city-loc-3)
  
  ; 508,430 -> 663,402
  (road city-loc-5 city-loc-2)
  
  ; 663,402 -> 508,430
  (road city-loc-2 city-loc-5)
  
  ; 653,507 -> 663,402
  (road city-loc-6 city-loc-2)
  
  ; 663,402 -> 653,507
  (road city-loc-2 city-loc-6)
  
  ; 653,507 -> 508,430
  (road city-loc-6 city-loc-5)
  
  ; 508,430 -> 653,507
  (road city-loc-5 city-loc-6)
  
  ; 820,551 -> 663,402
  (road city-loc-7 city-loc-2)
  
  ; 663,402 -> 820,551
  (road city-loc-2 city-loc-7)
  
  ; 820,551 -> 941,734
  (road city-loc-7 city-loc-4)
  
  ; 941,734 -> 820,551
  (road city-loc-4 city-loc-7)
  
  ; 820,551 -> 653,507
  (road city-loc-7 city-loc-6)
  
  ; 653,507 -> 820,551
  (road city-loc-6 city-loc-7)
  
  ; 437,605 -> 447,732
  (road city-loc-8 city-loc-1)
  
  ; 447,732 -> 437,605
  (road city-loc-1 city-loc-8)
  
  ; 437,605 -> 508,430
  (road city-loc-8 city-loc-5)
  
  ; 508,430 -> 437,605
  (road city-loc-5 city-loc-8)
  
  ; 497,244 -> 508,430
  (road city-loc-9 city-loc-5)
  
  ; 508,430 -> 497,244
  (road city-loc-5 city-loc-9)
  
  ; 305,509 -> 508,430
  (road city-loc-10 city-loc-5)
  
  ; 508,430 -> 305,509
  (road city-loc-5 city-loc-10)
  
  ; 305,509 -> 437,605
  (road city-loc-10 city-loc-8)
  
  ; 437,605 -> 305,509
  (road city-loc-8 city-loc-10)
  
  ; 463,927 -> 447,732
  (road city-loc-12 city-loc-1)
  
  ; 447,732 -> 463,927
  (road city-loc-1 city-loc-12)
  
  ; 463,927 -> 362,940
  (road city-loc-12 city-loc-3)
  
  ; 362,940 -> 463,927
  (road city-loc-3 city-loc-12)
  
  ; 281,709 -> 447,732
  (road city-loc-13 city-loc-1)
  
  ; 447,732 -> 281,709
  (road city-loc-1 city-loc-13)
  
  ; 281,709 -> 437,605
  (road city-loc-13 city-loc-8)
  
  ; 437,605 -> 281,709
  (road city-loc-8 city-loc-13)
  
  ; 281,709 -> 305,509
  (road city-loc-13 city-loc-10)
  
  ; 305,509 -> 281,709
  (road city-loc-10 city-loc-13)
  
  ; 119,757 -> 281,709
  (road city-loc-15 city-loc-13)
  
  ; 281,709 -> 119,757
  (road city-loc-13 city-loc-15)
  
  ; 179,400 -> 305,509
  (road city-loc-16 city-loc-10)
  
  ; 305,509 -> 179,400
  (road city-loc-10 city-loc-16)
  
  ; 179,400 -> 205,275
  (road city-loc-16 city-loc-14)
  
  ; 205,275 -> 179,400
  (road city-loc-14 city-loc-16)
  
  ; 15,529 -> 179,400
  (road city-loc-17 city-loc-16)
  
  ; 179,400 -> 15,529
  (road city-loc-16 city-loc-17)
  
  ; 342,393 -> 508,430
  (road city-loc-18 city-loc-5)
  
  ; 508,430 -> 342,393
  (road city-loc-5 city-loc-18)
  
  ; 342,393 -> 497,244
  (road city-loc-18 city-loc-9)
  
  ; 497,244 -> 342,393
  (road city-loc-9 city-loc-18)
  
  ; 342,393 -> 305,509
  (road city-loc-18 city-loc-10)
  
  ; 305,509 -> 342,393
  (road city-loc-10 city-loc-18)
  
  ; 342,393 -> 205,275
  (road city-loc-18 city-loc-14)
  
  ; 205,275 -> 342,393
  (road city-loc-14 city-loc-18)
  
  ; 342,393 -> 179,400
  (road city-loc-18 city-loc-16)
  
  ; 179,400 -> 342,393
  (road city-loc-16 city-loc-18)
  
  ; 612,304 -> 663,402
  (road city-loc-19 city-loc-2)
  
  ; 663,402 -> 612,304
  (road city-loc-2 city-loc-19)
  
  ; 612,304 -> 508,430
  (road city-loc-19 city-loc-5)
  
  ; 508,430 -> 612,304
  (road city-loc-5 city-loc-19)
  
  ; 612,304 -> 653,507
  (road city-loc-19 city-loc-6)
  
  ; 653,507 -> 612,304
  (road city-loc-6 city-loc-19)
  
  ; 612,304 -> 497,244
  (road city-loc-19 city-loc-9)
  
  ; 497,244 -> 612,304
  (road city-loc-9 city-loc-19)
  
  ; 188,934 -> 362,940
  (road city-loc-20 city-loc-3)
  
  ; 362,940 -> 188,934
  (road city-loc-3 city-loc-20)
  
  ; 188,934 -> 119,757
  (road city-loc-20 city-loc-15)
  
  ; 119,757 -> 188,934
  (road city-loc-15 city-loc-20)
  
  ; 660,909 -> 463,927
  (road city-loc-22 city-loc-12)
  
  ; 463,927 -> 660,909
  (road city-loc-12 city-loc-22)
  
  ; 660,909 -> 776,948
  (road city-loc-22 city-loc-21)
  
  ; 776,948 -> 660,909
  (road city-loc-21 city-loc-22)
  
  ; 914,881 -> 941,734
  (road city-loc-24 city-loc-4)
  
  ; 941,734 -> 914,881
  (road city-loc-4 city-loc-24)
  
  ; 914,881 -> 776,948
  (road city-loc-24 city-loc-21)
  
  ; 776,948 -> 914,881
  (road city-loc-21 city-loc-24)
  
  ; 331,195 -> 497,244
  (road city-loc-25 city-loc-9)
  
  ; 497,244 -> 331,195
  (road city-loc-9 city-loc-25)
  
  ; 331,195 -> 205,275
  (road city-loc-25 city-loc-14)
  
  ; 205,275 -> 331,195
  (road city-loc-14 city-loc-25)
  
  ; 331,195 -> 342,393
  (road city-loc-25 city-loc-18)
  
  ; 342,393 -> 331,195
  (road city-loc-18 city-loc-25)
  
  ; 599,133 -> 497,244
  (road city-loc-26 city-loc-9)
  
  ; 497,244 -> 599,133
  (road city-loc-9 city-loc-26)
  
  ; 599,133 -> 731,24
  (road city-loc-26 city-loc-11)
  
  ; 731,24 -> 599,133
  (road city-loc-11 city-loc-26)
  
  ; 599,133 -> 612,304
  (road city-loc-26 city-loc-19)
  
  ; 612,304 -> 599,133
  (road city-loc-19 city-loc-26)
  
  ; 870,18 -> 731,24
  (road city-loc-27 city-loc-11)
  
  ; 731,24 -> 870,18
  (road city-loc-11 city-loc-27)
  
  ; 870,18 -> 916,162
  (road city-loc-27 city-loc-23)
  
  ; 916,162 -> 870,18
  (road city-loc-23 city-loc-27)
  
  ; 63,862 -> 119,757
  (road city-loc-28 city-loc-15)
  
  ; 119,757 -> 63,862
  (road city-loc-15 city-loc-28)
  
  ; 63,862 -> 188,934
  (road city-loc-28 city-loc-20)
  
  ; 188,934 -> 63,862
  (road city-loc-20 city-loc-28)
  
  ; 720,128 -> 731,24
  (road city-loc-29 city-loc-11)
  
  ; 731,24 -> 720,128
  (road city-loc-11 city-loc-29)
  
  ; 720,128 -> 612,304
  (road city-loc-29 city-loc-19)
  
  ; 612,304 -> 720,128
  (road city-loc-19 city-loc-29)
  
  ; 720,128 -> 916,162
  (road city-loc-29 city-loc-23)
  
  ; 916,162 -> 720,128
  (road city-loc-23 city-loc-29)
  
  ; 720,128 -> 599,133
  (road city-loc-29 city-loc-26)
  
  ; 599,133 -> 720,128
  (road city-loc-26 city-loc-29)
  
  ; 720,128 -> 870,18
  (road city-loc-29 city-loc-27)
  
  ; 870,18 -> 720,128
  (road city-loc-27 city-loc-29)
  
  ; 369,18 -> 331,195
  (road city-loc-30 city-loc-25)
  
  ; 331,195 -> 369,18
  (road city-loc-25 city-loc-30)
  
  ; 639,796 -> 447,732
  (road city-loc-31 city-loc-1)
  
  ; 447,732 -> 639,796
  (road city-loc-1 city-loc-31)
  
  ; 639,796 -> 463,927
  (road city-loc-31 city-loc-12)
  
  ; 463,927 -> 639,796
  (road city-loc-12 city-loc-31)
  
  ; 639,796 -> 776,948
  (road city-loc-31 city-loc-21)
  
  ; 776,948 -> 639,796
  (road city-loc-21 city-loc-31)
  
  ; 639,796 -> 660,909
  (road city-loc-31 city-loc-22)
  
  ; 660,909 -> 639,796
  (road city-loc-22 city-loc-31)
  
  ; 56,658 -> 119,757
  (road city-loc-32 city-loc-15)
  
  ; 119,757 -> 56,658
  (road city-loc-15 city-loc-32)
  
  ; 56,658 -> 15,529
  (road city-loc-32 city-loc-17)
  
  ; 15,529 -> 56,658
  (road city-loc-17 city-loc-32)
  
  ; 56,658 -> 63,862
  (road city-loc-32 city-loc-28)
  
  ; 63,862 -> 56,658
  (road city-loc-28 city-loc-32)
  
  ; 520,51 -> 497,244
  (road city-loc-33 city-loc-9)
  
  ; 497,244 -> 520,51
  (road city-loc-9 city-loc-33)
  
  ; 520,51 -> 731,24
  (road city-loc-33 city-loc-11)
  
  ; 731,24 -> 520,51
  (road city-loc-11 city-loc-33)
  
  ; 520,51 -> 599,133
  (road city-loc-33 city-loc-26)
  
  ; 599,133 -> 520,51
  (road city-loc-26 city-loc-33)
  
  ; 520,51 -> 720,128
  (road city-loc-33 city-loc-29)
  
  ; 720,128 -> 520,51
  (road city-loc-29 city-loc-33)
  
  ; 520,51 -> 369,18
  (road city-loc-33 city-loc-30)
  
  ; 369,18 -> 520,51
  (road city-loc-30 city-loc-33)
  
  ; 160,40 -> 369,18
  (road city-loc-34 city-loc-30)
  
  ; 369,18 -> 160,40
  (road city-loc-30 city-loc-34)
  
  ; 701,682 -> 653,507
  (road city-loc-35 city-loc-6)
  
  ; 653,507 -> 701,682
  (road city-loc-6 city-loc-35)
  
  ; 701,682 -> 820,551
  (road city-loc-35 city-loc-7)
  
  ; 820,551 -> 701,682
  (road city-loc-7 city-loc-35)
  
  ; 701,682 -> 639,796
  (road city-loc-35 city-loc-31)
  
  ; 639,796 -> 701,682
  (road city-loc-31 city-loc-35)
  
  (at package-1 city-loc-2)
  (at package-2 city-loc-19)
  (at package-3 city-loc-30)
  (at package-4 city-loc-1)
  (at package-5 city-loc-6)
  (at package-6 city-loc-16)
  (at package-7 city-loc-3)
  (at package-8 city-loc-29)
  (at package-9 city-loc-34)
  (at package-10 city-loc-7)
  (at package-11 city-loc-25)
  (at package-12 city-loc-28)
  (at package-13 city-loc-4)
  (at package-14 city-loc-12)
  (at truck-1 city-loc-16)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-29)
  (capacity truck-2 capacity-4)
  (at truck-3 city-loc-11)
  (capacity truck-3 capacity-4)
  (at truck-4 city-loc-16)
  (capacity truck-4 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-27)
  (at package-2 city-loc-7)
  (at package-3 city-loc-10)
  (at package-4 city-loc-2)
  (at package-5 city-loc-32)
  (at package-6 city-loc-33)
  (at package-7 city-loc-9)
  (at package-8 city-loc-16)
  (at package-9 city-loc-11)
  (at package-10 city-loc-21)
  (at package-11 city-loc-34)
  (at package-12 city-loc-11)
  (at package-13 city-loc-19)
  (at package-14 city-loc-17)
 ))
 
)
