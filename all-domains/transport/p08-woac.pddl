; Transport city-sequential-40nodes-1000size-4degree-100mindistance-4trucks-16packages-2008seed

(define (problem transport-city-sequential-40nodes-1000size-4degree-100mindistance-4trucks-16packages-2008seed)
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
  ; 179,400 -> 205,275
  (road city-loc-3 city-loc-1)
  
  ; 205,275 -> 179,400
  (road city-loc-1 city-loc-3)
  
  ; 15,529 -> 179,400
  (road city-loc-4 city-loc-3)
  
  ; 179,400 -> 15,529
  (road city-loc-3 city-loc-4)
  
  ; 342,393 -> 205,275
  (road city-loc-5 city-loc-1)
  
  ; 205,275 -> 342,393
  (road city-loc-1 city-loc-5)
  
  ; 342,393 -> 179,400
  (road city-loc-5 city-loc-3)
  
  ; 179,400 -> 342,393
  (road city-loc-3 city-loc-5)
  
  ; 256,802 -> 119,757
  (road city-loc-7 city-loc-2)
  
  ; 119,757 -> 256,802
  (road city-loc-2 city-loc-7)
  
  ; 188,934 -> 119,757
  (road city-loc-8 city-loc-2)
  
  ; 119,757 -> 188,934
  (road city-loc-2 city-loc-8)
  
  ; 188,934 -> 256,802
  (road city-loc-8 city-loc-7)
  
  ; 256,802 -> 188,934
  (road city-loc-7 city-loc-8)
  
  ; 660,909 -> 776,948
  (road city-loc-10 city-loc-9)
  
  ; 776,948 -> 660,909
  (road city-loc-9 city-loc-10)
  
  ; 914,881 -> 776,948
  (road city-loc-12 city-loc-9)
  
  ; 776,948 -> 914,881
  (road city-loc-9 city-loc-12)
  
  ; 331,195 -> 205,275
  (road city-loc-13 city-loc-1)
  
  ; 205,275 -> 331,195
  (road city-loc-1 city-loc-13)
  
  ; 331,195 -> 342,393
  (road city-loc-13 city-loc-5)
  
  ; 342,393 -> 331,195
  (road city-loc-5 city-loc-13)
  
  ; 599,133 -> 612,304
  (road city-loc-14 city-loc-6)
  
  ; 612,304 -> 599,133
  (road city-loc-6 city-loc-14)
  
  ; 549,437 -> 342,393
  (road city-loc-15 city-loc-5)
  
  ; 342,393 -> 549,437
  (road city-loc-5 city-loc-15)
  
  ; 549,437 -> 612,304
  (road city-loc-15 city-loc-6)
  
  ; 612,304 -> 549,437
  (road city-loc-6 city-loc-15)
  
  ; 870,18 -> 916,162
  (road city-loc-16 city-loc-11)
  
  ; 916,162 -> 870,18
  (road city-loc-11 city-loc-16)
  
  ; 63,862 -> 119,757
  (road city-loc-17 city-loc-2)
  
  ; 119,757 -> 63,862
  (road city-loc-2 city-loc-17)
  
  ; 63,862 -> 256,802
  (road city-loc-17 city-loc-7)
  
  ; 256,802 -> 63,862
  (road city-loc-7 city-loc-17)
  
  ; 63,862 -> 188,934
  (road city-loc-17 city-loc-8)
  
  ; 188,934 -> 63,862
  (road city-loc-8 city-loc-17)
  
  ; 365,569 -> 342,393
  (road city-loc-18 city-loc-5)
  
  ; 342,393 -> 365,569
  (road city-loc-5 city-loc-18)
  
  ; 720,128 -> 612,304
  (road city-loc-19 city-loc-6)
  
  ; 612,304 -> 720,128
  (road city-loc-6 city-loc-19)
  
  ; 720,128 -> 916,162
  (road city-loc-19 city-loc-11)
  
  ; 916,162 -> 720,128
  (road city-loc-11 city-loc-19)
  
  ; 720,128 -> 599,133
  (road city-loc-19 city-loc-14)
  
  ; 599,133 -> 720,128
  (road city-loc-14 city-loc-19)
  
  ; 720,128 -> 870,18
  (road city-loc-19 city-loc-16)
  
  ; 870,18 -> 720,128
  (road city-loc-16 city-loc-19)
  
  ; 683,505 -> 612,304
  (road city-loc-20 city-loc-6)
  
  ; 612,304 -> 683,505
  (road city-loc-6 city-loc-20)
  
  ; 683,505 -> 549,437
  (road city-loc-20 city-loc-15)
  
  ; 549,437 -> 683,505
  (road city-loc-15 city-loc-20)
  
  ; 369,18 -> 331,195
  (road city-loc-21 city-loc-13)
  
  ; 331,195 -> 369,18
  (road city-loc-13 city-loc-21)
  
  ; 639,796 -> 776,948
  (road city-loc-22 city-loc-9)
  
  ; 776,948 -> 639,796
  (road city-loc-9 city-loc-22)
  
  ; 639,796 -> 660,909
  (road city-loc-22 city-loc-10)
  
  ; 660,909 -> 639,796
  (road city-loc-10 city-loc-22)
  
  ; 56,658 -> 119,757
  (road city-loc-24 city-loc-2)
  
  ; 119,757 -> 56,658
  (road city-loc-2 city-loc-24)
  
  ; 56,658 -> 15,529
  (road city-loc-24 city-loc-4)
  
  ; 15,529 -> 56,658
  (road city-loc-4 city-loc-24)
  
  ; 56,658 -> 63,862
  (road city-loc-24 city-loc-17)
  
  ; 63,862 -> 56,658
  (road city-loc-17 city-loc-24)
  
  ; 520,51 -> 599,133
  (road city-loc-25 city-loc-14)
  
  ; 599,133 -> 520,51
  (road city-loc-14 city-loc-25)
  
  ; 520,51 -> 720,128
  (road city-loc-25 city-loc-19)
  
  ; 720,128 -> 520,51
  (road city-loc-19 city-loc-25)
  
  ; 520,51 -> 369,18
  (road city-loc-25 city-loc-21)
  
  ; 369,18 -> 520,51
  (road city-loc-21 city-loc-25)
  
  ; 488,155 -> 612,304
  (road city-loc-26 city-loc-6)
  
  ; 612,304 -> 488,155
  (road city-loc-6 city-loc-26)
  
  ; 488,155 -> 331,195
  (road city-loc-26 city-loc-13)
  
  ; 331,195 -> 488,155
  (road city-loc-13 city-loc-26)
  
  ; 488,155 -> 599,133
  (road city-loc-26 city-loc-14)
  
  ; 599,133 -> 488,155
  (road city-loc-14 city-loc-26)
  
  ; 488,155 -> 369,18
  (road city-loc-26 city-loc-21)
  
  ; 369,18 -> 488,155
  (road city-loc-21 city-loc-26)
  
  ; 488,155 -> 520,51
  (road city-loc-26 city-loc-25)
  
  ; 520,51 -> 488,155
  (road city-loc-25 city-loc-26)
  
  ; 160,40 -> 369,18
  (road city-loc-27 city-loc-21)
  
  ; 369,18 -> 160,40
  (road city-loc-21 city-loc-27)
  
  ; 221,510 -> 179,400
  (road city-loc-28 city-loc-3)
  
  ; 179,400 -> 221,510
  (road city-loc-3 city-loc-28)
  
  ; 221,510 -> 15,529
  (road city-loc-28 city-loc-4)
  
  ; 15,529 -> 221,510
  (road city-loc-4 city-loc-28)
  
  ; 221,510 -> 342,393
  (road city-loc-28 city-loc-5)
  
  ; 342,393 -> 221,510
  (road city-loc-5 city-loc-28)
  
  ; 221,510 -> 365,569
  (road city-loc-28 city-loc-18)
  
  ; 365,569 -> 221,510
  (road city-loc-18 city-loc-28)
  
  ; 300,931 -> 256,802
  (road city-loc-29 city-loc-7)
  
  ; 256,802 -> 300,931
  (road city-loc-7 city-loc-29)
  
  ; 300,931 -> 188,934
  (road city-loc-29 city-loc-8)
  
  ; 188,934 -> 300,931
  (road city-loc-8 city-loc-29)
  
  ; 300,931 -> 442,989
  (road city-loc-29 city-loc-23)
  
  ; 442,989 -> 300,931
  (road city-loc-23 city-loc-29)
  
  ; 701,682 -> 683,505
  (road city-loc-30 city-loc-20)
  
  ; 683,505 -> 701,682
  (road city-loc-20 city-loc-30)
  
  ; 701,682 -> 639,796
  (road city-loc-30 city-loc-22)
  
  ; 639,796 -> 701,682
  (road city-loc-22 city-loc-30)
  
  ; 88,336 -> 205,275
  (road city-loc-31 city-loc-1)
  
  ; 205,275 -> 88,336
  (road city-loc-1 city-loc-31)
  
  ; 88,336 -> 179,400
  (road city-loc-31 city-loc-3)
  
  ; 179,400 -> 88,336
  (road city-loc-3 city-loc-31)
  
  ; 88,336 -> 15,529
  (road city-loc-31 city-loc-4)
  
  ; 15,529 -> 88,336
  (road city-loc-4 city-loc-31)
  
  ; 842,442 -> 683,505
  (road city-loc-32 city-loc-20)
  
  ; 683,505 -> 842,442
  (road city-loc-20 city-loc-32)
  
  ; 820,806 -> 776,948
  (road city-loc-33 city-loc-9)
  
  ; 776,948 -> 820,806
  (road city-loc-9 city-loc-33)
  
  ; 820,806 -> 660,909
  (road city-loc-33 city-loc-10)
  
  ; 660,909 -> 820,806
  (road city-loc-10 city-loc-33)
  
  ; 820,806 -> 914,881
  (road city-loc-33 city-loc-12)
  
  ; 914,881 -> 820,806
  (road city-loc-12 city-loc-33)
  
  ; 820,806 -> 639,796
  (road city-loc-33 city-loc-22)
  
  ; 639,796 -> 820,806
  (road city-loc-22 city-loc-33)
  
  ; 820,806 -> 701,682
  (road city-loc-33 city-loc-30)
  
  ; 701,682 -> 820,806
  (road city-loc-30 city-loc-33)
  
  ; 898,304 -> 916,162
  (road city-loc-34 city-loc-11)
  
  ; 916,162 -> 898,304
  (road city-loc-11 city-loc-34)
  
  ; 898,304 -> 842,442
  (road city-loc-34 city-loc-32)
  
  ; 842,442 -> 898,304
  (road city-loc-32 city-loc-34)
  
  ; 499,596 -> 549,437
  (road city-loc-35 city-loc-15)
  
  ; 549,437 -> 499,596
  (road city-loc-15 city-loc-35)
  
  ; 499,596 -> 365,569
  (road city-loc-35 city-loc-18)
  
  ; 365,569 -> 499,596
  (road city-loc-18 city-loc-35)
  
  ; 499,596 -> 683,505
  (road city-loc-35 city-loc-20)
  
  ; 683,505 -> 499,596
  (road city-loc-20 city-loc-35)
  
  ; 849,708 -> 914,881
  (road city-loc-36 city-loc-12)
  
  ; 914,881 -> 849,708
  (road city-loc-12 city-loc-36)
  
  ; 849,708 -> 701,682
  (road city-loc-36 city-loc-30)
  
  ; 701,682 -> 849,708
  (road city-loc-30 city-loc-36)
  
  ; 849,708 -> 820,806
  (road city-loc-36 city-loc-33)
  
  ; 820,806 -> 849,708
  (road city-loc-33 city-loc-36)
  
  ; 45,194 -> 205,275
  (road city-loc-37 city-loc-1)
  
  ; 205,275 -> 45,194
  (road city-loc-1 city-loc-37)
  
  ; 45,194 -> 160,40
  (road city-loc-37 city-loc-27)
  
  ; 160,40 -> 45,194
  (road city-loc-27 city-loc-37)
  
  ; 45,194 -> 88,336
  (road city-loc-37 city-loc-31)
  
  ; 88,336 -> 45,194
  (road city-loc-31 city-loc-37)
  
  ; 529,905 -> 660,909
  (road city-loc-38 city-loc-10)
  
  ; 660,909 -> 529,905
  (road city-loc-10 city-loc-38)
  
  ; 529,905 -> 639,796
  (road city-loc-38 city-loc-22)
  
  ; 639,796 -> 529,905
  (road city-loc-22 city-loc-38)
  
  ; 529,905 -> 442,989
  (road city-loc-38 city-loc-23)
  
  ; 442,989 -> 529,905
  (road city-loc-23 city-loc-38)
  
  ; 176,638 -> 119,757
  (road city-loc-39 city-loc-2)
  
  ; 119,757 -> 176,638
  (road city-loc-2 city-loc-39)
  
  ; 176,638 -> 15,529
  (road city-loc-39 city-loc-4)
  
  ; 15,529 -> 176,638
  (road city-loc-4 city-loc-39)
  
  ; 176,638 -> 256,802
  (road city-loc-39 city-loc-7)
  
  ; 256,802 -> 176,638
  (road city-loc-7 city-loc-39)
  
  ; 176,638 -> 365,569
  (road city-loc-39 city-loc-18)
  
  ; 365,569 -> 176,638
  (road city-loc-18 city-loc-39)
  
  ; 176,638 -> 56,658
  (road city-loc-39 city-loc-24)
  
  ; 56,658 -> 176,638
  (road city-loc-24 city-loc-39)
  
  ; 176,638 -> 221,510
  (road city-loc-39 city-loc-28)
  
  ; 221,510 -> 176,638
  (road city-loc-28 city-loc-39)
  
  ; 543,725 -> 639,796
  (road city-loc-40 city-loc-22)
  
  ; 639,796 -> 543,725
  (road city-loc-22 city-loc-40)
  
  ; 543,725 -> 701,682
  (road city-loc-40 city-loc-30)
  
  ; 701,682 -> 543,725
  (road city-loc-30 city-loc-40)
  
  ; 543,725 -> 499,596
  (road city-loc-40 city-loc-35)
  
  ; 499,596 -> 543,725
  (road city-loc-35 city-loc-40)
  
  ; 543,725 -> 529,905
  (road city-loc-40 city-loc-38)
  
  ; 529,905 -> 543,725
  (road city-loc-38 city-loc-40)
  
  (at package-1 city-loc-34)
  (at package-2 city-loc-33)
  (at package-3 city-loc-4)
  (at package-4 city-loc-33)
  (at package-5 city-loc-27)
  (at package-6 city-loc-32)
  (at package-7 city-loc-20)
  (at package-8 city-loc-33)
  (at package-9 city-loc-15)
  (at package-10 city-loc-12)
  (at package-11 city-loc-4)
  (at package-12 city-loc-18)
  (at package-13 city-loc-38)
  (at package-14 city-loc-35)
  (at package-15 city-loc-31)
  (at package-16 city-loc-33)
  (at truck-1 city-loc-2)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-21)
  (capacity truck-2 capacity-3)
  (at truck-3 city-loc-18)
  (capacity truck-3 capacity-4)
  (at truck-4 city-loc-27)
  (capacity truck-4 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-35)
  (at package-2 city-loc-6)
  (at package-3 city-loc-16)
  (at package-4 city-loc-4)
  (at package-5 city-loc-37)
  (at package-6 city-loc-36)
  (at package-7 city-loc-22)
  (at package-8 city-loc-26)
  (at package-9 city-loc-4)
  (at package-10 city-loc-28)
  (at package-11 city-loc-6)
  (at package-12 city-loc-32)
  (at package-13 city-loc-35)
  (at package-14 city-loc-36)
  (at package-15 city-loc-12)
  (at package-16 city-loc-31)
 ))
 
)
