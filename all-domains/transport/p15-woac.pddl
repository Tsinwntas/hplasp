; Transport two-cities-sequential-15nodes-1000size-3degree-100mindistance-3trucks-10packages-2008seed

(define (problem transport-two-cities-sequential-15nodes-1000size-3degree-100mindistance-3trucks-10packages-2008seed)
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
  package-9 - package
  package-10 - package
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
  ; 347,149 -> 257,5
  (road city-1-loc-4 city-1-loc-1)
  
  ; 257,5 -> 347,149
  (road city-1-loc-1 city-1-loc-4)
  
  ; 347,149 -> 245,346
  (road city-1-loc-4 city-1-loc-2)
  
  ; 245,346 -> 347,149
  (road city-1-loc-2 city-1-loc-4)
  
  ; 336,475 -> 245,346
  (road city-1-loc-5 city-1-loc-2)
  
  ; 245,346 -> 336,475
  (road city-1-loc-2 city-1-loc-5)
  
  ; 336,475 -> 559,565
  (road city-1-loc-5 city-1-loc-3)
  
  ; 559,565 -> 336,475
  (road city-1-loc-3 city-1-loc-5)
  
  ; 170,709 -> 336,475
  (road city-1-loc-6 city-1-loc-5)
  
  ; 336,475 -> 170,709
  (road city-1-loc-5 city-1-loc-6)
  
  ; 521,375 -> 245,346
  (road city-1-loc-7 city-1-loc-2)
  
  ; 245,346 -> 521,375
  (road city-1-loc-2 city-1-loc-7)
  
  ; 521,375 -> 559,565
  (road city-1-loc-7 city-1-loc-3)
  
  ; 559,565 -> 521,375
  (road city-1-loc-3 city-1-loc-7)
  
  ; 521,375 -> 347,149
  (road city-1-loc-7 city-1-loc-4)
  
  ; 347,149 -> 521,375
  (road city-1-loc-4 city-1-loc-7)
  
  ; 521,375 -> 336,475
  (road city-1-loc-7 city-1-loc-5)
  
  ; 336,475 -> 521,375
  (road city-1-loc-5 city-1-loc-7)
  
  ; 720,241 -> 521,375
  (road city-1-loc-9 city-1-loc-7)
  
  ; 521,375 -> 720,241
  (road city-1-loc-7 city-1-loc-9)
  
  ; 720,241 -> 701,0
  (road city-1-loc-9 city-1-loc-8)
  
  ; 701,0 -> 720,241
  (road city-1-loc-8 city-1-loc-9)
  
  ; 630,722 -> 559,565
  (road city-1-loc-10 city-1-loc-3)
  
  ; 559,565 -> 630,722
  (road city-1-loc-3 city-1-loc-10)
  
  ; 120,854 -> 170,709
  (road city-1-loc-11 city-1-loc-6)
  
  ; 170,709 -> 120,854
  (road city-1-loc-6 city-1-loc-11)
  
  ; 377,283 -> 245,346
  (road city-1-loc-12 city-1-loc-2)
  
  ; 245,346 -> 377,283
  (road city-1-loc-2 city-1-loc-12)
  
  ; 377,283 -> 347,149
  (road city-1-loc-12 city-1-loc-4)
  
  ; 347,149 -> 377,283
  (road city-1-loc-4 city-1-loc-12)
  
  ; 377,283 -> 336,475
  (road city-1-loc-12 city-1-loc-5)
  
  ; 336,475 -> 377,283
  (road city-1-loc-5 city-1-loc-12)
  
  ; 377,283 -> 521,375
  (road city-1-loc-12 city-1-loc-7)
  
  ; 521,375 -> 377,283
  (road city-1-loc-7 city-1-loc-12)
  
  ; 171,545 -> 245,346
  (road city-1-loc-13 city-1-loc-2)
  
  ; 245,346 -> 171,545
  (road city-1-loc-2 city-1-loc-13)
  
  ; 171,545 -> 336,475
  (road city-1-loc-13 city-1-loc-5)
  
  ; 336,475 -> 171,545
  (road city-1-loc-5 city-1-loc-13)
  
  ; 171,545 -> 170,709
  (road city-1-loc-13 city-1-loc-6)
  
  ; 170,709 -> 171,545
  (road city-1-loc-6 city-1-loc-13)
  
  ; 348,607 -> 245,346
  (road city-1-loc-14 city-1-loc-2)
  
  ; 245,346 -> 348,607
  (road city-1-loc-2 city-1-loc-14)
  
  ; 348,607 -> 559,565
  (road city-1-loc-14 city-1-loc-3)
  
  ; 559,565 -> 348,607
  (road city-1-loc-3 city-1-loc-14)
  
  ; 348,607 -> 336,475
  (road city-1-loc-14 city-1-loc-5)
  
  ; 336,475 -> 348,607
  (road city-1-loc-5 city-1-loc-14)
  
  ; 348,607 -> 170,709
  (road city-1-loc-14 city-1-loc-6)
  
  ; 170,709 -> 348,607
  (road city-1-loc-6 city-1-loc-14)
  
  ; 348,607 -> 521,375
  (road city-1-loc-14 city-1-loc-7)
  
  ; 521,375 -> 348,607
  (road city-1-loc-7 city-1-loc-14)
  
  ; 348,607 -> 171,545
  (road city-1-loc-14 city-1-loc-13)
  
  ; 171,545 -> 348,607
  (road city-1-loc-13 city-1-loc-14)
  
  ; 395,741 -> 559,565
  (road city-1-loc-15 city-1-loc-3)
  
  ; 559,565 -> 395,741
  (road city-1-loc-3 city-1-loc-15)
  
  ; 395,741 -> 336,475
  (road city-1-loc-15 city-1-loc-5)
  
  ; 336,475 -> 395,741
  (road city-1-loc-5 city-1-loc-15)
  
  ; 395,741 -> 170,709
  (road city-1-loc-15 city-1-loc-6)
  
  ; 170,709 -> 395,741
  (road city-1-loc-6 city-1-loc-15)
  
  ; 395,741 -> 630,722
  (road city-1-loc-15 city-1-loc-10)
  
  ; 630,722 -> 395,741
  (road city-1-loc-10 city-1-loc-15)
  
  ; 395,741 -> 120,854
  (road city-1-loc-15 city-1-loc-11)
  
  ; 120,854 -> 395,741
  (road city-1-loc-11 city-1-loc-15)
  
  ; 395,741 -> 171,545
  (road city-1-loc-15 city-1-loc-13)
  
  ; 171,545 -> 395,741
  (road city-1-loc-13 city-1-loc-15)
  
  ; 395,741 -> 348,607
  (road city-1-loc-15 city-1-loc-14)
  
  ; 348,607 -> 395,741
  (road city-1-loc-14 city-1-loc-15)
  
  ; 2480,435 -> 2193,424
  (road city-2-loc-3 city-2-loc-1)
  
  ; 2193,424 -> 2480,435
  (road city-2-loc-1 city-2-loc-3)
  
  ; 2651,235 -> 2480,435
  (road city-2-loc-5 city-2-loc-3)
  
  ; 2480,435 -> 2651,235
  (road city-2-loc-3 city-2-loc-5)
  
  ; 2651,235 -> 2918,341
  (road city-2-loc-5 city-2-loc-4)
  
  ; 2918,341 -> 2651,235
  (road city-2-loc-4 city-2-loc-5)
  
  ; 2560,901 -> 2611,710
  (road city-2-loc-6 city-2-loc-2)
  
  ; 2611,710 -> 2560,901
  (road city-2-loc-2 city-2-loc-6)
  
  ; 2447,732 -> 2611,710
  (road city-2-loc-7 city-2-loc-2)
  
  ; 2611,710 -> 2447,732
  (road city-2-loc-2 city-2-loc-7)
  
  ; 2447,732 -> 2480,435
  (road city-2-loc-7 city-2-loc-3)
  
  ; 2480,435 -> 2447,732
  (road city-2-loc-3 city-2-loc-7)
  
  ; 2447,732 -> 2560,901
  (road city-2-loc-7 city-2-loc-6)
  
  ; 2560,901 -> 2447,732
  (road city-2-loc-6 city-2-loc-7)
  
  ; 2663,402 -> 2480,435
  (road city-2-loc-8 city-2-loc-3)
  
  ; 2480,435 -> 2663,402
  (road city-2-loc-3 city-2-loc-8)
  
  ; 2663,402 -> 2918,341
  (road city-2-loc-8 city-2-loc-4)
  
  ; 2918,341 -> 2663,402
  (road city-2-loc-4 city-2-loc-8)
  
  ; 2663,402 -> 2651,235
  (road city-2-loc-8 city-2-loc-5)
  
  ; 2651,235 -> 2663,402
  (road city-2-loc-5 city-2-loc-8)
  
  ; 2362,940 -> 2560,901
  (road city-2-loc-9 city-2-loc-6)
  
  ; 2560,901 -> 2362,940
  (road city-2-loc-6 city-2-loc-9)
  
  ; 2362,940 -> 2447,732
  (road city-2-loc-9 city-2-loc-7)
  
  ; 2447,732 -> 2362,940
  (road city-2-loc-7 city-2-loc-9)
  
  ; 2653,507 -> 2611,710
  (road city-2-loc-11 city-2-loc-2)
  
  ; 2611,710 -> 2653,507
  (road city-2-loc-2 city-2-loc-11)
  
  ; 2653,507 -> 2480,435
  (road city-2-loc-11 city-2-loc-3)
  
  ; 2480,435 -> 2653,507
  (road city-2-loc-3 city-2-loc-11)
  
  ; 2653,507 -> 2651,235
  (road city-2-loc-11 city-2-loc-5)
  
  ; 2651,235 -> 2653,507
  (road city-2-loc-5 city-2-loc-11)
  
  ; 2653,507 -> 2663,402
  (road city-2-loc-11 city-2-loc-8)
  
  ; 2663,402 -> 2653,507
  (road city-2-loc-8 city-2-loc-11)
  
  ; 2820,551 -> 2611,710
  (road city-2-loc-12 city-2-loc-2)
  
  ; 2611,710 -> 2820,551
  (road city-2-loc-2 city-2-loc-12)
  
  ; 2820,551 -> 2918,341
  (road city-2-loc-12 city-2-loc-4)
  
  ; 2918,341 -> 2820,551
  (road city-2-loc-4 city-2-loc-12)
  
  ; 2820,551 -> 2663,402
  (road city-2-loc-12 city-2-loc-8)
  
  ; 2663,402 -> 2820,551
  (road city-2-loc-8 city-2-loc-12)
  
  ; 2820,551 -> 2941,734
  (road city-2-loc-12 city-2-loc-10)
  
  ; 2941,734 -> 2820,551
  (road city-2-loc-10 city-2-loc-12)
  
  ; 2820,551 -> 2653,507
  (road city-2-loc-12 city-2-loc-11)
  
  ; 2653,507 -> 2820,551
  (road city-2-loc-11 city-2-loc-12)
  
  ; 2437,605 -> 2611,710
  (road city-2-loc-13 city-2-loc-2)
  
  ; 2611,710 -> 2437,605
  (road city-2-loc-2 city-2-loc-13)
  
  ; 2437,605 -> 2480,435
  (road city-2-loc-13 city-2-loc-3)
  
  ; 2480,435 -> 2437,605
  (road city-2-loc-3 city-2-loc-13)
  
  ; 2437,605 -> 2447,732
  (road city-2-loc-13 city-2-loc-7)
  
  ; 2447,732 -> 2437,605
  (road city-2-loc-7 city-2-loc-13)
  
  ; 2437,605 -> 2653,507
  (road city-2-loc-13 city-2-loc-11)
  
  ; 2653,507 -> 2437,605
  (road city-2-loc-11 city-2-loc-13)
  
  ; 2497,244 -> 2480,435
  (road city-2-loc-14 city-2-loc-3)
  
  ; 2480,435 -> 2497,244
  (road city-2-loc-3 city-2-loc-14)
  
  ; 2497,244 -> 2651,235
  (road city-2-loc-14 city-2-loc-5)
  
  ; 2651,235 -> 2497,244
  (road city-2-loc-5 city-2-loc-14)
  
  ; 2497,244 -> 2663,402
  (road city-2-loc-14 city-2-loc-8)
  
  ; 2663,402 -> 2497,244
  (road city-2-loc-8 city-2-loc-14)
  
  ; 2305,509 -> 2193,424
  (road city-2-loc-15 city-2-loc-1)
  
  ; 2193,424 -> 2305,509
  (road city-2-loc-1 city-2-loc-15)
  
  ; 2305,509 -> 2480,435
  (road city-2-loc-15 city-2-loc-3)
  
  ; 2480,435 -> 2305,509
  (road city-2-loc-3 city-2-loc-15)
  
  ; 2305,509 -> 2447,732
  (road city-2-loc-15 city-2-loc-7)
  
  ; 2447,732 -> 2305,509
  (road city-2-loc-7 city-2-loc-15)
  
  ; 2305,509 -> 2437,605
  (road city-2-loc-15 city-2-loc-13)
  
  ; 2437,605 -> 2305,509
  (road city-2-loc-13 city-2-loc-15)
  
  ; 720,241 <-> 2193,424
  (road city-1-loc-9 city-2-loc-1)
  
  (road city-2-loc-1 city-1-loc-9)
  
  (at package-1 city-1-loc-6)
  (at package-2 city-1-loc-15)
  (at package-3 city-1-loc-11)
  (at package-4 city-1-loc-1)
  (at package-5 city-1-loc-7)
  (at package-6 city-1-loc-3)
  (at package-7 city-1-loc-7)
  (at package-8 city-1-loc-14)
  (at package-9 city-1-loc-8)
  (at package-10 city-1-loc-12)
  (at truck-1 city-2-loc-8)
  (capacity truck-1 capacity-2)
  (at truck-2 city-2-loc-14)
  (capacity truck-2 capacity-3)
  (at truck-3 city-2-loc-6)
  (capacity truck-3 capacity-4)
 )
 (:goal (and
  (at package-1 city-2-loc-5)
  (at package-2 city-2-loc-11)
  (at package-3 city-2-loc-4)
  (at package-4 city-2-loc-5)
  (at package-5 city-2-loc-2)
  (at package-6 city-2-loc-12)
  (at package-7 city-2-loc-5)
  (at package-8 city-2-loc-4)
  (at package-9 city-2-loc-3)
  (at package-10 city-2-loc-7)
 ))
 
)
