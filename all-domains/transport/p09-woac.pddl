; Transport city-sequential-45nodes-1000size-4degree-100mindistance-4trucks-18packages-2008seed

(define (problem transport-city-sequential-45nodes-1000size-4degree-100mindistance-4trucks-18packages-2008seed)
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
  city-loc-36 - location
  city-loc-37 - location
  city-loc-38 - location
  city-loc-39 - location
  city-loc-40 - location
  city-loc-41 - location
  city-loc-42 - location
  city-loc-43 - location
  city-loc-44 - location
  city-loc-45 - location
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
  ; 977,899 -> 912,799
  (road city-loc-5 city-loc-4)
  
  ; 912,799 -> 977,899
  (road city-loc-4 city-loc-5)
  
  ; 456,221 -> 384,50
  (road city-loc-6 city-loc-2)
  
  ; 384,50 -> 456,221
  (road city-loc-2 city-loc-6)
  
  ; 742,542 -> 890,543
  (road city-loc-7 city-loc-1)
  
  ; 890,543 -> 742,542
  (road city-loc-1 city-loc-7)
  
  ; 742,542 -> 748,385
  (road city-loc-7 city-loc-3)
  
  ; 748,385 -> 742,542
  (road city-loc-3 city-loc-7)
  
  ; 566,552 -> 742,542
  (road city-loc-10 city-loc-7)
  
  ; 742,542 -> 566,552
  (road city-loc-7 city-loc-10)
  
  ; 55,605 -> 174,643
  (road city-loc-13 city-loc-11)
  
  ; 174,643 -> 55,605
  (road city-loc-11 city-loc-13)
  
  ; 803,858 -> 912,799
  (road city-loc-14 city-loc-4)
  
  ; 912,799 -> 803,858
  (road city-loc-4 city-loc-14)
  
  ; 803,858 -> 977,899
  (road city-loc-14 city-loc-5)
  
  ; 977,899 -> 803,858
  (road city-loc-5 city-loc-14)
  
  ; 263,567 -> 273,425
  (road city-loc-15 city-loc-9)
  
  ; 273,425 -> 263,567
  (road city-loc-9 city-loc-15)
  
  ; 263,567 -> 174,643
  (road city-loc-15 city-loc-11)
  
  ; 174,643 -> 263,567
  (road city-loc-11 city-loc-15)
  
  ; 128,791 -> 174,643
  (road city-loc-16 city-loc-11)
  
  ; 174,643 -> 128,791
  (road city-loc-11 city-loc-16)
  
  ; 128,791 -> 55,605
  (road city-loc-16 city-loc-13)
  
  ; 55,605 -> 128,791
  (road city-loc-13 city-loc-16)
  
  ; 426,706 -> 564,783
  (road city-loc-17 city-loc-8)
  
  ; 564,783 -> 426,706
  (road city-loc-8 city-loc-17)
  
  ; 392,433 -> 273,425
  (road city-loc-21 city-loc-9)
  
  ; 273,425 -> 392,433
  (road city-loc-9 city-loc-21)
  
  ; 392,433 -> 263,567
  (road city-loc-21 city-loc-15)
  
  ; 263,567 -> 392,433
  (road city-loc-15 city-loc-21)
  
  ; 231,881 -> 128,791
  (road city-loc-22 city-loc-16)
  
  ; 128,791 -> 231,881
  (road city-loc-16 city-loc-22)
  
  ; 682,8 -> 806,18
  (road city-loc-23 city-loc-19)
  
  ; 806,18 -> 682,8
  (road city-loc-19 city-loc-23)
  
  ; 989,457 -> 890,543
  (road city-loc-24 city-loc-1)
  
  ; 890,543 -> 989,457
  (road city-loc-1 city-loc-24)
  
  ; 362,862 -> 426,706
  (road city-loc-25 city-loc-17)
  
  ; 426,706 -> 362,862
  (road city-loc-17 city-loc-25)
  
  ; 362,862 -> 231,881
  (road city-loc-25 city-loc-22)
  
  ; 231,881 -> 362,862
  (road city-loc-22 city-loc-25)
  
  ; 6,60 -> 138,109
  (road city-loc-26 city-loc-20)
  
  ; 138,109 -> 6,60
  (road city-loc-20 city-loc-26)
  
  ; 257,5 -> 384,50
  (road city-loc-27 city-loc-2)
  
  ; 384,50 -> 257,5
  (road city-loc-2 city-loc-27)
  
  ; 257,5 -> 138,109
  (road city-loc-27 city-loc-20)
  
  ; 138,109 -> 257,5
  (road city-loc-20 city-loc-27)
  
  ; 347,149 -> 384,50
  (road city-loc-28 city-loc-2)
  
  ; 384,50 -> 347,149
  (road city-loc-2 city-loc-28)
  
  ; 347,149 -> 456,221
  (road city-loc-28 city-loc-6)
  
  ; 456,221 -> 347,149
  (road city-loc-6 city-loc-28)
  
  ; 347,149 -> 257,5
  (road city-loc-28 city-loc-27)
  
  ; 257,5 -> 347,149
  (road city-loc-27 city-loc-28)
  
  ; 521,375 -> 456,221
  (road city-loc-29 city-loc-6)
  
  ; 456,221 -> 521,375
  (road city-loc-6 city-loc-29)
  
  ; 521,375 -> 566,552
  (road city-loc-29 city-loc-10)
  
  ; 566,552 -> 521,375
  (road city-loc-10 city-loc-29)
  
  ; 521,375 -> 392,433
  (road city-loc-29 city-loc-21)
  
  ; 392,433 -> 521,375
  (road city-loc-21 city-loc-29)
  
  ; 720,241 -> 748,385
  (road city-loc-30 city-loc-3)
  
  ; 748,385 -> 720,241
  (road city-loc-3 city-loc-30)
  
  ; 377,283 -> 456,221
  (road city-loc-31 city-loc-6)
  
  ; 456,221 -> 377,283
  (road city-loc-6 city-loc-31)
  
  ; 377,283 -> 273,425
  (road city-loc-31 city-loc-9)
  
  ; 273,425 -> 377,283
  (road city-loc-9 city-loc-31)
  
  ; 377,283 -> 392,433
  (road city-loc-31 city-loc-21)
  
  ; 392,433 -> 377,283
  (road city-loc-21 city-loc-31)
  
  ; 377,283 -> 347,149
  (road city-loc-31 city-loc-28)
  
  ; 347,149 -> 377,283
  (road city-loc-28 city-loc-31)
  
  ; 377,283 -> 521,375
  (road city-loc-31 city-loc-29)
  
  ; 521,375 -> 377,283
  (road city-loc-29 city-loc-31)
  
  ; 643,669 -> 742,542
  (road city-loc-32 city-loc-7)
  
  ; 742,542 -> 643,669
  (road city-loc-7 city-loc-32)
  
  ; 643,669 -> 564,783
  (road city-loc-32 city-loc-8)
  
  ; 564,783 -> 643,669
  (road city-loc-8 city-loc-32)
  
  ; 643,669 -> 566,552
  (road city-loc-32 city-loc-10)
  
  ; 566,552 -> 643,669
  (road city-loc-10 city-loc-32)
  
  ; 858,139 -> 930,259
  (road city-loc-33 city-loc-12)
  
  ; 930,259 -> 858,139
  (road city-loc-12 city-loc-33)
  
  ; 858,139 -> 806,18
  (road city-loc-33 city-loc-19)
  
  ; 806,18 -> 858,139
  (road city-loc-19 city-loc-33)
  
  ; 858,139 -> 720,241
  (road city-loc-33 city-loc-30)
  
  ; 720,241 -> 858,139
  (road city-loc-30 city-loc-33)
  
  ; 203,987 -> 231,881
  (road city-loc-34 city-loc-22)
  
  ; 231,881 -> 203,987
  (road city-loc-22 city-loc-34)
  
  ; 560,901 -> 564,783
  (road city-loc-35 city-loc-8)
  
  ; 564,783 -> 560,901
  (road city-loc-8 city-loc-35)
  
  ; 437,605 -> 566,552
  (road city-loc-36 city-loc-10)
  
  ; 566,552 -> 437,605
  (road city-loc-10 city-loc-36)
  
  ; 437,605 -> 263,567
  (road city-loc-36 city-loc-15)
  
  ; 263,567 -> 437,605
  (road city-loc-15 city-loc-36)
  
  ; 437,605 -> 426,706
  (road city-loc-36 city-loc-17)
  
  ; 426,706 -> 437,605
  (road city-loc-17 city-loc-36)
  
  ; 437,605 -> 392,433
  (road city-loc-36 city-loc-21)
  
  ; 392,433 -> 437,605
  (road city-loc-21 city-loc-36)
  
  ; 806,647 -> 890,543
  (road city-loc-37 city-loc-1)
  
  ; 890,543 -> 806,647
  (road city-loc-1 city-loc-37)
  
  ; 806,647 -> 912,799
  (road city-loc-37 city-loc-4)
  
  ; 912,799 -> 806,647
  (road city-loc-4 city-loc-37)
  
  ; 806,647 -> 742,542
  (road city-loc-37 city-loc-7)
  
  ; 742,542 -> 806,647
  (road city-loc-7 city-loc-37)
  
  ; 806,647 -> 643,669
  (road city-loc-37 city-loc-32)
  
  ; 643,669 -> 806,647
  (road city-loc-32 city-loc-37)
  
  ; 339,962 -> 231,881
  (road city-loc-38 city-loc-22)
  
  ; 231,881 -> 339,962
  (road city-loc-22 city-loc-38)
  
  ; 339,962 -> 362,862
  (road city-loc-38 city-loc-25)
  
  ; 362,862 -> 339,962
  (road city-loc-25 city-loc-38)
  
  ; 339,962 -> 203,987
  (road city-loc-38 city-loc-34)
  
  ; 203,987 -> 339,962
  (road city-loc-34 city-loc-38)
  
  ; 463,927 -> 564,783
  (road city-loc-39 city-loc-8)
  
  ; 564,783 -> 463,927
  (road city-loc-8 city-loc-39)
  
  ; 463,927 -> 362,862
  (road city-loc-39 city-loc-25)
  
  ; 362,862 -> 463,927
  (road city-loc-25 city-loc-39)
  
  ; 463,927 -> 560,901
  (road city-loc-39 city-loc-35)
  
  ; 560,901 -> 463,927
  (road city-loc-35 city-loc-39)
  
  ; 463,927 -> 339,962
  (road city-loc-39 city-loc-38)
  
  ; 339,962 -> 463,927
  (road city-loc-38 city-loc-39)
  
  ; 281,709 -> 174,643
  (road city-loc-40 city-loc-11)
  
  ; 174,643 -> 281,709
  (road city-loc-11 city-loc-40)
  
  ; 281,709 -> 263,567
  (road city-loc-40 city-loc-15)
  
  ; 263,567 -> 281,709
  (road city-loc-15 city-loc-40)
  
  ; 281,709 -> 128,791
  (road city-loc-40 city-loc-16)
  
  ; 128,791 -> 281,709
  (road city-loc-16 city-loc-40)
  
  ; 281,709 -> 426,706
  (road city-loc-40 city-loc-17)
  
  ; 426,706 -> 281,709
  (road city-loc-17 city-loc-40)
  
  ; 281,709 -> 231,881
  (road city-loc-40 city-loc-22)
  
  ; 231,881 -> 281,709
  (road city-loc-22 city-loc-40)
  
  ; 281,709 -> 362,862
  (road city-loc-40 city-loc-25)
  
  ; 362,862 -> 281,709
  (road city-loc-25 city-loc-40)
  
  ; 281,709 -> 437,605
  (road city-loc-40 city-loc-36)
  
  ; 437,605 -> 281,709
  (road city-loc-36 city-loc-40)
  
  ; 205,275 -> 273,425
  (road city-loc-41 city-loc-9)
  
  ; 273,425 -> 205,275
  (road city-loc-9 city-loc-41)
  
  ; 205,275 -> 36,368
  (road city-loc-41 city-loc-18)
  
  ; 36,368 -> 205,275
  (road city-loc-18 city-loc-41)
  
  ; 205,275 -> 138,109
  (road city-loc-41 city-loc-20)
  
  ; 138,109 -> 205,275
  (road city-loc-20 city-loc-41)
  
  ; 205,275 -> 347,149
  (road city-loc-41 city-loc-28)
  
  ; 347,149 -> 205,275
  (road city-loc-28 city-loc-41)
  
  ; 205,275 -> 377,283
  (road city-loc-41 city-loc-31)
  
  ; 377,283 -> 205,275
  (road city-loc-31 city-loc-41)
  
  ; 612,304 -> 748,385
  (road city-loc-42 city-loc-3)
  
  ; 748,385 -> 612,304
  (road city-loc-3 city-loc-42)
  
  ; 612,304 -> 456,221
  (road city-loc-42 city-loc-6)
  
  ; 456,221 -> 612,304
  (road city-loc-6 city-loc-42)
  
  ; 612,304 -> 521,375
  (road city-loc-42 city-loc-29)
  
  ; 521,375 -> 612,304
  (road city-loc-29 city-loc-42)
  
  ; 612,304 -> 720,241
  (road city-loc-42 city-loc-30)
  
  ; 720,241 -> 612,304
  (road city-loc-30 city-loc-42)
  
  ; 660,909 -> 564,783
  (road city-loc-43 city-loc-8)
  
  ; 564,783 -> 660,909
  (road city-loc-8 city-loc-43)
  
  ; 660,909 -> 803,858
  (road city-loc-43 city-loc-14)
  
  ; 803,858 -> 660,909
  (road city-loc-14 city-loc-43)
  
  ; 660,909 -> 560,901
  (road city-loc-43 city-loc-35)
  
  ; 560,901 -> 660,909
  (road city-loc-35 city-loc-43)
  
  ; 660,909 -> 463,927
  (road city-loc-43 city-loc-39)
  
  ; 463,927 -> 660,909
  (road city-loc-39 city-loc-43)
  
  ; 966,112 -> 930,259
  (road city-loc-44 city-loc-12)
  
  ; 930,259 -> 966,112
  (road city-loc-12 city-loc-44)
  
  ; 966,112 -> 806,18
  (road city-loc-44 city-loc-19)
  
  ; 806,18 -> 966,112
  (road city-loc-19 city-loc-44)
  
  ; 966,112 -> 858,139
  (road city-loc-44 city-loc-33)
  
  ; 858,139 -> 966,112
  (road city-loc-33 city-loc-44)
  
  ; 599,133 -> 456,221
  (road city-loc-45 city-loc-6)
  
  ; 456,221 -> 599,133
  (road city-loc-6 city-loc-45)
  
  ; 599,133 -> 682,8
  (road city-loc-45 city-loc-23)
  
  ; 682,8 -> 599,133
  (road city-loc-23 city-loc-45)
  
  ; 599,133 -> 720,241
  (road city-loc-45 city-loc-30)
  
  ; 720,241 -> 599,133
  (road city-loc-30 city-loc-45)
  
  ; 599,133 -> 612,304
  (road city-loc-45 city-loc-42)
  
  ; 612,304 -> 599,133
  (road city-loc-42 city-loc-45)
  
  (at package-1 city-loc-25)
  (at package-2 city-loc-20)
  (at package-3 city-loc-28)
  (at package-4 city-loc-10)
  (at package-5 city-loc-22)
  (at package-6 city-loc-22)
  (at package-7 city-loc-30)
  (at package-8 city-loc-6)
  (at package-9 city-loc-40)
  (at package-10 city-loc-1)
  (at package-11 city-loc-15)
  (at package-12 city-loc-22)
  (at package-13 city-loc-42)
  (at package-14 city-loc-44)
  (at package-15 city-loc-3)
  (at package-16 city-loc-39)
  (at package-17 city-loc-17)
  (at package-18 city-loc-26)
  (at truck-1 city-loc-6)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-20)
  (capacity truck-2 capacity-3)
  (at truck-3 city-loc-1)
  (capacity truck-3 capacity-4)
  (at truck-4 city-loc-23)
  (capacity truck-4 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-17)
  (at package-2 city-loc-1)
  (at package-3 city-loc-16)
  (at package-4 city-loc-3)
  (at package-5 city-loc-10)
  (at package-6 city-loc-12)
  (at package-7 city-loc-42)
  (at package-8 city-loc-39)
  (at package-9 city-loc-29)
  (at package-10 city-loc-36)
  (at package-11 city-loc-21)
  (at package-12 city-loc-25)
  (at package-13 city-loc-20)
  (at package-14 city-loc-45)
  (at package-15 city-loc-30)
  (at package-16 city-loc-24)
  (at package-17 city-loc-3)
  (at package-18 city-loc-3)
 ))
 
)
