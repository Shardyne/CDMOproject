(set-logic QF_LIA)
(set-option :produce-models true)
(set-option :timeout 300000)
(set-option :smt.threads 1)
; benchmark generated from python API
(set-info :status unknown)
(declare-fun Per_0_0 () Int)
(declare-fun Opp_0_0 () Int)
(declare-fun Per_0_1 () Int)
(declare-fun Opp_0_1 () Int)
(declare-fun Per_0_2 () Int)
(declare-fun Opp_0_2 () Int)
(declare-fun Per_1_0 () Int)
(declare-fun Opp_1_0 () Int)
(declare-fun Per_1_1 () Int)
(declare-fun Opp_1_1 () Int)
(declare-fun Per_1_2 () Int)
(declare-fun Opp_1_2 () Int)
(declare-fun Per_2_0 () Int)
(declare-fun Opp_2_0 () Int)
(declare-fun Per_2_1 () Int)
(declare-fun Opp_2_1 () Int)
(declare-fun Per_2_2 () Int)
(declare-fun Opp_2_2 () Int)
(declare-fun Per_3_0 () Int)
(declare-fun Opp_3_0 () Int)
(declare-fun Per_3_1 () Int)
(declare-fun Opp_3_1 () Int)
(declare-fun Per_3_2 () Int)
(declare-fun Opp_3_2 () Int)
(declare-fun Home_1_0 () Bool)
(declare-fun Home_0_0 () Bool)
(declare-fun Home_1_1 () Bool)
(declare-fun Home_0_1 () Bool)
(declare-fun Home_1_2 () Bool)
(declare-fun Home_0_2 () Bool)
(declare-fun Home_2_0 () Bool)
(declare-fun Home_2_1 () Bool)
(declare-fun Home_2_2 () Bool)
(declare-fun Home_3_0 () Bool)
(declare-fun Home_3_1 () Bool)
(declare-fun Home_3_2 () Bool)
(declare-fun High_0 () Bool)
(declare-fun High_1 () Bool)
(declare-fun High_2 () Bool)
(declare-fun High_3 () Bool)
(assert
 (let (($x48 (<= Per_0_0 2)))
 (let (($x46 (>= Per_0_0 1)))
 (and $x46 $x48))))
(assert
 (let (($x69 (<= Opp_0_0 4)))
 (let (($x67 (>= Opp_0_0 1)))
 (and $x67 $x69))))
(assert
 (and (distinct Opp_0_0 1) true))
(assert
 (let (($x75 (<= Per_0_1 2)))
 (let (($x74 (>= Per_0_1 1)))
 (and $x74 $x75))))
(assert
 (let (($x78 (<= Opp_0_1 4)))
 (let (($x77 (>= Opp_0_1 1)))
 (and $x77 $x78))))
(assert
 (and (distinct Opp_0_1 1) true))
(assert
 (let (($x84 (<= Per_0_2 2)))
 (let (($x83 (>= Per_0_2 1)))
 (and $x83 $x84))))
(assert
 (let (($x87 (<= Opp_0_2 4)))
 (let (($x86 (>= Opp_0_2 1)))
 (and $x86 $x87))))
(assert
 (and (distinct Opp_0_2 1) true))
(assert
 (let (($x93 (<= Per_1_0 2)))
 (let (($x92 (>= Per_1_0 1)))
 (and $x92 $x93))))
(assert
 (let (($x96 (<= Opp_1_0 4)))
 (let (($x95 (>= Opp_1_0 1)))
 (and $x95 $x96))))
(assert
 (and (distinct Opp_1_0 2) true))
(assert
 (let (($x102 (<= Per_1_1 2)))
 (let (($x101 (>= Per_1_1 1)))
 (and $x101 $x102))))
(assert
 (let (($x105 (<= Opp_1_1 4)))
 (let (($x104 (>= Opp_1_1 1)))
 (and $x104 $x105))))
(assert
 (and (distinct Opp_1_1 2) true))
(assert
 (let (($x111 (<= Per_1_2 2)))
 (let (($x110 (>= Per_1_2 1)))
 (and $x110 $x111))))
(assert
 (let (($x114 (<= Opp_1_2 4)))
 (let (($x113 (>= Opp_1_2 1)))
 (and $x113 $x114))))
(assert
 (and (distinct Opp_1_2 2) true))
(assert
 (let (($x120 (<= Per_2_0 2)))
 (let (($x119 (>= Per_2_0 1)))
 (and $x119 $x120))))
(assert
 (let (($x123 (<= Opp_2_0 4)))
 (let (($x122 (>= Opp_2_0 1)))
 (and $x122 $x123))))
(assert
 (and (distinct Opp_2_0 3) true))
(assert
 (let (($x130 (<= Per_2_1 2)))
 (let (($x129 (>= Per_2_1 1)))
 (and $x129 $x130))))
(assert
 (let (($x133 (<= Opp_2_1 4)))
 (let (($x132 (>= Opp_2_1 1)))
 (and $x132 $x133))))
(assert
 (and (distinct Opp_2_1 3) true))
(assert
 (let (($x139 (<= Per_2_2 2)))
 (let (($x138 (>= Per_2_2 1)))
 (and $x138 $x139))))
(assert
 (let (($x142 (<= Opp_2_2 4)))
 (let (($x141 (>= Opp_2_2 1)))
 (and $x141 $x142))))
(assert
 (and (distinct Opp_2_2 3) true))
(assert
 (let (($x148 (<= Per_3_0 2)))
 (let (($x147 (>= Per_3_0 1)))
 (and $x147 $x148))))
(assert
 (let (($x151 (<= Opp_3_0 4)))
 (let (($x150 (>= Opp_3_0 1)))
 (and $x150 $x151))))
(assert
 (and (distinct Opp_3_0 4) true))
(assert
 (let (($x157 (<= Per_3_1 2)))
 (let (($x156 (>= Per_3_1 1)))
 (and $x156 $x157))))
(assert
 (let (($x160 (<= Opp_3_1 4)))
 (let (($x159 (>= Opp_3_1 1)))
 (and $x159 $x160))))
(assert
 (and (distinct Opp_3_1 4) true))
(assert
 (let (($x166 (<= Per_3_2 2)))
 (let (($x165 (>= Per_3_2 1)))
 (and $x165 $x166))))
(assert
 (let (($x169 (<= Opp_3_2 4)))
 (let (($x168 (>= Opp_3_2 1)))
 (and $x168 $x169))))
(assert
 (and (distinct Opp_3_2 4) true))
(assert
 (let (($x176 (= Opp_1_0 1)))
 (let (($x177 (and (= Per_0_0 Per_1_0) $x176)))
 (let (($x174 (= Opp_0_0 2)))
 (=> $x174 $x177)))))
(assert
 (let (($x174 (= Opp_0_0 2)))
 (let (($x176 (= Opp_1_0 1)))
 (let (($x177 (and (= Per_0_0 Per_1_0) $x176)))
 (=> $x177 $x174)))))
(assert
 (let (($x174 (= Opp_0_0 2)))
 (=> $x174 (xor Home_0_0 Home_1_0))))
(assert
 (let (($x191 (= Opp_1_1 1)))
 (let (($x192 (and (= Per_0_1 Per_1_1) $x191)))
 (let (($x189 (= Opp_0_1 2)))
 (=> $x189 $x192)))))
(assert
 (let (($x189 (= Opp_0_1 2)))
 (let (($x191 (= Opp_1_1 1)))
 (let (($x192 (and (= Per_0_1 Per_1_1) $x191)))
 (=> $x192 $x189)))))
(assert
 (let (($x189 (= Opp_0_1 2)))
 (=> $x189 (xor Home_0_1 Home_1_1))))
(assert
 (let (($x206 (= Opp_1_2 1)))
 (let (($x207 (and (= Per_0_2 Per_1_2) $x206)))
 (let (($x204 (= Opp_0_2 2)))
 (=> $x204 $x207)))))
(assert
 (let (($x204 (= Opp_0_2 2)))
 (let (($x206 (= Opp_1_2 1)))
 (let (($x207 (and (= Per_0_2 Per_1_2) $x206)))
 (=> $x207 $x204)))))
(assert
 (let (($x204 (= Opp_0_2 2)))
 (=> $x204 (xor Home_0_2 Home_1_2))))
(assert
 (let (($x221 (= Opp_2_0 1)))
 (let (($x222 (and (= Per_0_0 Per_2_0) $x221)))
 (let (($x219 (= Opp_0_0 3)))
 (=> $x219 $x222)))))
(assert
 (let (($x219 (= Opp_0_0 3)))
 (let (($x221 (= Opp_2_0 1)))
 (let (($x222 (and (= Per_0_0 Per_2_0) $x221)))
 (=> $x222 $x219)))))
(assert
 (let (($x219 (= Opp_0_0 3)))
 (=> $x219 (xor Home_0_0 Home_2_0))))
(assert
 (let (($x236 (= Opp_2_1 1)))
 (let (($x237 (and (= Per_0_1 Per_2_1) $x236)))
 (let (($x234 (= Opp_0_1 3)))
 (=> $x234 $x237)))))
(assert
 (let (($x234 (= Opp_0_1 3)))
 (let (($x236 (= Opp_2_1 1)))
 (let (($x237 (and (= Per_0_1 Per_2_1) $x236)))
 (=> $x237 $x234)))))
(assert
 (let (($x234 (= Opp_0_1 3)))
 (=> $x234 (xor Home_0_1 Home_2_1))))
(assert
 (let (($x251 (= Opp_2_2 1)))
 (let (($x252 (and (= Per_0_2 Per_2_2) $x251)))
 (let (($x249 (= Opp_0_2 3)))
 (=> $x249 $x252)))))
(assert
 (let (($x249 (= Opp_0_2 3)))
 (let (($x251 (= Opp_2_2 1)))
 (let (($x252 (and (= Per_0_2 Per_2_2) $x251)))
 (=> $x252 $x249)))))
(assert
 (let (($x249 (= Opp_0_2 3)))
 (=> $x249 (xor Home_0_2 Home_2_2))))
(assert
 (let (($x266 (= Opp_3_0 1)))
 (let (($x267 (and (= Per_0_0 Per_3_0) $x266)))
 (let (($x264 (= Opp_0_0 4)))
 (=> $x264 $x267)))))
(assert
 (let (($x264 (= Opp_0_0 4)))
 (let (($x266 (= Opp_3_0 1)))
 (let (($x267 (and (= Per_0_0 Per_3_0) $x266)))
 (=> $x267 $x264)))))
(assert
 (let (($x264 (= Opp_0_0 4)))
 (=> $x264 (xor Home_0_0 Home_3_0))))
(assert
 (let (($x281 (= Opp_3_1 1)))
 (let (($x282 (and (= Per_0_1 Per_3_1) $x281)))
 (let (($x279 (= Opp_0_1 4)))
 (=> $x279 $x282)))))
(assert
 (let (($x279 (= Opp_0_1 4)))
 (let (($x281 (= Opp_3_1 1)))
 (let (($x282 (and (= Per_0_1 Per_3_1) $x281)))
 (=> $x282 $x279)))))
(assert
 (let (($x279 (= Opp_0_1 4)))
 (=> $x279 (xor Home_0_1 Home_3_1))))
(assert
 (let (($x296 (= Opp_3_2 1)))
 (let (($x297 (and (= Per_0_2 Per_3_2) $x296)))
 (let (($x294 (= Opp_0_2 4)))
 (=> $x294 $x297)))))
(assert
 (let (($x294 (= Opp_0_2 4)))
 (let (($x296 (= Opp_3_2 1)))
 (let (($x297 (and (= Per_0_2 Per_3_2) $x296)))
 (=> $x297 $x294)))))
(assert
 (let (($x294 (= Opp_0_2 4)))
 (=> $x294 (xor Home_0_2 Home_3_2))))
(assert
 (let (($x174 (= Opp_0_0 2)))
 (let (($x310 (and (= Per_1_0 Per_0_0) $x174)))
 (let (($x176 (= Opp_1_0 1)))
 (=> $x176 $x310)))))
(assert
 (let (($x176 (= Opp_1_0 1)))
 (let (($x174 (= Opp_0_0 2)))
 (let (($x310 (and (= Per_1_0 Per_0_0) $x174)))
 (=> $x310 $x176)))))
(assert
 (let (($x176 (= Opp_1_0 1)))
 (=> $x176 (xor Home_1_0 Home_0_0))))
(assert
 (let (($x189 (= Opp_0_1 2)))
 (let (($x323 (and (= Per_1_1 Per_0_1) $x189)))
 (let (($x191 (= Opp_1_1 1)))
 (=> $x191 $x323)))))
(assert
 (let (($x191 (= Opp_1_1 1)))
 (let (($x189 (= Opp_0_1 2)))
 (let (($x323 (and (= Per_1_1 Per_0_1) $x189)))
 (=> $x323 $x191)))))
(assert
 (let (($x191 (= Opp_1_1 1)))
 (=> $x191 (xor Home_1_1 Home_0_1))))
(assert
 (let (($x204 (= Opp_0_2 2)))
 (let (($x336 (and (= Per_1_2 Per_0_2) $x204)))
 (let (($x206 (= Opp_1_2 1)))
 (=> $x206 $x336)))))
(assert
 (let (($x206 (= Opp_1_2 1)))
 (let (($x204 (= Opp_0_2 2)))
 (let (($x336 (and (= Per_1_2 Per_0_2) $x204)))
 (=> $x336 $x206)))))
(assert
 (let (($x206 (= Opp_1_2 1)))
 (=> $x206 (xor Home_1_2 Home_0_2))))
(assert
 (let (($x350 (= Opp_2_0 2)))
 (let (($x351 (and (= Per_1_0 Per_2_0) $x350)))
 (let (($x348 (= Opp_1_0 3)))
 (=> $x348 $x351)))))
(assert
 (let (($x348 (= Opp_1_0 3)))
 (let (($x350 (= Opp_2_0 2)))
 (let (($x351 (and (= Per_1_0 Per_2_0) $x350)))
 (=> $x351 $x348)))))
(assert
 (let (($x348 (= Opp_1_0 3)))
 (=> $x348 (xor Home_1_0 Home_2_0))))
(assert
 (let (($x365 (= Opp_2_1 2)))
 (let (($x366 (and (= Per_1_1 Per_2_1) $x365)))
 (let (($x363 (= Opp_1_1 3)))
 (=> $x363 $x366)))))
(assert
 (let (($x363 (= Opp_1_1 3)))
 (let (($x365 (= Opp_2_1 2)))
 (let (($x366 (and (= Per_1_1 Per_2_1) $x365)))
 (=> $x366 $x363)))))
(assert
 (let (($x363 (= Opp_1_1 3)))
 (=> $x363 (xor Home_1_1 Home_2_1))))
(assert
 (let (($x380 (= Opp_2_2 2)))
 (let (($x381 (and (= Per_1_2 Per_2_2) $x380)))
 (let (($x378 (= Opp_1_2 3)))
 (=> $x378 $x381)))))
(assert
 (let (($x378 (= Opp_1_2 3)))
 (let (($x380 (= Opp_2_2 2)))
 (let (($x381 (and (= Per_1_2 Per_2_2) $x380)))
 (=> $x381 $x378)))))
(assert
 (let (($x378 (= Opp_1_2 3)))
 (=> $x378 (xor Home_1_2 Home_2_2))))
(assert
 (let (($x395 (= Opp_3_0 2)))
 (let (($x396 (and (= Per_1_0 Per_3_0) $x395)))
 (let (($x393 (= Opp_1_0 4)))
 (=> $x393 $x396)))))
(assert
 (let (($x393 (= Opp_1_0 4)))
 (let (($x395 (= Opp_3_0 2)))
 (let (($x396 (and (= Per_1_0 Per_3_0) $x395)))
 (=> $x396 $x393)))))
(assert
 (let (($x393 (= Opp_1_0 4)))
 (=> $x393 (xor Home_1_0 Home_3_0))))
(assert
 (let (($x410 (= Opp_3_1 2)))
 (let (($x411 (and (= Per_1_1 Per_3_1) $x410)))
 (let (($x408 (= Opp_1_1 4)))
 (=> $x408 $x411)))))
(assert
 (let (($x408 (= Opp_1_1 4)))
 (let (($x410 (= Opp_3_1 2)))
 (let (($x411 (and (= Per_1_1 Per_3_1) $x410)))
 (=> $x411 $x408)))))
(assert
 (let (($x408 (= Opp_1_1 4)))
 (=> $x408 (xor Home_1_1 Home_3_1))))
(assert
 (let (($x425 (= Opp_3_2 2)))
 (let (($x426 (and (= Per_1_2 Per_3_2) $x425)))
 (let (($x423 (= Opp_1_2 4)))
 (=> $x423 $x426)))))
(assert
 (let (($x423 (= Opp_1_2 4)))
 (let (($x425 (= Opp_3_2 2)))
 (let (($x426 (and (= Per_1_2 Per_3_2) $x425)))
 (=> $x426 $x423)))))
(assert
 (let (($x423 (= Opp_1_2 4)))
 (=> $x423 (xor Home_1_2 Home_3_2))))
(assert
 (let (($x219 (= Opp_0_0 3)))
 (let (($x439 (and (= Per_2_0 Per_0_0) $x219)))
 (let (($x221 (= Opp_2_0 1)))
 (=> $x221 $x439)))))
(assert
 (let (($x221 (= Opp_2_0 1)))
 (let (($x219 (= Opp_0_0 3)))
 (let (($x439 (and (= Per_2_0 Per_0_0) $x219)))
 (=> $x439 $x221)))))
(assert
 (let (($x221 (= Opp_2_0 1)))
 (=> $x221 (xor Home_2_0 Home_0_0))))
(assert
 (let (($x234 (= Opp_0_1 3)))
 (let (($x452 (and (= Per_2_1 Per_0_1) $x234)))
 (let (($x236 (= Opp_2_1 1)))
 (=> $x236 $x452)))))
(assert
 (let (($x236 (= Opp_2_1 1)))
 (let (($x234 (= Opp_0_1 3)))
 (let (($x452 (and (= Per_2_1 Per_0_1) $x234)))
 (=> $x452 $x236)))))
(assert
 (let (($x236 (= Opp_2_1 1)))
 (=> $x236 (xor Home_2_1 Home_0_1))))
(assert
 (let (($x249 (= Opp_0_2 3)))
 (let (($x465 (and (= Per_2_2 Per_0_2) $x249)))
 (let (($x251 (= Opp_2_2 1)))
 (=> $x251 $x465)))))
(assert
 (let (($x251 (= Opp_2_2 1)))
 (let (($x249 (= Opp_0_2 3)))
 (let (($x465 (and (= Per_2_2 Per_0_2) $x249)))
 (=> $x465 $x251)))))
(assert
 (let (($x251 (= Opp_2_2 1)))
 (=> $x251 (xor Home_2_2 Home_0_2))))
(assert
 (let (($x348 (= Opp_1_0 3)))
 (let (($x478 (and (= Per_2_0 Per_1_0) $x348)))
 (let (($x350 (= Opp_2_0 2)))
 (=> $x350 $x478)))))
(assert
 (let (($x350 (= Opp_2_0 2)))
 (let (($x348 (= Opp_1_0 3)))
 (let (($x478 (and (= Per_2_0 Per_1_0) $x348)))
 (=> $x478 $x350)))))
(assert
 (let (($x350 (= Opp_2_0 2)))
 (=> $x350 (xor Home_2_0 Home_1_0))))
(assert
 (let (($x363 (= Opp_1_1 3)))
 (let (($x491 (and (= Per_2_1 Per_1_1) $x363)))
 (let (($x365 (= Opp_2_1 2)))
 (=> $x365 $x491)))))
(assert
 (let (($x365 (= Opp_2_1 2)))
 (let (($x363 (= Opp_1_1 3)))
 (let (($x491 (and (= Per_2_1 Per_1_1) $x363)))
 (=> $x491 $x365)))))
(assert
 (let (($x365 (= Opp_2_1 2)))
 (=> $x365 (xor Home_2_1 Home_1_1))))
(assert
 (let (($x378 (= Opp_1_2 3)))
 (let (($x504 (and (= Per_2_2 Per_1_2) $x378)))
 (let (($x380 (= Opp_2_2 2)))
 (=> $x380 $x504)))))
(assert
 (let (($x380 (= Opp_2_2 2)))
 (let (($x378 (= Opp_1_2 3)))
 (let (($x504 (and (= Per_2_2 Per_1_2) $x378)))
 (=> $x504 $x380)))))
(assert
 (let (($x380 (= Opp_2_2 2)))
 (=> $x380 (xor Home_2_2 Home_1_2))))
(assert
 (let (($x518 (= Opp_3_0 3)))
 (let (($x519 (and (= Per_2_0 Per_3_0) $x518)))
 (let (($x516 (= Opp_2_0 4)))
 (=> $x516 $x519)))))
(assert
 (let (($x516 (= Opp_2_0 4)))
 (let (($x518 (= Opp_3_0 3)))
 (let (($x519 (and (= Per_2_0 Per_3_0) $x518)))
 (=> $x519 $x516)))))
(assert
 (let (($x516 (= Opp_2_0 4)))
 (=> $x516 (xor Home_2_0 Home_3_0))))
(assert
 (let (($x533 (= Opp_3_1 3)))
 (let (($x534 (and (= Per_2_1 Per_3_1) $x533)))
 (let (($x531 (= Opp_2_1 4)))
 (=> $x531 $x534)))))
(assert
 (let (($x531 (= Opp_2_1 4)))
 (let (($x533 (= Opp_3_1 3)))
 (let (($x534 (and (= Per_2_1 Per_3_1) $x533)))
 (=> $x534 $x531)))))
(assert
 (let (($x531 (= Opp_2_1 4)))
 (=> $x531 (xor Home_2_1 Home_3_1))))
(assert
 (let (($x548 (= Opp_3_2 3)))
 (let (($x549 (and (= Per_2_2 Per_3_2) $x548)))
 (let (($x546 (= Opp_2_2 4)))
 (=> $x546 $x549)))))
(assert
 (let (($x546 (= Opp_2_2 4)))
 (let (($x548 (= Opp_3_2 3)))
 (let (($x549 (and (= Per_2_2 Per_3_2) $x548)))
 (=> $x549 $x546)))))
(assert
 (let (($x546 (= Opp_2_2 4)))
 (=> $x546 (xor Home_2_2 Home_3_2))))
(assert
 (let (($x264 (= Opp_0_0 4)))
 (let (($x562 (and (= Per_3_0 Per_0_0) $x264)))
 (let (($x266 (= Opp_3_0 1)))
 (=> $x266 $x562)))))
(assert
 (let (($x266 (= Opp_3_0 1)))
 (let (($x264 (= Opp_0_0 4)))
 (let (($x562 (and (= Per_3_0 Per_0_0) $x264)))
 (=> $x562 $x266)))))
(assert
 (let (($x266 (= Opp_3_0 1)))
 (=> $x266 (xor Home_3_0 Home_0_0))))
(assert
 (let (($x279 (= Opp_0_1 4)))
 (let (($x575 (and (= Per_3_1 Per_0_1) $x279)))
 (let (($x281 (= Opp_3_1 1)))
 (=> $x281 $x575)))))
(assert
 (let (($x281 (= Opp_3_1 1)))
 (let (($x279 (= Opp_0_1 4)))
 (let (($x575 (and (= Per_3_1 Per_0_1) $x279)))
 (=> $x575 $x281)))))
(assert
 (let (($x281 (= Opp_3_1 1)))
 (=> $x281 (xor Home_3_1 Home_0_1))))
(assert
 (let (($x294 (= Opp_0_2 4)))
 (let (($x588 (and (= Per_3_2 Per_0_2) $x294)))
 (let (($x296 (= Opp_3_2 1)))
 (=> $x296 $x588)))))
(assert
 (let (($x296 (= Opp_3_2 1)))
 (let (($x294 (= Opp_0_2 4)))
 (let (($x588 (and (= Per_3_2 Per_0_2) $x294)))
 (=> $x588 $x296)))))
(assert
 (let (($x296 (= Opp_3_2 1)))
 (=> $x296 (xor Home_3_2 Home_0_2))))
(assert
 (let (($x393 (= Opp_1_0 4)))
 (let (($x601 (and (= Per_3_0 Per_1_0) $x393)))
 (let (($x395 (= Opp_3_0 2)))
 (=> $x395 $x601)))))
(assert
 (let (($x395 (= Opp_3_0 2)))
 (let (($x393 (= Opp_1_0 4)))
 (let (($x601 (and (= Per_3_0 Per_1_0) $x393)))
 (=> $x601 $x395)))))
(assert
 (let (($x395 (= Opp_3_0 2)))
 (=> $x395 (xor Home_3_0 Home_1_0))))
(assert
 (let (($x408 (= Opp_1_1 4)))
 (let (($x614 (and (= Per_3_1 Per_1_1) $x408)))
 (let (($x410 (= Opp_3_1 2)))
 (=> $x410 $x614)))))
(assert
 (let (($x410 (= Opp_3_1 2)))
 (let (($x408 (= Opp_1_1 4)))
 (let (($x614 (and (= Per_3_1 Per_1_1) $x408)))
 (=> $x614 $x410)))))
(assert
 (let (($x410 (= Opp_3_1 2)))
 (=> $x410 (xor Home_3_1 Home_1_1))))
(assert
 (let (($x423 (= Opp_1_2 4)))
 (let (($x627 (and (= Per_3_2 Per_1_2) $x423)))
 (let (($x425 (= Opp_3_2 2)))
 (=> $x425 $x627)))))
(assert
 (let (($x425 (= Opp_3_2 2)))
 (let (($x423 (= Opp_1_2 4)))
 (let (($x627 (and (= Per_3_2 Per_1_2) $x423)))
 (=> $x627 $x425)))))
(assert
 (let (($x425 (= Opp_3_2 2)))
 (=> $x425 (xor Home_3_2 Home_1_2))))
(assert
 (let (($x516 (= Opp_2_0 4)))
 (let (($x640 (and (= Per_3_0 Per_2_0) $x516)))
 (let (($x518 (= Opp_3_0 3)))
 (=> $x518 $x640)))))
(assert
 (let (($x518 (= Opp_3_0 3)))
 (let (($x516 (= Opp_2_0 4)))
 (let (($x640 (and (= Per_3_0 Per_2_0) $x516)))
 (=> $x640 $x518)))))
(assert
 (let (($x518 (= Opp_3_0 3)))
 (=> $x518 (xor Home_3_0 Home_2_0))))
(assert
 (let (($x531 (= Opp_2_1 4)))
 (let (($x653 (and (= Per_3_1 Per_2_1) $x531)))
 (let (($x533 (= Opp_3_1 3)))
 (=> $x533 $x653)))))
(assert
 (let (($x533 (= Opp_3_1 3)))
 (let (($x531 (= Opp_2_1 4)))
 (let (($x653 (and (= Per_3_1 Per_2_1) $x531)))
 (=> $x653 $x533)))))
(assert
 (let (($x533 (= Opp_3_1 3)))
 (=> $x533 (xor Home_3_1 Home_2_1))))
(assert
 (let (($x546 (= Opp_2_2 4)))
 (let (($x666 (and (= Per_3_2 Per_2_2) $x546)))
 (let (($x548 (= Opp_3_2 3)))
 (=> $x548 $x666)))))
(assert
 (let (($x548 (= Opp_3_2 3)))
 (let (($x546 (= Opp_2_2 4)))
 (let (($x666 (and (= Per_3_2 Per_2_2) $x546)))
 (=> $x666 $x548)))))
(assert
 (let (($x548 (= Opp_3_2 3)))
 (=> $x548 (xor Home_3_2 Home_2_2))))
(assert
 (and (distinct Opp_0_0 Opp_0_1 Opp_0_2) true))
(assert
 (and (distinct Opp_1_0 Opp_1_1 Opp_1_2) true))
(assert
 (and (distinct Opp_2_0 Opp_2_1 Opp_2_2) true))
(assert
 (and (distinct Opp_3_0 Opp_3_1 Opp_3_2) true))
(assert
 (let (($x689 (= Per_3_0 1)))
 (let ((?x690 (ite $x689 1 0)))
 (let ((?x688 (ite (= Per_2_0 1) 1 0)))
 (let ((?x686 (ite (= Per_1_0 1) 1 0)))
 (let (($x682 (= Per_0_0 1)))
 (let ((?x684 (ite $x682 1 0)))
 (= (+ ?x684 ?x686 ?x688 ?x690) 2))))))))
(assert
 (let ((?x700 (ite (= Per_3_0 2) 1 0)))
 (let (($x697 (= Per_2_0 2)))
 (let ((?x698 (ite $x697 1 0)))
 (let (($x695 (= Per_1_0 2)))
 (let ((?x696 (ite $x695 1 0)))
 (let ((?x694 (ite (= Per_0_0 2) 1 0)))
 (= (+ ?x694 ?x696 ?x698 ?x700) 2))))))))
(assert
 (let ((?x710 (ite (= Per_3_1 1) 1 0)))
 (let ((?x708 (ite (= Per_2_1 1) 1 0)))
 (let ((?x706 (ite (= Per_1_1 1) 1 0)))
 (let ((?x704 (ite (= Per_0_1 1) 1 0)))
 (= (+ ?x704 ?x706 ?x708 ?x710) 2))))))
(assert
 (let ((?x720 (ite (= Per_3_1 2) 1 0)))
 (let ((?x718 (ite (= Per_2_1 2) 1 0)))
 (let ((?x716 (ite (= Per_1_1 2) 1 0)))
 (let ((?x714 (ite (= Per_0_1 2) 1 0)))
 (= (+ ?x714 ?x716 ?x718 ?x720) 2))))))
(assert
 (let ((?x730 (ite (= Per_3_2 1) 1 0)))
 (let ((?x728 (ite (= Per_2_2 1) 1 0)))
 (let ((?x726 (ite (= Per_1_2 1) 1 0)))
 (let ((?x724 (ite (= Per_0_2 1) 1 0)))
 (= (+ ?x724 ?x726 ?x728 ?x730) 2))))))
(assert
 (let ((?x740 (ite (= Per_3_2 2) 1 0)))
 (let ((?x738 (ite (= Per_2_2 2) 1 0)))
 (let ((?x736 (ite (= Per_1_2 2) 1 0)))
 (let ((?x734 (ite (= Per_0_2 2) 1 0)))
 (= (+ ?x734 ?x736 ?x738 ?x740) 2))))))
(assert
 (let ((?x724 (ite (= Per_0_2 1) 1 0)))
 (let ((?x704 (ite (= Per_0_1 1) 1 0)))
 (let (($x682 (= Per_0_0 1)))
 (let ((?x684 (ite $x682 1 0)))
 (<= (+ ?x684 ?x704 ?x724) 2))))))
(assert
 (let ((?x734 (ite (= Per_0_2 2) 1 0)))
 (let ((?x714 (ite (= Per_0_1 2) 1 0)))
 (let ((?x694 (ite (= Per_0_0 2) 1 0)))
 (<= (+ ?x694 ?x714 ?x734) 2)))))
(assert
 (let ((?x726 (ite (= Per_1_2 1) 1 0)))
 (let ((?x706 (ite (= Per_1_1 1) 1 0)))
 (let ((?x686 (ite (= Per_1_0 1) 1 0)))
 (<= (+ ?x686 ?x706 ?x726) 2)))))
(assert
 (let ((?x736 (ite (= Per_1_2 2) 1 0)))
 (let ((?x716 (ite (= Per_1_1 2) 1 0)))
 (let (($x695 (= Per_1_0 2)))
 (let ((?x696 (ite $x695 1 0)))
 (<= (+ ?x696 ?x716 ?x736) 2))))))
(assert
 (let ((?x728 (ite (= Per_2_2 1) 1 0)))
 (let ((?x708 (ite (= Per_2_1 1) 1 0)))
 (let ((?x688 (ite (= Per_2_0 1) 1 0)))
 (<= (+ ?x688 ?x708 ?x728) 2)))))
(assert
 (let ((?x738 (ite (= Per_2_2 2) 1 0)))
 (let ((?x718 (ite (= Per_2_1 2) 1 0)))
 (let (($x697 (= Per_2_0 2)))
 (let ((?x698 (ite $x697 1 0)))
 (<= (+ ?x698 ?x718 ?x738) 2))))))
(assert
 (let ((?x730 (ite (= Per_3_2 1) 1 0)))
 (let ((?x710 (ite (= Per_3_1 1) 1 0)))
 (let (($x689 (= Per_3_0 1)))
 (let ((?x690 (ite $x689 1 0)))
 (<= (+ ?x690 ?x710 ?x730) 2))))))
(assert
 (let ((?x740 (ite (= Per_3_2 2) 1 0)))
 (let ((?x720 (ite (= Per_3_1 2) 1 0)))
 (let ((?x700 (ite (= Per_3_0 2) 1 0)))
 (<= (+ ?x700 ?x720 ?x740) 2)))))
(assert
 (let ((?x761 (ite Home_0_2 1 0)))
 (let ((?x760 (ite Home_0_1 1 0)))
 (let ((?x759 (ite Home_0_0 1 0)))
 (let ((?x762 (+ ?x759 ?x760 ?x761)))
 (= ?x762 (+ 1 (ite High_0 1 0))))))))
(assert
 (let ((?x765 (ite Home_1_2 1 0)))
 (let ((?x764 (ite Home_1_1 1 0)))
 (let ((?x763 (ite Home_1_0 1 0)))
 (let ((?x766 (+ ?x763 ?x764 ?x765)))
 (= ?x766 (+ 1 (ite High_1 1 0))))))))
(assert
 (let ((?x769 (ite Home_2_2 1 0)))
 (let ((?x768 (ite Home_2_1 1 0)))
 (let ((?x767 (ite Home_2_0 1 0)))
 (let ((?x770 (+ ?x767 ?x768 ?x769)))
 (= ?x770 (+ 1 (ite High_2 1 0))))))))
(assert
 (let ((?x773 (ite Home_3_2 1 0)))
 (let ((?x772 (ite Home_3_1 1 0)))
 (let ((?x771 (ite Home_3_0 1 0)))
 (let ((?x774 (+ ?x771 ?x772 ?x773)))
 (= ?x774 (+ 1 (ite High_3 1 0))))))))
(assert
 (let ((?x794 (ite High_3 1 0)))
 (let ((?x788 (ite High_2 1 0)))
 (let ((?x782 (ite High_1 1 0)))
 (let ((?x775 (ite High_0 1 0)))
 (= (+ ?x775 ?x782 ?x788 ?x794) 2))))))
(assert
 (= Home_0_0 true))
(assert
 (= Per_0_0 1))
(assert
 (= Per_3_0 1))
(assert
 (= Per_1_0 2))
(assert
 (= Per_2_0 2))
(assert
 (> Opp_0_0 Opp_0_1))
(assert
 (> Opp_0_1 Opp_0_2))
(check-sat)
(get-model)
