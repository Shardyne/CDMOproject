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
(declare-fun Per_0_3 () Int)
(declare-fun Opp_0_3 () Int)
(declare-fun Per_0_4 () Int)
(declare-fun Opp_0_4 () Int)
(declare-fun Per_0_5 () Int)
(declare-fun Opp_0_5 () Int)
(declare-fun Per_0_6 () Int)
(declare-fun Opp_0_6 () Int)
(declare-fun Per_1_0 () Int)
(declare-fun Opp_1_0 () Int)
(declare-fun Per_1_1 () Int)
(declare-fun Opp_1_1 () Int)
(declare-fun Per_1_2 () Int)
(declare-fun Opp_1_2 () Int)
(declare-fun Per_1_3 () Int)
(declare-fun Opp_1_3 () Int)
(declare-fun Per_1_4 () Int)
(declare-fun Opp_1_4 () Int)
(declare-fun Per_1_5 () Int)
(declare-fun Opp_1_5 () Int)
(declare-fun Per_1_6 () Int)
(declare-fun Opp_1_6 () Int)
(declare-fun Per_2_0 () Int)
(declare-fun Opp_2_0 () Int)
(declare-fun Per_2_1 () Int)
(declare-fun Opp_2_1 () Int)
(declare-fun Per_2_2 () Int)
(declare-fun Opp_2_2 () Int)
(declare-fun Per_2_3 () Int)
(declare-fun Opp_2_3 () Int)
(declare-fun Per_2_4 () Int)
(declare-fun Opp_2_4 () Int)
(declare-fun Per_2_5 () Int)
(declare-fun Opp_2_5 () Int)
(declare-fun Per_2_6 () Int)
(declare-fun Opp_2_6 () Int)
(declare-fun Per_3_0 () Int)
(declare-fun Opp_3_0 () Int)
(declare-fun Per_3_1 () Int)
(declare-fun Opp_3_1 () Int)
(declare-fun Per_3_2 () Int)
(declare-fun Opp_3_2 () Int)
(declare-fun Per_3_3 () Int)
(declare-fun Opp_3_3 () Int)
(declare-fun Per_3_4 () Int)
(declare-fun Opp_3_4 () Int)
(declare-fun Per_3_5 () Int)
(declare-fun Opp_3_5 () Int)
(declare-fun Per_3_6 () Int)
(declare-fun Opp_3_6 () Int)
(declare-fun Per_4_0 () Int)
(declare-fun Opp_4_0 () Int)
(declare-fun Per_4_1 () Int)
(declare-fun Opp_4_1 () Int)
(declare-fun Per_4_2 () Int)
(declare-fun Opp_4_2 () Int)
(declare-fun Per_4_3 () Int)
(declare-fun Opp_4_3 () Int)
(declare-fun Per_4_4 () Int)
(declare-fun Opp_4_4 () Int)
(declare-fun Per_4_5 () Int)
(declare-fun Opp_4_5 () Int)
(declare-fun Per_4_6 () Int)
(declare-fun Opp_4_6 () Int)
(declare-fun Per_5_0 () Int)
(declare-fun Opp_5_0 () Int)
(declare-fun Per_5_1 () Int)
(declare-fun Opp_5_1 () Int)
(declare-fun Per_5_2 () Int)
(declare-fun Opp_5_2 () Int)
(declare-fun Per_5_3 () Int)
(declare-fun Opp_5_3 () Int)
(declare-fun Per_5_4 () Int)
(declare-fun Opp_5_4 () Int)
(declare-fun Per_5_5 () Int)
(declare-fun Opp_5_5 () Int)
(declare-fun Per_5_6 () Int)
(declare-fun Opp_5_6 () Int)
(declare-fun Per_6_0 () Int)
(declare-fun Opp_6_0 () Int)
(declare-fun Per_6_1 () Int)
(declare-fun Opp_6_1 () Int)
(declare-fun Per_6_2 () Int)
(declare-fun Opp_6_2 () Int)
(declare-fun Per_6_3 () Int)
(declare-fun Opp_6_3 () Int)
(declare-fun Per_6_4 () Int)
(declare-fun Opp_6_4 () Int)
(declare-fun Per_6_5 () Int)
(declare-fun Opp_6_5 () Int)
(declare-fun Per_6_6 () Int)
(declare-fun Opp_6_6 () Int)
(declare-fun Per_7_0 () Int)
(declare-fun Opp_7_0 () Int)
(declare-fun Per_7_1 () Int)
(declare-fun Opp_7_1 () Int)
(declare-fun Per_7_2 () Int)
(declare-fun Opp_7_2 () Int)
(declare-fun Per_7_3 () Int)
(declare-fun Opp_7_3 () Int)
(declare-fun Per_7_4 () Int)
(declare-fun Opp_7_4 () Int)
(declare-fun Per_7_5 () Int)
(declare-fun Opp_7_5 () Int)
(declare-fun Per_7_6 () Int)
(declare-fun Opp_7_6 () Int)
(declare-fun Home_1_0 () Bool)
(declare-fun Home_0_0 () Bool)
(declare-fun Home_1_1 () Bool)
(declare-fun Home_0_1 () Bool)
(declare-fun Home_1_2 () Bool)
(declare-fun Home_0_2 () Bool)
(declare-fun Home_1_3 () Bool)
(declare-fun Home_0_3 () Bool)
(declare-fun Home_1_4 () Bool)
(declare-fun Home_0_4 () Bool)
(declare-fun Home_1_5 () Bool)
(declare-fun Home_0_5 () Bool)
(declare-fun Home_1_6 () Bool)
(declare-fun Home_0_6 () Bool)
(declare-fun Home_2_0 () Bool)
(declare-fun Home_2_1 () Bool)
(declare-fun Home_2_2 () Bool)
(declare-fun Home_2_3 () Bool)
(declare-fun Home_2_4 () Bool)
(declare-fun Home_2_5 () Bool)
(declare-fun Home_2_6 () Bool)
(declare-fun Home_3_0 () Bool)
(declare-fun Home_3_1 () Bool)
(declare-fun Home_3_2 () Bool)
(declare-fun Home_3_3 () Bool)
(declare-fun Home_3_4 () Bool)
(declare-fun Home_3_5 () Bool)
(declare-fun Home_3_6 () Bool)
(declare-fun Home_4_0 () Bool)
(declare-fun Home_4_1 () Bool)
(declare-fun Home_4_2 () Bool)
(declare-fun Home_4_3 () Bool)
(declare-fun Home_4_4 () Bool)
(declare-fun Home_4_5 () Bool)
(declare-fun Home_4_6 () Bool)
(declare-fun Home_5_0 () Bool)
(declare-fun Home_5_1 () Bool)
(declare-fun Home_5_2 () Bool)
(declare-fun Home_5_3 () Bool)
(declare-fun Home_5_4 () Bool)
(declare-fun Home_5_5 () Bool)
(declare-fun Home_5_6 () Bool)
(declare-fun Home_6_0 () Bool)
(declare-fun Home_6_1 () Bool)
(declare-fun Home_6_2 () Bool)
(declare-fun Home_6_3 () Bool)
(declare-fun Home_6_4 () Bool)
(declare-fun Home_6_5 () Bool)
(declare-fun Home_6_6 () Bool)
(declare-fun Home_7_0 () Bool)
(declare-fun Home_7_1 () Bool)
(declare-fun Home_7_2 () Bool)
(declare-fun Home_7_3 () Bool)
(declare-fun Home_7_4 () Bool)
(declare-fun Home_7_5 () Bool)
(declare-fun Home_7_6 () Bool)
(declare-fun High_0 () Bool)
(declare-fun High_1 () Bool)
(declare-fun High_2 () Bool)
(declare-fun High_3 () Bool)
(declare-fun High_4 () Bool)
(declare-fun High_5 () Bool)
(declare-fun High_6 () Bool)
(declare-fun High_7 () Bool)
(assert
 (let (($x184 (<= Per_0_0 4)))
 (let (($x182 (>= Per_0_0 1)))
 (and $x182 $x184))))
(assert
 (let (($x205 (<= Opp_0_0 8)))
 (let (($x203 (>= Opp_0_0 1)))
 (and $x203 $x205))))
(assert
 (and (distinct Opp_0_0 1) true))
(assert
 (let (($x211 (<= Per_0_1 4)))
 (let (($x210 (>= Per_0_1 1)))
 (and $x210 $x211))))
(assert
 (let (($x214 (<= Opp_0_1 8)))
 (let (($x213 (>= Opp_0_1 1)))
 (and $x213 $x214))))
(assert
 (and (distinct Opp_0_1 1) true))
(assert
 (let (($x220 (<= Per_0_2 4)))
 (let (($x219 (>= Per_0_2 1)))
 (and $x219 $x220))))
(assert
 (let (($x223 (<= Opp_0_2 8)))
 (let (($x222 (>= Opp_0_2 1)))
 (and $x222 $x223))))
(assert
 (and (distinct Opp_0_2 1) true))
(assert
 (let (($x229 (<= Per_0_3 4)))
 (let (($x228 (>= Per_0_3 1)))
 (and $x228 $x229))))
(assert
 (let (($x232 (<= Opp_0_3 8)))
 (let (($x231 (>= Opp_0_3 1)))
 (and $x231 $x232))))
(assert
 (and (distinct Opp_0_3 1) true))
(assert
 (let (($x238 (<= Per_0_4 4)))
 (let (($x237 (>= Per_0_4 1)))
 (and $x237 $x238))))
(assert
 (let (($x241 (<= Opp_0_4 8)))
 (let (($x240 (>= Opp_0_4 1)))
 (and $x240 $x241))))
(assert
 (and (distinct Opp_0_4 1) true))
(assert
 (let (($x247 (<= Per_0_5 4)))
 (let (($x246 (>= Per_0_5 1)))
 (and $x246 $x247))))
(assert
 (let (($x250 (<= Opp_0_5 8)))
 (let (($x249 (>= Opp_0_5 1)))
 (and $x249 $x250))))
(assert
 (and (distinct Opp_0_5 1) true))
(assert
 (let (($x256 (<= Per_0_6 4)))
 (let (($x255 (>= Per_0_6 1)))
 (and $x255 $x256))))
(assert
 (let (($x259 (<= Opp_0_6 8)))
 (let (($x258 (>= Opp_0_6 1)))
 (and $x258 $x259))))
(assert
 (and (distinct Opp_0_6 1) true))
(assert
 (let (($x265 (<= Per_1_0 4)))
 (let (($x264 (>= Per_1_0 1)))
 (and $x264 $x265))))
(assert
 (let (($x268 (<= Opp_1_0 8)))
 (let (($x267 (>= Opp_1_0 1)))
 (and $x267 $x268))))
(assert
 (and (distinct Opp_1_0 2) true))
(assert
 (let (($x275 (<= Per_1_1 4)))
 (let (($x274 (>= Per_1_1 1)))
 (and $x274 $x275))))
(assert
 (let (($x278 (<= Opp_1_1 8)))
 (let (($x277 (>= Opp_1_1 1)))
 (and $x277 $x278))))
(assert
 (and (distinct Opp_1_1 2) true))
(assert
 (let (($x284 (<= Per_1_2 4)))
 (let (($x283 (>= Per_1_2 1)))
 (and $x283 $x284))))
(assert
 (let (($x287 (<= Opp_1_2 8)))
 (let (($x286 (>= Opp_1_2 1)))
 (and $x286 $x287))))
(assert
 (and (distinct Opp_1_2 2) true))
(assert
 (let (($x293 (<= Per_1_3 4)))
 (let (($x292 (>= Per_1_3 1)))
 (and $x292 $x293))))
(assert
 (let (($x296 (<= Opp_1_3 8)))
 (let (($x295 (>= Opp_1_3 1)))
 (and $x295 $x296))))
(assert
 (and (distinct Opp_1_3 2) true))
(assert
 (let (($x302 (<= Per_1_4 4)))
 (let (($x301 (>= Per_1_4 1)))
 (and $x301 $x302))))
(assert
 (let (($x305 (<= Opp_1_4 8)))
 (let (($x304 (>= Opp_1_4 1)))
 (and $x304 $x305))))
(assert
 (and (distinct Opp_1_4 2) true))
(assert
 (let (($x311 (<= Per_1_5 4)))
 (let (($x310 (>= Per_1_5 1)))
 (and $x310 $x311))))
(assert
 (let (($x314 (<= Opp_1_5 8)))
 (let (($x313 (>= Opp_1_5 1)))
 (and $x313 $x314))))
(assert
 (and (distinct Opp_1_5 2) true))
(assert
 (let (($x320 (<= Per_1_6 4)))
 (let (($x319 (>= Per_1_6 1)))
 (and $x319 $x320))))
(assert
 (let (($x323 (<= Opp_1_6 8)))
 (let (($x322 (>= Opp_1_6 1)))
 (and $x322 $x323))))
(assert
 (and (distinct Opp_1_6 2) true))
(assert
 (let (($x329 (<= Per_2_0 4)))
 (let (($x328 (>= Per_2_0 1)))
 (and $x328 $x329))))
(assert
 (let (($x332 (<= Opp_2_0 8)))
 (let (($x331 (>= Opp_2_0 1)))
 (and $x331 $x332))))
(assert
 (and (distinct Opp_2_0 3) true))
(assert
 (let (($x339 (<= Per_2_1 4)))
 (let (($x338 (>= Per_2_1 1)))
 (and $x338 $x339))))
(assert
 (let (($x342 (<= Opp_2_1 8)))
 (let (($x341 (>= Opp_2_1 1)))
 (and $x341 $x342))))
(assert
 (and (distinct Opp_2_1 3) true))
(assert
 (let (($x348 (<= Per_2_2 4)))
 (let (($x347 (>= Per_2_2 1)))
 (and $x347 $x348))))
(assert
 (let (($x351 (<= Opp_2_2 8)))
 (let (($x350 (>= Opp_2_2 1)))
 (and $x350 $x351))))
(assert
 (and (distinct Opp_2_2 3) true))
(assert
 (let (($x357 (<= Per_2_3 4)))
 (let (($x356 (>= Per_2_3 1)))
 (and $x356 $x357))))
(assert
 (let (($x360 (<= Opp_2_3 8)))
 (let (($x359 (>= Opp_2_3 1)))
 (and $x359 $x360))))
(assert
 (and (distinct Opp_2_3 3) true))
(assert
 (let (($x366 (<= Per_2_4 4)))
 (let (($x365 (>= Per_2_4 1)))
 (and $x365 $x366))))
(assert
 (let (($x369 (<= Opp_2_4 8)))
 (let (($x368 (>= Opp_2_4 1)))
 (and $x368 $x369))))
(assert
 (and (distinct Opp_2_4 3) true))
(assert
 (let (($x375 (<= Per_2_5 4)))
 (let (($x374 (>= Per_2_5 1)))
 (and $x374 $x375))))
(assert
 (let (($x378 (<= Opp_2_5 8)))
 (let (($x377 (>= Opp_2_5 1)))
 (and $x377 $x378))))
(assert
 (and (distinct Opp_2_5 3) true))
(assert
 (let (($x384 (<= Per_2_6 4)))
 (let (($x383 (>= Per_2_6 1)))
 (and $x383 $x384))))
(assert
 (let (($x387 (<= Opp_2_6 8)))
 (let (($x386 (>= Opp_2_6 1)))
 (and $x386 $x387))))
(assert
 (and (distinct Opp_2_6 3) true))
(assert
 (let (($x393 (<= Per_3_0 4)))
 (let (($x392 (>= Per_3_0 1)))
 (and $x392 $x393))))
(assert
 (let (($x396 (<= Opp_3_0 8)))
 (let (($x395 (>= Opp_3_0 1)))
 (and $x395 $x396))))
(assert
 (and (distinct Opp_3_0 4) true))
(assert
 (let (($x402 (<= Per_3_1 4)))
 (let (($x401 (>= Per_3_1 1)))
 (and $x401 $x402))))
(assert
 (let (($x405 (<= Opp_3_1 8)))
 (let (($x404 (>= Opp_3_1 1)))
 (and $x404 $x405))))
(assert
 (and (distinct Opp_3_1 4) true))
(assert
 (let (($x411 (<= Per_3_2 4)))
 (let (($x410 (>= Per_3_2 1)))
 (and $x410 $x411))))
(assert
 (let (($x414 (<= Opp_3_2 8)))
 (let (($x413 (>= Opp_3_2 1)))
 (and $x413 $x414))))
(assert
 (and (distinct Opp_3_2 4) true))
(assert
 (let (($x420 (<= Per_3_3 4)))
 (let (($x419 (>= Per_3_3 1)))
 (and $x419 $x420))))
(assert
 (let (($x423 (<= Opp_3_3 8)))
 (let (($x422 (>= Opp_3_3 1)))
 (and $x422 $x423))))
(assert
 (and (distinct Opp_3_3 4) true))
(assert
 (let (($x429 (<= Per_3_4 4)))
 (let (($x428 (>= Per_3_4 1)))
 (and $x428 $x429))))
(assert
 (let (($x432 (<= Opp_3_4 8)))
 (let (($x431 (>= Opp_3_4 1)))
 (and $x431 $x432))))
(assert
 (and (distinct Opp_3_4 4) true))
(assert
 (let (($x438 (<= Per_3_5 4)))
 (let (($x437 (>= Per_3_5 1)))
 (and $x437 $x438))))
(assert
 (let (($x441 (<= Opp_3_5 8)))
 (let (($x440 (>= Opp_3_5 1)))
 (and $x440 $x441))))
(assert
 (and (distinct Opp_3_5 4) true))
(assert
 (let (($x447 (<= Per_3_6 4)))
 (let (($x446 (>= Per_3_6 1)))
 (and $x446 $x447))))
(assert
 (let (($x450 (<= Opp_3_6 8)))
 (let (($x449 (>= Opp_3_6 1)))
 (and $x449 $x450))))
(assert
 (and (distinct Opp_3_6 4) true))
(assert
 (let (($x456 (<= Per_4_0 4)))
 (let (($x455 (>= Per_4_0 1)))
 (and $x455 $x456))))
(assert
 (let (($x459 (<= Opp_4_0 8)))
 (let (($x458 (>= Opp_4_0 1)))
 (and $x458 $x459))))
(assert
 (and (distinct Opp_4_0 5) true))
(assert
 (let (($x466 (<= Per_4_1 4)))
 (let (($x465 (>= Per_4_1 1)))
 (and $x465 $x466))))
(assert
 (let (($x469 (<= Opp_4_1 8)))
 (let (($x468 (>= Opp_4_1 1)))
 (and $x468 $x469))))
(assert
 (and (distinct Opp_4_1 5) true))
(assert
 (let (($x475 (<= Per_4_2 4)))
 (let (($x474 (>= Per_4_2 1)))
 (and $x474 $x475))))
(assert
 (let (($x478 (<= Opp_4_2 8)))
 (let (($x477 (>= Opp_4_2 1)))
 (and $x477 $x478))))
(assert
 (and (distinct Opp_4_2 5) true))
(assert
 (let (($x484 (<= Per_4_3 4)))
 (let (($x483 (>= Per_4_3 1)))
 (and $x483 $x484))))
(assert
 (let (($x487 (<= Opp_4_3 8)))
 (let (($x486 (>= Opp_4_3 1)))
 (and $x486 $x487))))
(assert
 (and (distinct Opp_4_3 5) true))
(assert
 (let (($x493 (<= Per_4_4 4)))
 (let (($x492 (>= Per_4_4 1)))
 (and $x492 $x493))))
(assert
 (let (($x496 (<= Opp_4_4 8)))
 (let (($x495 (>= Opp_4_4 1)))
 (and $x495 $x496))))
(assert
 (and (distinct Opp_4_4 5) true))
(assert
 (let (($x502 (<= Per_4_5 4)))
 (let (($x501 (>= Per_4_5 1)))
 (and $x501 $x502))))
(assert
 (let (($x505 (<= Opp_4_5 8)))
 (let (($x504 (>= Opp_4_5 1)))
 (and $x504 $x505))))
(assert
 (and (distinct Opp_4_5 5) true))
(assert
 (let (($x511 (<= Per_4_6 4)))
 (let (($x510 (>= Per_4_6 1)))
 (and $x510 $x511))))
(assert
 (let (($x514 (<= Opp_4_6 8)))
 (let (($x513 (>= Opp_4_6 1)))
 (and $x513 $x514))))
(assert
 (and (distinct Opp_4_6 5) true))
(assert
 (let (($x520 (<= Per_5_0 4)))
 (let (($x519 (>= Per_5_0 1)))
 (and $x519 $x520))))
(assert
 (let (($x523 (<= Opp_5_0 8)))
 (let (($x522 (>= Opp_5_0 1)))
 (and $x522 $x523))))
(assert
 (and (distinct Opp_5_0 6) true))
(assert
 (let (($x530 (<= Per_5_1 4)))
 (let (($x529 (>= Per_5_1 1)))
 (and $x529 $x530))))
(assert
 (let (($x533 (<= Opp_5_1 8)))
 (let (($x532 (>= Opp_5_1 1)))
 (and $x532 $x533))))
(assert
 (and (distinct Opp_5_1 6) true))
(assert
 (let (($x539 (<= Per_5_2 4)))
 (let (($x538 (>= Per_5_2 1)))
 (and $x538 $x539))))
(assert
 (let (($x542 (<= Opp_5_2 8)))
 (let (($x541 (>= Opp_5_2 1)))
 (and $x541 $x542))))
(assert
 (and (distinct Opp_5_2 6) true))
(assert
 (let (($x548 (<= Per_5_3 4)))
 (let (($x547 (>= Per_5_3 1)))
 (and $x547 $x548))))
(assert
 (let (($x551 (<= Opp_5_3 8)))
 (let (($x550 (>= Opp_5_3 1)))
 (and $x550 $x551))))
(assert
 (and (distinct Opp_5_3 6) true))
(assert
 (let (($x557 (<= Per_5_4 4)))
 (let (($x556 (>= Per_5_4 1)))
 (and $x556 $x557))))
(assert
 (let (($x560 (<= Opp_5_4 8)))
 (let (($x559 (>= Opp_5_4 1)))
 (and $x559 $x560))))
(assert
 (and (distinct Opp_5_4 6) true))
(assert
 (let (($x566 (<= Per_5_5 4)))
 (let (($x565 (>= Per_5_5 1)))
 (and $x565 $x566))))
(assert
 (let (($x569 (<= Opp_5_5 8)))
 (let (($x568 (>= Opp_5_5 1)))
 (and $x568 $x569))))
(assert
 (and (distinct Opp_5_5 6) true))
(assert
 (let (($x575 (<= Per_5_6 4)))
 (let (($x574 (>= Per_5_6 1)))
 (and $x574 $x575))))
(assert
 (let (($x578 (<= Opp_5_6 8)))
 (let (($x577 (>= Opp_5_6 1)))
 (and $x577 $x578))))
(assert
 (and (distinct Opp_5_6 6) true))
(assert
 (let (($x584 (<= Per_6_0 4)))
 (let (($x583 (>= Per_6_0 1)))
 (and $x583 $x584))))
(assert
 (let (($x587 (<= Opp_6_0 8)))
 (let (($x586 (>= Opp_6_0 1)))
 (and $x586 $x587))))
(assert
 (and (distinct Opp_6_0 7) true))
(assert
 (let (($x594 (<= Per_6_1 4)))
 (let (($x593 (>= Per_6_1 1)))
 (and $x593 $x594))))
(assert
 (let (($x597 (<= Opp_6_1 8)))
 (let (($x596 (>= Opp_6_1 1)))
 (and $x596 $x597))))
(assert
 (and (distinct Opp_6_1 7) true))
(assert
 (let (($x603 (<= Per_6_2 4)))
 (let (($x602 (>= Per_6_2 1)))
 (and $x602 $x603))))
(assert
 (let (($x606 (<= Opp_6_2 8)))
 (let (($x605 (>= Opp_6_2 1)))
 (and $x605 $x606))))
(assert
 (and (distinct Opp_6_2 7) true))
(assert
 (let (($x612 (<= Per_6_3 4)))
 (let (($x611 (>= Per_6_3 1)))
 (and $x611 $x612))))
(assert
 (let (($x615 (<= Opp_6_3 8)))
 (let (($x614 (>= Opp_6_3 1)))
 (and $x614 $x615))))
(assert
 (and (distinct Opp_6_3 7) true))
(assert
 (let (($x621 (<= Per_6_4 4)))
 (let (($x620 (>= Per_6_4 1)))
 (and $x620 $x621))))
(assert
 (let (($x624 (<= Opp_6_4 8)))
 (let (($x623 (>= Opp_6_4 1)))
 (and $x623 $x624))))
(assert
 (and (distinct Opp_6_4 7) true))
(assert
 (let (($x630 (<= Per_6_5 4)))
 (let (($x629 (>= Per_6_5 1)))
 (and $x629 $x630))))
(assert
 (let (($x633 (<= Opp_6_5 8)))
 (let (($x632 (>= Opp_6_5 1)))
 (and $x632 $x633))))
(assert
 (and (distinct Opp_6_5 7) true))
(assert
 (let (($x639 (<= Per_6_6 4)))
 (let (($x638 (>= Per_6_6 1)))
 (and $x638 $x639))))
(assert
 (let (($x642 (<= Opp_6_6 8)))
 (let (($x641 (>= Opp_6_6 1)))
 (and $x641 $x642))))
(assert
 (and (distinct Opp_6_6 7) true))
(assert
 (let (($x648 (<= Per_7_0 4)))
 (let (($x647 (>= Per_7_0 1)))
 (and $x647 $x648))))
(assert
 (let (($x651 (<= Opp_7_0 8)))
 (let (($x650 (>= Opp_7_0 1)))
 (and $x650 $x651))))
(assert
 (and (distinct Opp_7_0 8) true))
(assert
 (let (($x657 (<= Per_7_1 4)))
 (let (($x656 (>= Per_7_1 1)))
 (and $x656 $x657))))
(assert
 (let (($x660 (<= Opp_7_1 8)))
 (let (($x659 (>= Opp_7_1 1)))
 (and $x659 $x660))))
(assert
 (and (distinct Opp_7_1 8) true))
(assert
 (let (($x666 (<= Per_7_2 4)))
 (let (($x665 (>= Per_7_2 1)))
 (and $x665 $x666))))
(assert
 (let (($x669 (<= Opp_7_2 8)))
 (let (($x668 (>= Opp_7_2 1)))
 (and $x668 $x669))))
(assert
 (and (distinct Opp_7_2 8) true))
(assert
 (let (($x675 (<= Per_7_3 4)))
 (let (($x674 (>= Per_7_3 1)))
 (and $x674 $x675))))
(assert
 (let (($x678 (<= Opp_7_3 8)))
 (let (($x677 (>= Opp_7_3 1)))
 (and $x677 $x678))))
(assert
 (and (distinct Opp_7_3 8) true))
(assert
 (let (($x684 (<= Per_7_4 4)))
 (let (($x683 (>= Per_7_4 1)))
 (and $x683 $x684))))
(assert
 (let (($x687 (<= Opp_7_4 8)))
 (let (($x686 (>= Opp_7_4 1)))
 (and $x686 $x687))))
(assert
 (and (distinct Opp_7_4 8) true))
(assert
 (let (($x693 (<= Per_7_5 4)))
 (let (($x692 (>= Per_7_5 1)))
 (and $x692 $x693))))
(assert
 (let (($x696 (<= Opp_7_5 8)))
 (let (($x695 (>= Opp_7_5 1)))
 (and $x695 $x696))))
(assert
 (and (distinct Opp_7_5 8) true))
(assert
 (let (($x702 (<= Per_7_6 4)))
 (let (($x701 (>= Per_7_6 1)))
 (and $x701 $x702))))
(assert
 (let (($x705 (<= Opp_7_6 8)))
 (let (($x704 (>= Opp_7_6 1)))
 (and $x704 $x705))))
(assert
 (and (distinct Opp_7_6 8) true))
(assert
 (let (($x712 (= Opp_1_0 1)))
 (let (($x713 (and (= Per_0_0 Per_1_0) $x712)))
 (let (($x710 (= Opp_0_0 2)))
 (=> $x710 $x713)))))
(assert
 (let (($x710 (= Opp_0_0 2)))
 (let (($x712 (= Opp_1_0 1)))
 (let (($x713 (and (= Per_0_0 Per_1_0) $x712)))
 (=> $x713 $x710)))))
(assert
 (let (($x710 (= Opp_0_0 2)))
 (=> $x710 (xor Home_0_0 Home_1_0))))
(assert
 (let (($x727 (= Opp_1_1 1)))
 (let (($x728 (and (= Per_0_1 Per_1_1) $x727)))
 (let (($x725 (= Opp_0_1 2)))
 (=> $x725 $x728)))))
(assert
 (let (($x725 (= Opp_0_1 2)))
 (let (($x727 (= Opp_1_1 1)))
 (let (($x728 (and (= Per_0_1 Per_1_1) $x727)))
 (=> $x728 $x725)))))
(assert
 (let (($x725 (= Opp_0_1 2)))
 (=> $x725 (xor Home_0_1 Home_1_1))))
(assert
 (let (($x742 (= Opp_1_2 1)))
 (let (($x743 (and (= Per_0_2 Per_1_2) $x742)))
 (let (($x740 (= Opp_0_2 2)))
 (=> $x740 $x743)))))
(assert
 (let (($x740 (= Opp_0_2 2)))
 (let (($x742 (= Opp_1_2 1)))
 (let (($x743 (and (= Per_0_2 Per_1_2) $x742)))
 (=> $x743 $x740)))))
(assert
 (let (($x740 (= Opp_0_2 2)))
 (=> $x740 (xor Home_0_2 Home_1_2))))
(assert
 (let (($x757 (= Opp_1_3 1)))
 (let (($x758 (and (= Per_0_3 Per_1_3) $x757)))
 (let (($x755 (= Opp_0_3 2)))
 (=> $x755 $x758)))))
(assert
 (let (($x755 (= Opp_0_3 2)))
 (let (($x757 (= Opp_1_3 1)))
 (let (($x758 (and (= Per_0_3 Per_1_3) $x757)))
 (=> $x758 $x755)))))
(assert
 (let (($x755 (= Opp_0_3 2)))
 (=> $x755 (xor Home_0_3 Home_1_3))))
(assert
 (let (($x772 (= Opp_1_4 1)))
 (let (($x773 (and (= Per_0_4 Per_1_4) $x772)))
 (let (($x770 (= Opp_0_4 2)))
 (=> $x770 $x773)))))
(assert
 (let (($x770 (= Opp_0_4 2)))
 (let (($x772 (= Opp_1_4 1)))
 (let (($x773 (and (= Per_0_4 Per_1_4) $x772)))
 (=> $x773 $x770)))))
(assert
 (let (($x770 (= Opp_0_4 2)))
 (=> $x770 (xor Home_0_4 Home_1_4))))
(assert
 (let (($x787 (= Opp_1_5 1)))
 (let (($x788 (and (= Per_0_5 Per_1_5) $x787)))
 (let (($x785 (= Opp_0_5 2)))
 (=> $x785 $x788)))))
(assert
 (let (($x785 (= Opp_0_5 2)))
 (let (($x787 (= Opp_1_5 1)))
 (let (($x788 (and (= Per_0_5 Per_1_5) $x787)))
 (=> $x788 $x785)))))
(assert
 (let (($x785 (= Opp_0_5 2)))
 (=> $x785 (xor Home_0_5 Home_1_5))))
(assert
 (let (($x802 (= Opp_1_6 1)))
 (let (($x803 (and (= Per_0_6 Per_1_6) $x802)))
 (let (($x800 (= Opp_0_6 2)))
 (=> $x800 $x803)))))
(assert
 (let (($x800 (= Opp_0_6 2)))
 (let (($x802 (= Opp_1_6 1)))
 (let (($x803 (and (= Per_0_6 Per_1_6) $x802)))
 (=> $x803 $x800)))))
(assert
 (let (($x800 (= Opp_0_6 2)))
 (=> $x800 (xor Home_0_6 Home_1_6))))
(assert
 (let (($x817 (= Opp_2_0 1)))
 (let (($x818 (and (= Per_0_0 Per_2_0) $x817)))
 (let (($x815 (= Opp_0_0 3)))
 (=> $x815 $x818)))))
(assert
 (let (($x815 (= Opp_0_0 3)))
 (let (($x817 (= Opp_2_0 1)))
 (let (($x818 (and (= Per_0_0 Per_2_0) $x817)))
 (=> $x818 $x815)))))
(assert
 (let (($x815 (= Opp_0_0 3)))
 (=> $x815 (xor Home_0_0 Home_2_0))))
(assert
 (let (($x832 (= Opp_2_1 1)))
 (let (($x833 (and (= Per_0_1 Per_2_1) $x832)))
 (let (($x830 (= Opp_0_1 3)))
 (=> $x830 $x833)))))
(assert
 (let (($x830 (= Opp_0_1 3)))
 (let (($x832 (= Opp_2_1 1)))
 (let (($x833 (and (= Per_0_1 Per_2_1) $x832)))
 (=> $x833 $x830)))))
(assert
 (let (($x830 (= Opp_0_1 3)))
 (=> $x830 (xor Home_0_1 Home_2_1))))
(assert
 (let (($x847 (= Opp_2_2 1)))
 (let (($x848 (and (= Per_0_2 Per_2_2) $x847)))
 (let (($x845 (= Opp_0_2 3)))
 (=> $x845 $x848)))))
(assert
 (let (($x845 (= Opp_0_2 3)))
 (let (($x847 (= Opp_2_2 1)))
 (let (($x848 (and (= Per_0_2 Per_2_2) $x847)))
 (=> $x848 $x845)))))
(assert
 (let (($x845 (= Opp_0_2 3)))
 (=> $x845 (xor Home_0_2 Home_2_2))))
(assert
 (let (($x862 (= Opp_2_3 1)))
 (let (($x863 (and (= Per_0_3 Per_2_3) $x862)))
 (let (($x860 (= Opp_0_3 3)))
 (=> $x860 $x863)))))
(assert
 (let (($x860 (= Opp_0_3 3)))
 (let (($x862 (= Opp_2_3 1)))
 (let (($x863 (and (= Per_0_3 Per_2_3) $x862)))
 (=> $x863 $x860)))))
(assert
 (let (($x860 (= Opp_0_3 3)))
 (=> $x860 (xor Home_0_3 Home_2_3))))
(assert
 (let (($x877 (= Opp_2_4 1)))
 (let (($x878 (and (= Per_0_4 Per_2_4) $x877)))
 (let (($x875 (= Opp_0_4 3)))
 (=> $x875 $x878)))))
(assert
 (let (($x875 (= Opp_0_4 3)))
 (let (($x877 (= Opp_2_4 1)))
 (let (($x878 (and (= Per_0_4 Per_2_4) $x877)))
 (=> $x878 $x875)))))
(assert
 (let (($x875 (= Opp_0_4 3)))
 (=> $x875 (xor Home_0_4 Home_2_4))))
(assert
 (let (($x892 (= Opp_2_5 1)))
 (let (($x893 (and (= Per_0_5 Per_2_5) $x892)))
 (let (($x890 (= Opp_0_5 3)))
 (=> $x890 $x893)))))
(assert
 (let (($x890 (= Opp_0_5 3)))
 (let (($x892 (= Opp_2_5 1)))
 (let (($x893 (and (= Per_0_5 Per_2_5) $x892)))
 (=> $x893 $x890)))))
(assert
 (let (($x890 (= Opp_0_5 3)))
 (=> $x890 (xor Home_0_5 Home_2_5))))
(assert
 (let (($x907 (= Opp_2_6 1)))
 (let (($x908 (and (= Per_0_6 Per_2_6) $x907)))
 (let (($x905 (= Opp_0_6 3)))
 (=> $x905 $x908)))))
(assert
 (let (($x905 (= Opp_0_6 3)))
 (let (($x907 (= Opp_2_6 1)))
 (let (($x908 (and (= Per_0_6 Per_2_6) $x907)))
 (=> $x908 $x905)))))
(assert
 (let (($x905 (= Opp_0_6 3)))
 (=> $x905 (xor Home_0_6 Home_2_6))))
(assert
 (let (($x922 (= Opp_3_0 1)))
 (let (($x923 (and (= Per_0_0 Per_3_0) $x922)))
 (let (($x920 (= Opp_0_0 4)))
 (=> $x920 $x923)))))
(assert
 (let (($x920 (= Opp_0_0 4)))
 (let (($x922 (= Opp_3_0 1)))
 (let (($x923 (and (= Per_0_0 Per_3_0) $x922)))
 (=> $x923 $x920)))))
(assert
 (let (($x920 (= Opp_0_0 4)))
 (=> $x920 (xor Home_0_0 Home_3_0))))
(assert
 (let (($x937 (= Opp_3_1 1)))
 (let (($x938 (and (= Per_0_1 Per_3_1) $x937)))
 (let (($x935 (= Opp_0_1 4)))
 (=> $x935 $x938)))))
(assert
 (let (($x935 (= Opp_0_1 4)))
 (let (($x937 (= Opp_3_1 1)))
 (let (($x938 (and (= Per_0_1 Per_3_1) $x937)))
 (=> $x938 $x935)))))
(assert
 (let (($x935 (= Opp_0_1 4)))
 (=> $x935 (xor Home_0_1 Home_3_1))))
(assert
 (let (($x952 (= Opp_3_2 1)))
 (let (($x953 (and (= Per_0_2 Per_3_2) $x952)))
 (let (($x950 (= Opp_0_2 4)))
 (=> $x950 $x953)))))
(assert
 (let (($x950 (= Opp_0_2 4)))
 (let (($x952 (= Opp_3_2 1)))
 (let (($x953 (and (= Per_0_2 Per_3_2) $x952)))
 (=> $x953 $x950)))))
(assert
 (let (($x950 (= Opp_0_2 4)))
 (=> $x950 (xor Home_0_2 Home_3_2))))
(assert
 (let (($x967 (= Opp_3_3 1)))
 (let (($x968 (and (= Per_0_3 Per_3_3) $x967)))
 (let (($x965 (= Opp_0_3 4)))
 (=> $x965 $x968)))))
(assert
 (let (($x965 (= Opp_0_3 4)))
 (let (($x967 (= Opp_3_3 1)))
 (let (($x968 (and (= Per_0_3 Per_3_3) $x967)))
 (=> $x968 $x965)))))
(assert
 (let (($x965 (= Opp_0_3 4)))
 (=> $x965 (xor Home_0_3 Home_3_3))))
(assert
 (let (($x982 (= Opp_3_4 1)))
 (let (($x983 (and (= Per_0_4 Per_3_4) $x982)))
 (let (($x980 (= Opp_0_4 4)))
 (=> $x980 $x983)))))
(assert
 (let (($x980 (= Opp_0_4 4)))
 (let (($x982 (= Opp_3_4 1)))
 (let (($x983 (and (= Per_0_4 Per_3_4) $x982)))
 (=> $x983 $x980)))))
(assert
 (let (($x980 (= Opp_0_4 4)))
 (=> $x980 (xor Home_0_4 Home_3_4))))
(assert
 (let (($x997 (= Opp_3_5 1)))
 (let (($x998 (and (= Per_0_5 Per_3_5) $x997)))
 (let (($x995 (= Opp_0_5 4)))
 (=> $x995 $x998)))))
(assert
 (let (($x995 (= Opp_0_5 4)))
 (let (($x997 (= Opp_3_5 1)))
 (let (($x998 (and (= Per_0_5 Per_3_5) $x997)))
 (=> $x998 $x995)))))
(assert
 (let (($x995 (= Opp_0_5 4)))
 (=> $x995 (xor Home_0_5 Home_3_5))))
(assert
 (let (($x1012 (= Opp_3_6 1)))
 (let (($x1013 (and (= Per_0_6 Per_3_6) $x1012)))
 (let (($x1010 (= Opp_0_6 4)))
 (=> $x1010 $x1013)))))
(assert
 (let (($x1010 (= Opp_0_6 4)))
 (let (($x1012 (= Opp_3_6 1)))
 (let (($x1013 (and (= Per_0_6 Per_3_6) $x1012)))
 (=> $x1013 $x1010)))))
(assert
 (let (($x1010 (= Opp_0_6 4)))
 (=> $x1010 (xor Home_0_6 Home_3_6))))
(assert
 (let (($x1027 (= Opp_4_0 1)))
 (let (($x1028 (and (= Per_0_0 Per_4_0) $x1027)))
 (let (($x1025 (= Opp_0_0 5)))
 (=> $x1025 $x1028)))))
(assert
 (let (($x1025 (= Opp_0_0 5)))
 (let (($x1027 (= Opp_4_0 1)))
 (let (($x1028 (and (= Per_0_0 Per_4_0) $x1027)))
 (=> $x1028 $x1025)))))
(assert
 (let (($x1025 (= Opp_0_0 5)))
 (=> $x1025 (xor Home_0_0 Home_4_0))))
(assert
 (let (($x1042 (= Opp_4_1 1)))
 (let (($x1043 (and (= Per_0_1 Per_4_1) $x1042)))
 (let (($x1040 (= Opp_0_1 5)))
 (=> $x1040 $x1043)))))
(assert
 (let (($x1040 (= Opp_0_1 5)))
 (let (($x1042 (= Opp_4_1 1)))
 (let (($x1043 (and (= Per_0_1 Per_4_1) $x1042)))
 (=> $x1043 $x1040)))))
(assert
 (let (($x1040 (= Opp_0_1 5)))
 (=> $x1040 (xor Home_0_1 Home_4_1))))
(assert
 (let (($x1057 (= Opp_4_2 1)))
 (let (($x1058 (and (= Per_0_2 Per_4_2) $x1057)))
 (let (($x1055 (= Opp_0_2 5)))
 (=> $x1055 $x1058)))))
(assert
 (let (($x1055 (= Opp_0_2 5)))
 (let (($x1057 (= Opp_4_2 1)))
 (let (($x1058 (and (= Per_0_2 Per_4_2) $x1057)))
 (=> $x1058 $x1055)))))
(assert
 (let (($x1055 (= Opp_0_2 5)))
 (=> $x1055 (xor Home_0_2 Home_4_2))))
(assert
 (let (($x1072 (= Opp_4_3 1)))
 (let (($x1073 (and (= Per_0_3 Per_4_3) $x1072)))
 (let (($x1070 (= Opp_0_3 5)))
 (=> $x1070 $x1073)))))
(assert
 (let (($x1070 (= Opp_0_3 5)))
 (let (($x1072 (= Opp_4_3 1)))
 (let (($x1073 (and (= Per_0_3 Per_4_3) $x1072)))
 (=> $x1073 $x1070)))))
(assert
 (let (($x1070 (= Opp_0_3 5)))
 (=> $x1070 (xor Home_0_3 Home_4_3))))
(assert
 (let (($x1087 (= Opp_4_4 1)))
 (let (($x1088 (and (= Per_0_4 Per_4_4) $x1087)))
 (let (($x1085 (= Opp_0_4 5)))
 (=> $x1085 $x1088)))))
(assert
 (let (($x1085 (= Opp_0_4 5)))
 (let (($x1087 (= Opp_4_4 1)))
 (let (($x1088 (and (= Per_0_4 Per_4_4) $x1087)))
 (=> $x1088 $x1085)))))
(assert
 (let (($x1085 (= Opp_0_4 5)))
 (=> $x1085 (xor Home_0_4 Home_4_4))))
(assert
 (let (($x1102 (= Opp_4_5 1)))
 (let (($x1103 (and (= Per_0_5 Per_4_5) $x1102)))
 (let (($x1100 (= Opp_0_5 5)))
 (=> $x1100 $x1103)))))
(assert
 (let (($x1100 (= Opp_0_5 5)))
 (let (($x1102 (= Opp_4_5 1)))
 (let (($x1103 (and (= Per_0_5 Per_4_5) $x1102)))
 (=> $x1103 $x1100)))))
(assert
 (let (($x1100 (= Opp_0_5 5)))
 (=> $x1100 (xor Home_0_5 Home_4_5))))
(assert
 (let (($x1117 (= Opp_4_6 1)))
 (let (($x1118 (and (= Per_0_6 Per_4_6) $x1117)))
 (let (($x1115 (= Opp_0_6 5)))
 (=> $x1115 $x1118)))))
(assert
 (let (($x1115 (= Opp_0_6 5)))
 (let (($x1117 (= Opp_4_6 1)))
 (let (($x1118 (and (= Per_0_6 Per_4_6) $x1117)))
 (=> $x1118 $x1115)))))
(assert
 (let (($x1115 (= Opp_0_6 5)))
 (=> $x1115 (xor Home_0_6 Home_4_6))))
(assert
 (let (($x1132 (= Opp_5_0 1)))
 (let (($x1133 (and (= Per_0_0 Per_5_0) $x1132)))
 (let (($x1130 (= Opp_0_0 6)))
 (=> $x1130 $x1133)))))
(assert
 (let (($x1130 (= Opp_0_0 6)))
 (let (($x1132 (= Opp_5_0 1)))
 (let (($x1133 (and (= Per_0_0 Per_5_0) $x1132)))
 (=> $x1133 $x1130)))))
(assert
 (let (($x1130 (= Opp_0_0 6)))
 (=> $x1130 (xor Home_0_0 Home_5_0))))
(assert
 (let (($x1147 (= Opp_5_1 1)))
 (let (($x1148 (and (= Per_0_1 Per_5_1) $x1147)))
 (let (($x1145 (= Opp_0_1 6)))
 (=> $x1145 $x1148)))))
(assert
 (let (($x1145 (= Opp_0_1 6)))
 (let (($x1147 (= Opp_5_1 1)))
 (let (($x1148 (and (= Per_0_1 Per_5_1) $x1147)))
 (=> $x1148 $x1145)))))
(assert
 (let (($x1145 (= Opp_0_1 6)))
 (=> $x1145 (xor Home_0_1 Home_5_1))))
(assert
 (let (($x1162 (= Opp_5_2 1)))
 (let (($x1163 (and (= Per_0_2 Per_5_2) $x1162)))
 (let (($x1160 (= Opp_0_2 6)))
 (=> $x1160 $x1163)))))
(assert
 (let (($x1160 (= Opp_0_2 6)))
 (let (($x1162 (= Opp_5_2 1)))
 (let (($x1163 (and (= Per_0_2 Per_5_2) $x1162)))
 (=> $x1163 $x1160)))))
(assert
 (let (($x1160 (= Opp_0_2 6)))
 (=> $x1160 (xor Home_0_2 Home_5_2))))
(assert
 (let (($x1177 (= Opp_5_3 1)))
 (let (($x1178 (and (= Per_0_3 Per_5_3) $x1177)))
 (let (($x1175 (= Opp_0_3 6)))
 (=> $x1175 $x1178)))))
(assert
 (let (($x1175 (= Opp_0_3 6)))
 (let (($x1177 (= Opp_5_3 1)))
 (let (($x1178 (and (= Per_0_3 Per_5_3) $x1177)))
 (=> $x1178 $x1175)))))
(assert
 (let (($x1175 (= Opp_0_3 6)))
 (=> $x1175 (xor Home_0_3 Home_5_3))))
(assert
 (let (($x1192 (= Opp_5_4 1)))
 (let (($x1193 (and (= Per_0_4 Per_5_4) $x1192)))
 (let (($x1190 (= Opp_0_4 6)))
 (=> $x1190 $x1193)))))
(assert
 (let (($x1190 (= Opp_0_4 6)))
 (let (($x1192 (= Opp_5_4 1)))
 (let (($x1193 (and (= Per_0_4 Per_5_4) $x1192)))
 (=> $x1193 $x1190)))))
(assert
 (let (($x1190 (= Opp_0_4 6)))
 (=> $x1190 (xor Home_0_4 Home_5_4))))
(assert
 (let (($x1207 (= Opp_5_5 1)))
 (let (($x1208 (and (= Per_0_5 Per_5_5) $x1207)))
 (let (($x1205 (= Opp_0_5 6)))
 (=> $x1205 $x1208)))))
(assert
 (let (($x1205 (= Opp_0_5 6)))
 (let (($x1207 (= Opp_5_5 1)))
 (let (($x1208 (and (= Per_0_5 Per_5_5) $x1207)))
 (=> $x1208 $x1205)))))
(assert
 (let (($x1205 (= Opp_0_5 6)))
 (=> $x1205 (xor Home_0_5 Home_5_5))))
(assert
 (let (($x1222 (= Opp_5_6 1)))
 (let (($x1223 (and (= Per_0_6 Per_5_6) $x1222)))
 (let (($x1220 (= Opp_0_6 6)))
 (=> $x1220 $x1223)))))
(assert
 (let (($x1220 (= Opp_0_6 6)))
 (let (($x1222 (= Opp_5_6 1)))
 (let (($x1223 (and (= Per_0_6 Per_5_6) $x1222)))
 (=> $x1223 $x1220)))))
(assert
 (let (($x1220 (= Opp_0_6 6)))
 (=> $x1220 (xor Home_0_6 Home_5_6))))
(assert
 (let (($x1237 (= Opp_6_0 1)))
 (let (($x1238 (and (= Per_0_0 Per_6_0) $x1237)))
 (let (($x1235 (= Opp_0_0 7)))
 (=> $x1235 $x1238)))))
(assert
 (let (($x1235 (= Opp_0_0 7)))
 (let (($x1237 (= Opp_6_0 1)))
 (let (($x1238 (and (= Per_0_0 Per_6_0) $x1237)))
 (=> $x1238 $x1235)))))
(assert
 (let (($x1235 (= Opp_0_0 7)))
 (=> $x1235 (xor Home_0_0 Home_6_0))))
(assert
 (let (($x1252 (= Opp_6_1 1)))
 (let (($x1253 (and (= Per_0_1 Per_6_1) $x1252)))
 (let (($x1250 (= Opp_0_1 7)))
 (=> $x1250 $x1253)))))
(assert
 (let (($x1250 (= Opp_0_1 7)))
 (let (($x1252 (= Opp_6_1 1)))
 (let (($x1253 (and (= Per_0_1 Per_6_1) $x1252)))
 (=> $x1253 $x1250)))))
(assert
 (let (($x1250 (= Opp_0_1 7)))
 (=> $x1250 (xor Home_0_1 Home_6_1))))
(assert
 (let (($x1267 (= Opp_6_2 1)))
 (let (($x1268 (and (= Per_0_2 Per_6_2) $x1267)))
 (let (($x1265 (= Opp_0_2 7)))
 (=> $x1265 $x1268)))))
(assert
 (let (($x1265 (= Opp_0_2 7)))
 (let (($x1267 (= Opp_6_2 1)))
 (let (($x1268 (and (= Per_0_2 Per_6_2) $x1267)))
 (=> $x1268 $x1265)))))
(assert
 (let (($x1265 (= Opp_0_2 7)))
 (=> $x1265 (xor Home_0_2 Home_6_2))))
(assert
 (let (($x1282 (= Opp_6_3 1)))
 (let (($x1283 (and (= Per_0_3 Per_6_3) $x1282)))
 (let (($x1280 (= Opp_0_3 7)))
 (=> $x1280 $x1283)))))
(assert
 (let (($x1280 (= Opp_0_3 7)))
 (let (($x1282 (= Opp_6_3 1)))
 (let (($x1283 (and (= Per_0_3 Per_6_3) $x1282)))
 (=> $x1283 $x1280)))))
(assert
 (let (($x1280 (= Opp_0_3 7)))
 (=> $x1280 (xor Home_0_3 Home_6_3))))
(assert
 (let (($x1297 (= Opp_6_4 1)))
 (let (($x1298 (and (= Per_0_4 Per_6_4) $x1297)))
 (let (($x1295 (= Opp_0_4 7)))
 (=> $x1295 $x1298)))))
(assert
 (let (($x1295 (= Opp_0_4 7)))
 (let (($x1297 (= Opp_6_4 1)))
 (let (($x1298 (and (= Per_0_4 Per_6_4) $x1297)))
 (=> $x1298 $x1295)))))
(assert
 (let (($x1295 (= Opp_0_4 7)))
 (=> $x1295 (xor Home_0_4 Home_6_4))))
(assert
 (let (($x1312 (= Opp_6_5 1)))
 (let (($x1313 (and (= Per_0_5 Per_6_5) $x1312)))
 (let (($x1310 (= Opp_0_5 7)))
 (=> $x1310 $x1313)))))
(assert
 (let (($x1310 (= Opp_0_5 7)))
 (let (($x1312 (= Opp_6_5 1)))
 (let (($x1313 (and (= Per_0_5 Per_6_5) $x1312)))
 (=> $x1313 $x1310)))))
(assert
 (let (($x1310 (= Opp_0_5 7)))
 (=> $x1310 (xor Home_0_5 Home_6_5))))
(assert
 (let (($x1327 (= Opp_6_6 1)))
 (let (($x1328 (and (= Per_0_6 Per_6_6) $x1327)))
 (let (($x1325 (= Opp_0_6 7)))
 (=> $x1325 $x1328)))))
(assert
 (let (($x1325 (= Opp_0_6 7)))
 (let (($x1327 (= Opp_6_6 1)))
 (let (($x1328 (and (= Per_0_6 Per_6_6) $x1327)))
 (=> $x1328 $x1325)))))
(assert
 (let (($x1325 (= Opp_0_6 7)))
 (=> $x1325 (xor Home_0_6 Home_6_6))))
(assert
 (let (($x1342 (= Opp_7_0 1)))
 (let (($x1343 (and (= Per_0_0 Per_7_0) $x1342)))
 (let (($x1340 (= Opp_0_0 8)))
 (=> $x1340 $x1343)))))
(assert
 (let (($x1340 (= Opp_0_0 8)))
 (let (($x1342 (= Opp_7_0 1)))
 (let (($x1343 (and (= Per_0_0 Per_7_0) $x1342)))
 (=> $x1343 $x1340)))))
(assert
 (let (($x1340 (= Opp_0_0 8)))
 (=> $x1340 (xor Home_0_0 Home_7_0))))
(assert
 (let (($x1357 (= Opp_7_1 1)))
 (let (($x1358 (and (= Per_0_1 Per_7_1) $x1357)))
 (let (($x1355 (= Opp_0_1 8)))
 (=> $x1355 $x1358)))))
(assert
 (let (($x1355 (= Opp_0_1 8)))
 (let (($x1357 (= Opp_7_1 1)))
 (let (($x1358 (and (= Per_0_1 Per_7_1) $x1357)))
 (=> $x1358 $x1355)))))
(assert
 (let (($x1355 (= Opp_0_1 8)))
 (=> $x1355 (xor Home_0_1 Home_7_1))))
(assert
 (let (($x1372 (= Opp_7_2 1)))
 (let (($x1373 (and (= Per_0_2 Per_7_2) $x1372)))
 (let (($x1370 (= Opp_0_2 8)))
 (=> $x1370 $x1373)))))
(assert
 (let (($x1370 (= Opp_0_2 8)))
 (let (($x1372 (= Opp_7_2 1)))
 (let (($x1373 (and (= Per_0_2 Per_7_2) $x1372)))
 (=> $x1373 $x1370)))))
(assert
 (let (($x1370 (= Opp_0_2 8)))
 (=> $x1370 (xor Home_0_2 Home_7_2))))
(assert
 (let (($x1387 (= Opp_7_3 1)))
 (let (($x1388 (and (= Per_0_3 Per_7_3) $x1387)))
 (let (($x1385 (= Opp_0_3 8)))
 (=> $x1385 $x1388)))))
(assert
 (let (($x1385 (= Opp_0_3 8)))
 (let (($x1387 (= Opp_7_3 1)))
 (let (($x1388 (and (= Per_0_3 Per_7_3) $x1387)))
 (=> $x1388 $x1385)))))
(assert
 (let (($x1385 (= Opp_0_3 8)))
 (=> $x1385 (xor Home_0_3 Home_7_3))))
(assert
 (let (($x1402 (= Opp_7_4 1)))
 (let (($x1403 (and (= Per_0_4 Per_7_4) $x1402)))
 (let (($x1400 (= Opp_0_4 8)))
 (=> $x1400 $x1403)))))
(assert
 (let (($x1400 (= Opp_0_4 8)))
 (let (($x1402 (= Opp_7_4 1)))
 (let (($x1403 (and (= Per_0_4 Per_7_4) $x1402)))
 (=> $x1403 $x1400)))))
(assert
 (let (($x1400 (= Opp_0_4 8)))
 (=> $x1400 (xor Home_0_4 Home_7_4))))
(assert
 (let (($x1417 (= Opp_7_5 1)))
 (let (($x1418 (and (= Per_0_5 Per_7_5) $x1417)))
 (let (($x1415 (= Opp_0_5 8)))
 (=> $x1415 $x1418)))))
(assert
 (let (($x1415 (= Opp_0_5 8)))
 (let (($x1417 (= Opp_7_5 1)))
 (let (($x1418 (and (= Per_0_5 Per_7_5) $x1417)))
 (=> $x1418 $x1415)))))
(assert
 (let (($x1415 (= Opp_0_5 8)))
 (=> $x1415 (xor Home_0_5 Home_7_5))))
(assert
 (let (($x1432 (= Opp_7_6 1)))
 (let (($x1433 (and (= Per_0_6 Per_7_6) $x1432)))
 (let (($x1430 (= Opp_0_6 8)))
 (=> $x1430 $x1433)))))
(assert
 (let (($x1430 (= Opp_0_6 8)))
 (let (($x1432 (= Opp_7_6 1)))
 (let (($x1433 (and (= Per_0_6 Per_7_6) $x1432)))
 (=> $x1433 $x1430)))))
(assert
 (let (($x1430 (= Opp_0_6 8)))
 (=> $x1430 (xor Home_0_6 Home_7_6))))
(assert
 (let (($x710 (= Opp_0_0 2)))
 (let (($x1446 (and (= Per_1_0 Per_0_0) $x710)))
 (let (($x712 (= Opp_1_0 1)))
 (=> $x712 $x1446)))))
(assert
 (let (($x712 (= Opp_1_0 1)))
 (let (($x710 (= Opp_0_0 2)))
 (let (($x1446 (and (= Per_1_0 Per_0_0) $x710)))
 (=> $x1446 $x712)))))
(assert
 (let (($x712 (= Opp_1_0 1)))
 (=> $x712 (xor Home_1_0 Home_0_0))))
(assert
 (let (($x725 (= Opp_0_1 2)))
 (let (($x1459 (and (= Per_1_1 Per_0_1) $x725)))
 (let (($x727 (= Opp_1_1 1)))
 (=> $x727 $x1459)))))
(assert
 (let (($x727 (= Opp_1_1 1)))
 (let (($x725 (= Opp_0_1 2)))
 (let (($x1459 (and (= Per_1_1 Per_0_1) $x725)))
 (=> $x1459 $x727)))))
(assert
 (let (($x727 (= Opp_1_1 1)))
 (=> $x727 (xor Home_1_1 Home_0_1))))
(assert
 (let (($x740 (= Opp_0_2 2)))
 (let (($x1472 (and (= Per_1_2 Per_0_2) $x740)))
 (let (($x742 (= Opp_1_2 1)))
 (=> $x742 $x1472)))))
(assert
 (let (($x742 (= Opp_1_2 1)))
 (let (($x740 (= Opp_0_2 2)))
 (let (($x1472 (and (= Per_1_2 Per_0_2) $x740)))
 (=> $x1472 $x742)))))
(assert
 (let (($x742 (= Opp_1_2 1)))
 (=> $x742 (xor Home_1_2 Home_0_2))))
(assert
 (let (($x755 (= Opp_0_3 2)))
 (let (($x1485 (and (= Per_1_3 Per_0_3) $x755)))
 (let (($x757 (= Opp_1_3 1)))
 (=> $x757 $x1485)))))
(assert
 (let (($x757 (= Opp_1_3 1)))
 (let (($x755 (= Opp_0_3 2)))
 (let (($x1485 (and (= Per_1_3 Per_0_3) $x755)))
 (=> $x1485 $x757)))))
(assert
 (let (($x757 (= Opp_1_3 1)))
 (=> $x757 (xor Home_1_3 Home_0_3))))
(assert
 (let (($x770 (= Opp_0_4 2)))
 (let (($x1498 (and (= Per_1_4 Per_0_4) $x770)))
 (let (($x772 (= Opp_1_4 1)))
 (=> $x772 $x1498)))))
(assert
 (let (($x772 (= Opp_1_4 1)))
 (let (($x770 (= Opp_0_4 2)))
 (let (($x1498 (and (= Per_1_4 Per_0_4) $x770)))
 (=> $x1498 $x772)))))
(assert
 (let (($x772 (= Opp_1_4 1)))
 (=> $x772 (xor Home_1_4 Home_0_4))))
(assert
 (let (($x785 (= Opp_0_5 2)))
 (let (($x1511 (and (= Per_1_5 Per_0_5) $x785)))
 (let (($x787 (= Opp_1_5 1)))
 (=> $x787 $x1511)))))
(assert
 (let (($x787 (= Opp_1_5 1)))
 (let (($x785 (= Opp_0_5 2)))
 (let (($x1511 (and (= Per_1_5 Per_0_5) $x785)))
 (=> $x1511 $x787)))))
(assert
 (let (($x787 (= Opp_1_5 1)))
 (=> $x787 (xor Home_1_5 Home_0_5))))
(assert
 (let (($x800 (= Opp_0_6 2)))
 (let (($x1524 (and (= Per_1_6 Per_0_6) $x800)))
 (let (($x802 (= Opp_1_6 1)))
 (=> $x802 $x1524)))))
(assert
 (let (($x802 (= Opp_1_6 1)))
 (let (($x800 (= Opp_0_6 2)))
 (let (($x1524 (and (= Per_1_6 Per_0_6) $x800)))
 (=> $x1524 $x802)))))
(assert
 (let (($x802 (= Opp_1_6 1)))
 (=> $x802 (xor Home_1_6 Home_0_6))))
(assert
 (let (($x1538 (= Opp_2_0 2)))
 (let (($x1539 (and (= Per_1_0 Per_2_0) $x1538)))
 (let (($x1536 (= Opp_1_0 3)))
 (=> $x1536 $x1539)))))
(assert
 (let (($x1536 (= Opp_1_0 3)))
 (let (($x1538 (= Opp_2_0 2)))
 (let (($x1539 (and (= Per_1_0 Per_2_0) $x1538)))
 (=> $x1539 $x1536)))))
(assert
 (let (($x1536 (= Opp_1_0 3)))
 (=> $x1536 (xor Home_1_0 Home_2_0))))
(assert
 (let (($x1553 (= Opp_2_1 2)))
 (let (($x1554 (and (= Per_1_1 Per_2_1) $x1553)))
 (let (($x1551 (= Opp_1_1 3)))
 (=> $x1551 $x1554)))))
(assert
 (let (($x1551 (= Opp_1_1 3)))
 (let (($x1553 (= Opp_2_1 2)))
 (let (($x1554 (and (= Per_1_1 Per_2_1) $x1553)))
 (=> $x1554 $x1551)))))
(assert
 (let (($x1551 (= Opp_1_1 3)))
 (=> $x1551 (xor Home_1_1 Home_2_1))))
(assert
 (let (($x1568 (= Opp_2_2 2)))
 (let (($x1569 (and (= Per_1_2 Per_2_2) $x1568)))
 (let (($x1566 (= Opp_1_2 3)))
 (=> $x1566 $x1569)))))
(assert
 (let (($x1566 (= Opp_1_2 3)))
 (let (($x1568 (= Opp_2_2 2)))
 (let (($x1569 (and (= Per_1_2 Per_2_2) $x1568)))
 (=> $x1569 $x1566)))))
(assert
 (let (($x1566 (= Opp_1_2 3)))
 (=> $x1566 (xor Home_1_2 Home_2_2))))
(assert
 (let (($x1583 (= Opp_2_3 2)))
 (let (($x1584 (and (= Per_1_3 Per_2_3) $x1583)))
 (let (($x1581 (= Opp_1_3 3)))
 (=> $x1581 $x1584)))))
(assert
 (let (($x1581 (= Opp_1_3 3)))
 (let (($x1583 (= Opp_2_3 2)))
 (let (($x1584 (and (= Per_1_3 Per_2_3) $x1583)))
 (=> $x1584 $x1581)))))
(assert
 (let (($x1581 (= Opp_1_3 3)))
 (=> $x1581 (xor Home_1_3 Home_2_3))))
(assert
 (let (($x1598 (= Opp_2_4 2)))
 (let (($x1599 (and (= Per_1_4 Per_2_4) $x1598)))
 (let (($x1596 (= Opp_1_4 3)))
 (=> $x1596 $x1599)))))
(assert
 (let (($x1596 (= Opp_1_4 3)))
 (let (($x1598 (= Opp_2_4 2)))
 (let (($x1599 (and (= Per_1_4 Per_2_4) $x1598)))
 (=> $x1599 $x1596)))))
(assert
 (let (($x1596 (= Opp_1_4 3)))
 (=> $x1596 (xor Home_1_4 Home_2_4))))
(assert
 (let (($x1613 (= Opp_2_5 2)))
 (let (($x1614 (and (= Per_1_5 Per_2_5) $x1613)))
 (let (($x1611 (= Opp_1_5 3)))
 (=> $x1611 $x1614)))))
(assert
 (let (($x1611 (= Opp_1_5 3)))
 (let (($x1613 (= Opp_2_5 2)))
 (let (($x1614 (and (= Per_1_5 Per_2_5) $x1613)))
 (=> $x1614 $x1611)))))
(assert
 (let (($x1611 (= Opp_1_5 3)))
 (=> $x1611 (xor Home_1_5 Home_2_5))))
(assert
 (let (($x1628 (= Opp_2_6 2)))
 (let (($x1629 (and (= Per_1_6 Per_2_6) $x1628)))
 (let (($x1626 (= Opp_1_6 3)))
 (=> $x1626 $x1629)))))
(assert
 (let (($x1626 (= Opp_1_6 3)))
 (let (($x1628 (= Opp_2_6 2)))
 (let (($x1629 (and (= Per_1_6 Per_2_6) $x1628)))
 (=> $x1629 $x1626)))))
(assert
 (let (($x1626 (= Opp_1_6 3)))
 (=> $x1626 (xor Home_1_6 Home_2_6))))
(assert
 (let (($x1643 (= Opp_3_0 2)))
 (let (($x1644 (and (= Per_1_0 Per_3_0) $x1643)))
 (let (($x1641 (= Opp_1_0 4)))
 (=> $x1641 $x1644)))))
(assert
 (let (($x1641 (= Opp_1_0 4)))
 (let (($x1643 (= Opp_3_0 2)))
 (let (($x1644 (and (= Per_1_0 Per_3_0) $x1643)))
 (=> $x1644 $x1641)))))
(assert
 (let (($x1641 (= Opp_1_0 4)))
 (=> $x1641 (xor Home_1_0 Home_3_0))))
(assert
 (let (($x1658 (= Opp_3_1 2)))
 (let (($x1659 (and (= Per_1_1 Per_3_1) $x1658)))
 (let (($x1656 (= Opp_1_1 4)))
 (=> $x1656 $x1659)))))
(assert
 (let (($x1656 (= Opp_1_1 4)))
 (let (($x1658 (= Opp_3_1 2)))
 (let (($x1659 (and (= Per_1_1 Per_3_1) $x1658)))
 (=> $x1659 $x1656)))))
(assert
 (let (($x1656 (= Opp_1_1 4)))
 (=> $x1656 (xor Home_1_1 Home_3_1))))
(assert
 (let (($x1673 (= Opp_3_2 2)))
 (let (($x1674 (and (= Per_1_2 Per_3_2) $x1673)))
 (let (($x1671 (= Opp_1_2 4)))
 (=> $x1671 $x1674)))))
(assert
 (let (($x1671 (= Opp_1_2 4)))
 (let (($x1673 (= Opp_3_2 2)))
 (let (($x1674 (and (= Per_1_2 Per_3_2) $x1673)))
 (=> $x1674 $x1671)))))
(assert
 (let (($x1671 (= Opp_1_2 4)))
 (=> $x1671 (xor Home_1_2 Home_3_2))))
(assert
 (let (($x1688 (= Opp_3_3 2)))
 (let (($x1689 (and (= Per_1_3 Per_3_3) $x1688)))
 (let (($x1686 (= Opp_1_3 4)))
 (=> $x1686 $x1689)))))
(assert
 (let (($x1686 (= Opp_1_3 4)))
 (let (($x1688 (= Opp_3_3 2)))
 (let (($x1689 (and (= Per_1_3 Per_3_3) $x1688)))
 (=> $x1689 $x1686)))))
(assert
 (let (($x1686 (= Opp_1_3 4)))
 (=> $x1686 (xor Home_1_3 Home_3_3))))
(assert
 (let (($x1703 (= Opp_3_4 2)))
 (let (($x1704 (and (= Per_1_4 Per_3_4) $x1703)))
 (let (($x1701 (= Opp_1_4 4)))
 (=> $x1701 $x1704)))))
(assert
 (let (($x1701 (= Opp_1_4 4)))
 (let (($x1703 (= Opp_3_4 2)))
 (let (($x1704 (and (= Per_1_4 Per_3_4) $x1703)))
 (=> $x1704 $x1701)))))
(assert
 (let (($x1701 (= Opp_1_4 4)))
 (=> $x1701 (xor Home_1_4 Home_3_4))))
(assert
 (let (($x1718 (= Opp_3_5 2)))
 (let (($x1719 (and (= Per_1_5 Per_3_5) $x1718)))
 (let (($x1716 (= Opp_1_5 4)))
 (=> $x1716 $x1719)))))
(assert
 (let (($x1716 (= Opp_1_5 4)))
 (let (($x1718 (= Opp_3_5 2)))
 (let (($x1719 (and (= Per_1_5 Per_3_5) $x1718)))
 (=> $x1719 $x1716)))))
(assert
 (let (($x1716 (= Opp_1_5 4)))
 (=> $x1716 (xor Home_1_5 Home_3_5))))
(assert
 (let (($x1733 (= Opp_3_6 2)))
 (let (($x1734 (and (= Per_1_6 Per_3_6) $x1733)))
 (let (($x1731 (= Opp_1_6 4)))
 (=> $x1731 $x1734)))))
(assert
 (let (($x1731 (= Opp_1_6 4)))
 (let (($x1733 (= Opp_3_6 2)))
 (let (($x1734 (and (= Per_1_6 Per_3_6) $x1733)))
 (=> $x1734 $x1731)))))
(assert
 (let (($x1731 (= Opp_1_6 4)))
 (=> $x1731 (xor Home_1_6 Home_3_6))))
(assert
 (let (($x1748 (= Opp_4_0 2)))
 (let (($x1749 (and (= Per_1_0 Per_4_0) $x1748)))
 (let (($x1746 (= Opp_1_0 5)))
 (=> $x1746 $x1749)))))
(assert
 (let (($x1746 (= Opp_1_0 5)))
 (let (($x1748 (= Opp_4_0 2)))
 (let (($x1749 (and (= Per_1_0 Per_4_0) $x1748)))
 (=> $x1749 $x1746)))))
(assert
 (let (($x1746 (= Opp_1_0 5)))
 (=> $x1746 (xor Home_1_0 Home_4_0))))
(assert
 (let (($x1763 (= Opp_4_1 2)))
 (let (($x1764 (and (= Per_1_1 Per_4_1) $x1763)))
 (let (($x1761 (= Opp_1_1 5)))
 (=> $x1761 $x1764)))))
(assert
 (let (($x1761 (= Opp_1_1 5)))
 (let (($x1763 (= Opp_4_1 2)))
 (let (($x1764 (and (= Per_1_1 Per_4_1) $x1763)))
 (=> $x1764 $x1761)))))
(assert
 (let (($x1761 (= Opp_1_1 5)))
 (=> $x1761 (xor Home_1_1 Home_4_1))))
(assert
 (let (($x1778 (= Opp_4_2 2)))
 (let (($x1779 (and (= Per_1_2 Per_4_2) $x1778)))
 (let (($x1776 (= Opp_1_2 5)))
 (=> $x1776 $x1779)))))
(assert
 (let (($x1776 (= Opp_1_2 5)))
 (let (($x1778 (= Opp_4_2 2)))
 (let (($x1779 (and (= Per_1_2 Per_4_2) $x1778)))
 (=> $x1779 $x1776)))))
(assert
 (let (($x1776 (= Opp_1_2 5)))
 (=> $x1776 (xor Home_1_2 Home_4_2))))
(assert
 (let (($x1793 (= Opp_4_3 2)))
 (let (($x1794 (and (= Per_1_3 Per_4_3) $x1793)))
 (let (($x1791 (= Opp_1_3 5)))
 (=> $x1791 $x1794)))))
(assert
 (let (($x1791 (= Opp_1_3 5)))
 (let (($x1793 (= Opp_4_3 2)))
 (let (($x1794 (and (= Per_1_3 Per_4_3) $x1793)))
 (=> $x1794 $x1791)))))
(assert
 (let (($x1791 (= Opp_1_3 5)))
 (=> $x1791 (xor Home_1_3 Home_4_3))))
(assert
 (let (($x1808 (= Opp_4_4 2)))
 (let (($x1809 (and (= Per_1_4 Per_4_4) $x1808)))
 (let (($x1806 (= Opp_1_4 5)))
 (=> $x1806 $x1809)))))
(assert
 (let (($x1806 (= Opp_1_4 5)))
 (let (($x1808 (= Opp_4_4 2)))
 (let (($x1809 (and (= Per_1_4 Per_4_4) $x1808)))
 (=> $x1809 $x1806)))))
(assert
 (let (($x1806 (= Opp_1_4 5)))
 (=> $x1806 (xor Home_1_4 Home_4_4))))
(assert
 (let (($x1823 (= Opp_4_5 2)))
 (let (($x1824 (and (= Per_1_5 Per_4_5) $x1823)))
 (let (($x1821 (= Opp_1_5 5)))
 (=> $x1821 $x1824)))))
(assert
 (let (($x1821 (= Opp_1_5 5)))
 (let (($x1823 (= Opp_4_5 2)))
 (let (($x1824 (and (= Per_1_5 Per_4_5) $x1823)))
 (=> $x1824 $x1821)))))
(assert
 (let (($x1821 (= Opp_1_5 5)))
 (=> $x1821 (xor Home_1_5 Home_4_5))))
(assert
 (let (($x1838 (= Opp_4_6 2)))
 (let (($x1839 (and (= Per_1_6 Per_4_6) $x1838)))
 (let (($x1836 (= Opp_1_6 5)))
 (=> $x1836 $x1839)))))
(assert
 (let (($x1836 (= Opp_1_6 5)))
 (let (($x1838 (= Opp_4_6 2)))
 (let (($x1839 (and (= Per_1_6 Per_4_6) $x1838)))
 (=> $x1839 $x1836)))))
(assert
 (let (($x1836 (= Opp_1_6 5)))
 (=> $x1836 (xor Home_1_6 Home_4_6))))
(assert
 (let (($x1853 (= Opp_5_0 2)))
 (let (($x1854 (and (= Per_1_0 Per_5_0) $x1853)))
 (let (($x1851 (= Opp_1_0 6)))
 (=> $x1851 $x1854)))))
(assert
 (let (($x1851 (= Opp_1_0 6)))
 (let (($x1853 (= Opp_5_0 2)))
 (let (($x1854 (and (= Per_1_0 Per_5_0) $x1853)))
 (=> $x1854 $x1851)))))
(assert
 (let (($x1851 (= Opp_1_0 6)))
 (=> $x1851 (xor Home_1_0 Home_5_0))))
(assert
 (let (($x1868 (= Opp_5_1 2)))
 (let (($x1869 (and (= Per_1_1 Per_5_1) $x1868)))
 (let (($x1866 (= Opp_1_1 6)))
 (=> $x1866 $x1869)))))
(assert
 (let (($x1866 (= Opp_1_1 6)))
 (let (($x1868 (= Opp_5_1 2)))
 (let (($x1869 (and (= Per_1_1 Per_5_1) $x1868)))
 (=> $x1869 $x1866)))))
(assert
 (let (($x1866 (= Opp_1_1 6)))
 (=> $x1866 (xor Home_1_1 Home_5_1))))
(assert
 (let (($x1883 (= Opp_5_2 2)))
 (let (($x1884 (and (= Per_1_2 Per_5_2) $x1883)))
 (let (($x1881 (= Opp_1_2 6)))
 (=> $x1881 $x1884)))))
(assert
 (let (($x1881 (= Opp_1_2 6)))
 (let (($x1883 (= Opp_5_2 2)))
 (let (($x1884 (and (= Per_1_2 Per_5_2) $x1883)))
 (=> $x1884 $x1881)))))
(assert
 (let (($x1881 (= Opp_1_2 6)))
 (=> $x1881 (xor Home_1_2 Home_5_2))))
(assert
 (let (($x1898 (= Opp_5_3 2)))
 (let (($x1899 (and (= Per_1_3 Per_5_3) $x1898)))
 (let (($x1896 (= Opp_1_3 6)))
 (=> $x1896 $x1899)))))
(assert
 (let (($x1896 (= Opp_1_3 6)))
 (let (($x1898 (= Opp_5_3 2)))
 (let (($x1899 (and (= Per_1_3 Per_5_3) $x1898)))
 (=> $x1899 $x1896)))))
(assert
 (let (($x1896 (= Opp_1_3 6)))
 (=> $x1896 (xor Home_1_3 Home_5_3))))
(assert
 (let (($x1913 (= Opp_5_4 2)))
 (let (($x1914 (and (= Per_1_4 Per_5_4) $x1913)))
 (let (($x1911 (= Opp_1_4 6)))
 (=> $x1911 $x1914)))))
(assert
 (let (($x1911 (= Opp_1_4 6)))
 (let (($x1913 (= Opp_5_4 2)))
 (let (($x1914 (and (= Per_1_4 Per_5_4) $x1913)))
 (=> $x1914 $x1911)))))
(assert
 (let (($x1911 (= Opp_1_4 6)))
 (=> $x1911 (xor Home_1_4 Home_5_4))))
(assert
 (let (($x1928 (= Opp_5_5 2)))
 (let (($x1929 (and (= Per_1_5 Per_5_5) $x1928)))
 (let (($x1926 (= Opp_1_5 6)))
 (=> $x1926 $x1929)))))
(assert
 (let (($x1926 (= Opp_1_5 6)))
 (let (($x1928 (= Opp_5_5 2)))
 (let (($x1929 (and (= Per_1_5 Per_5_5) $x1928)))
 (=> $x1929 $x1926)))))
(assert
 (let (($x1926 (= Opp_1_5 6)))
 (=> $x1926 (xor Home_1_5 Home_5_5))))
(assert
 (let (($x1943 (= Opp_5_6 2)))
 (let (($x1944 (and (= Per_1_6 Per_5_6) $x1943)))
 (let (($x1941 (= Opp_1_6 6)))
 (=> $x1941 $x1944)))))
(assert
 (let (($x1941 (= Opp_1_6 6)))
 (let (($x1943 (= Opp_5_6 2)))
 (let (($x1944 (and (= Per_1_6 Per_5_6) $x1943)))
 (=> $x1944 $x1941)))))
(assert
 (let (($x1941 (= Opp_1_6 6)))
 (=> $x1941 (xor Home_1_6 Home_5_6))))
(assert
 (let (($x1958 (= Opp_6_0 2)))
 (let (($x1959 (and (= Per_1_0 Per_6_0) $x1958)))
 (let (($x1956 (= Opp_1_0 7)))
 (=> $x1956 $x1959)))))
(assert
 (let (($x1956 (= Opp_1_0 7)))
 (let (($x1958 (= Opp_6_0 2)))
 (let (($x1959 (and (= Per_1_0 Per_6_0) $x1958)))
 (=> $x1959 $x1956)))))
(assert
 (let (($x1956 (= Opp_1_0 7)))
 (=> $x1956 (xor Home_1_0 Home_6_0))))
(assert
 (let (($x1973 (= Opp_6_1 2)))
 (let (($x1974 (and (= Per_1_1 Per_6_1) $x1973)))
 (let (($x1971 (= Opp_1_1 7)))
 (=> $x1971 $x1974)))))
(assert
 (let (($x1971 (= Opp_1_1 7)))
 (let (($x1973 (= Opp_6_1 2)))
 (let (($x1974 (and (= Per_1_1 Per_6_1) $x1973)))
 (=> $x1974 $x1971)))))
(assert
 (let (($x1971 (= Opp_1_1 7)))
 (=> $x1971 (xor Home_1_1 Home_6_1))))
(assert
 (let (($x1988 (= Opp_6_2 2)))
 (let (($x1989 (and (= Per_1_2 Per_6_2) $x1988)))
 (let (($x1986 (= Opp_1_2 7)))
 (=> $x1986 $x1989)))))
(assert
 (let (($x1986 (= Opp_1_2 7)))
 (let (($x1988 (= Opp_6_2 2)))
 (let (($x1989 (and (= Per_1_2 Per_6_2) $x1988)))
 (=> $x1989 $x1986)))))
(assert
 (let (($x1986 (= Opp_1_2 7)))
 (=> $x1986 (xor Home_1_2 Home_6_2))))
(assert
 (let (($x2003 (= Opp_6_3 2)))
 (let (($x2004 (and (= Per_1_3 Per_6_3) $x2003)))
 (let (($x2001 (= Opp_1_3 7)))
 (=> $x2001 $x2004)))))
(assert
 (let (($x2001 (= Opp_1_3 7)))
 (let (($x2003 (= Opp_6_3 2)))
 (let (($x2004 (and (= Per_1_3 Per_6_3) $x2003)))
 (=> $x2004 $x2001)))))
(assert
 (let (($x2001 (= Opp_1_3 7)))
 (=> $x2001 (xor Home_1_3 Home_6_3))))
(assert
 (let (($x2018 (= Opp_6_4 2)))
 (let (($x2019 (and (= Per_1_4 Per_6_4) $x2018)))
 (let (($x2016 (= Opp_1_4 7)))
 (=> $x2016 $x2019)))))
(assert
 (let (($x2016 (= Opp_1_4 7)))
 (let (($x2018 (= Opp_6_4 2)))
 (let (($x2019 (and (= Per_1_4 Per_6_4) $x2018)))
 (=> $x2019 $x2016)))))
(assert
 (let (($x2016 (= Opp_1_4 7)))
 (=> $x2016 (xor Home_1_4 Home_6_4))))
(assert
 (let (($x2033 (= Opp_6_5 2)))
 (let (($x2034 (and (= Per_1_5 Per_6_5) $x2033)))
 (let (($x2031 (= Opp_1_5 7)))
 (=> $x2031 $x2034)))))
(assert
 (let (($x2031 (= Opp_1_5 7)))
 (let (($x2033 (= Opp_6_5 2)))
 (let (($x2034 (and (= Per_1_5 Per_6_5) $x2033)))
 (=> $x2034 $x2031)))))
(assert
 (let (($x2031 (= Opp_1_5 7)))
 (=> $x2031 (xor Home_1_5 Home_6_5))))
(assert
 (let (($x2048 (= Opp_6_6 2)))
 (let (($x2049 (and (= Per_1_6 Per_6_6) $x2048)))
 (let (($x2046 (= Opp_1_6 7)))
 (=> $x2046 $x2049)))))
(assert
 (let (($x2046 (= Opp_1_6 7)))
 (let (($x2048 (= Opp_6_6 2)))
 (let (($x2049 (and (= Per_1_6 Per_6_6) $x2048)))
 (=> $x2049 $x2046)))))
(assert
 (let (($x2046 (= Opp_1_6 7)))
 (=> $x2046 (xor Home_1_6 Home_6_6))))
(assert
 (let (($x2063 (= Opp_7_0 2)))
 (let (($x2064 (and (= Per_1_0 Per_7_0) $x2063)))
 (let (($x2061 (= Opp_1_0 8)))
 (=> $x2061 $x2064)))))
(assert
 (let (($x2061 (= Opp_1_0 8)))
 (let (($x2063 (= Opp_7_0 2)))
 (let (($x2064 (and (= Per_1_0 Per_7_0) $x2063)))
 (=> $x2064 $x2061)))))
(assert
 (let (($x2061 (= Opp_1_0 8)))
 (=> $x2061 (xor Home_1_0 Home_7_0))))
(assert
 (let (($x2078 (= Opp_7_1 2)))
 (let (($x2079 (and (= Per_1_1 Per_7_1) $x2078)))
 (let (($x2076 (= Opp_1_1 8)))
 (=> $x2076 $x2079)))))
(assert
 (let (($x2076 (= Opp_1_1 8)))
 (let (($x2078 (= Opp_7_1 2)))
 (let (($x2079 (and (= Per_1_1 Per_7_1) $x2078)))
 (=> $x2079 $x2076)))))
(assert
 (let (($x2076 (= Opp_1_1 8)))
 (=> $x2076 (xor Home_1_1 Home_7_1))))
(assert
 (let (($x2093 (= Opp_7_2 2)))
 (let (($x2094 (and (= Per_1_2 Per_7_2) $x2093)))
 (let (($x2091 (= Opp_1_2 8)))
 (=> $x2091 $x2094)))))
(assert
 (let (($x2091 (= Opp_1_2 8)))
 (let (($x2093 (= Opp_7_2 2)))
 (let (($x2094 (and (= Per_1_2 Per_7_2) $x2093)))
 (=> $x2094 $x2091)))))
(assert
 (let (($x2091 (= Opp_1_2 8)))
 (=> $x2091 (xor Home_1_2 Home_7_2))))
(assert
 (let (($x2108 (= Opp_7_3 2)))
 (let (($x2109 (and (= Per_1_3 Per_7_3) $x2108)))
 (let (($x2106 (= Opp_1_3 8)))
 (=> $x2106 $x2109)))))
(assert
 (let (($x2106 (= Opp_1_3 8)))
 (let (($x2108 (= Opp_7_3 2)))
 (let (($x2109 (and (= Per_1_3 Per_7_3) $x2108)))
 (=> $x2109 $x2106)))))
(assert
 (let (($x2106 (= Opp_1_3 8)))
 (=> $x2106 (xor Home_1_3 Home_7_3))))
(assert
 (let (($x2123 (= Opp_7_4 2)))
 (let (($x2124 (and (= Per_1_4 Per_7_4) $x2123)))
 (let (($x2121 (= Opp_1_4 8)))
 (=> $x2121 $x2124)))))
(assert
 (let (($x2121 (= Opp_1_4 8)))
 (let (($x2123 (= Opp_7_4 2)))
 (let (($x2124 (and (= Per_1_4 Per_7_4) $x2123)))
 (=> $x2124 $x2121)))))
(assert
 (let (($x2121 (= Opp_1_4 8)))
 (=> $x2121 (xor Home_1_4 Home_7_4))))
(assert
 (let (($x2138 (= Opp_7_5 2)))
 (let (($x2139 (and (= Per_1_5 Per_7_5) $x2138)))
 (let (($x2136 (= Opp_1_5 8)))
 (=> $x2136 $x2139)))))
(assert
 (let (($x2136 (= Opp_1_5 8)))
 (let (($x2138 (= Opp_7_5 2)))
 (let (($x2139 (and (= Per_1_5 Per_7_5) $x2138)))
 (=> $x2139 $x2136)))))
(assert
 (let (($x2136 (= Opp_1_5 8)))
 (=> $x2136 (xor Home_1_5 Home_7_5))))
(assert
 (let (($x2153 (= Opp_7_6 2)))
 (let (($x2154 (and (= Per_1_6 Per_7_6) $x2153)))
 (let (($x2151 (= Opp_1_6 8)))
 (=> $x2151 $x2154)))))
(assert
 (let (($x2151 (= Opp_1_6 8)))
 (let (($x2153 (= Opp_7_6 2)))
 (let (($x2154 (and (= Per_1_6 Per_7_6) $x2153)))
 (=> $x2154 $x2151)))))
(assert
 (let (($x2151 (= Opp_1_6 8)))
 (=> $x2151 (xor Home_1_6 Home_7_6))))
(assert
 (let (($x815 (= Opp_0_0 3)))
 (let (($x2167 (and (= Per_2_0 Per_0_0) $x815)))
 (let (($x817 (= Opp_2_0 1)))
 (=> $x817 $x2167)))))
(assert
 (let (($x817 (= Opp_2_0 1)))
 (let (($x815 (= Opp_0_0 3)))
 (let (($x2167 (and (= Per_2_0 Per_0_0) $x815)))
 (=> $x2167 $x817)))))
(assert
 (let (($x817 (= Opp_2_0 1)))
 (=> $x817 (xor Home_2_0 Home_0_0))))
(assert
 (let (($x830 (= Opp_0_1 3)))
 (let (($x2180 (and (= Per_2_1 Per_0_1) $x830)))
 (let (($x832 (= Opp_2_1 1)))
 (=> $x832 $x2180)))))
(assert
 (let (($x832 (= Opp_2_1 1)))
 (let (($x830 (= Opp_0_1 3)))
 (let (($x2180 (and (= Per_2_1 Per_0_1) $x830)))
 (=> $x2180 $x832)))))
(assert
 (let (($x832 (= Opp_2_1 1)))
 (=> $x832 (xor Home_2_1 Home_0_1))))
(assert
 (let (($x845 (= Opp_0_2 3)))
 (let (($x2193 (and (= Per_2_2 Per_0_2) $x845)))
 (let (($x847 (= Opp_2_2 1)))
 (=> $x847 $x2193)))))
(assert
 (let (($x847 (= Opp_2_2 1)))
 (let (($x845 (= Opp_0_2 3)))
 (let (($x2193 (and (= Per_2_2 Per_0_2) $x845)))
 (=> $x2193 $x847)))))
(assert
 (let (($x847 (= Opp_2_2 1)))
 (=> $x847 (xor Home_2_2 Home_0_2))))
(assert
 (let (($x860 (= Opp_0_3 3)))
 (let (($x2206 (and (= Per_2_3 Per_0_3) $x860)))
 (let (($x862 (= Opp_2_3 1)))
 (=> $x862 $x2206)))))
(assert
 (let (($x862 (= Opp_2_3 1)))
 (let (($x860 (= Opp_0_3 3)))
 (let (($x2206 (and (= Per_2_3 Per_0_3) $x860)))
 (=> $x2206 $x862)))))
(assert
 (let (($x862 (= Opp_2_3 1)))
 (=> $x862 (xor Home_2_3 Home_0_3))))
(assert
 (let (($x875 (= Opp_0_4 3)))
 (let (($x2219 (and (= Per_2_4 Per_0_4) $x875)))
 (let (($x877 (= Opp_2_4 1)))
 (=> $x877 $x2219)))))
(assert
 (let (($x877 (= Opp_2_4 1)))
 (let (($x875 (= Opp_0_4 3)))
 (let (($x2219 (and (= Per_2_4 Per_0_4) $x875)))
 (=> $x2219 $x877)))))
(assert
 (let (($x877 (= Opp_2_4 1)))
 (=> $x877 (xor Home_2_4 Home_0_4))))
(assert
 (let (($x890 (= Opp_0_5 3)))
 (let (($x2232 (and (= Per_2_5 Per_0_5) $x890)))
 (let (($x892 (= Opp_2_5 1)))
 (=> $x892 $x2232)))))
(assert
 (let (($x892 (= Opp_2_5 1)))
 (let (($x890 (= Opp_0_5 3)))
 (let (($x2232 (and (= Per_2_5 Per_0_5) $x890)))
 (=> $x2232 $x892)))))
(assert
 (let (($x892 (= Opp_2_5 1)))
 (=> $x892 (xor Home_2_5 Home_0_5))))
(assert
 (let (($x905 (= Opp_0_6 3)))
 (let (($x2245 (and (= Per_2_6 Per_0_6) $x905)))
 (let (($x907 (= Opp_2_6 1)))
 (=> $x907 $x2245)))))
(assert
 (let (($x907 (= Opp_2_6 1)))
 (let (($x905 (= Opp_0_6 3)))
 (let (($x2245 (and (= Per_2_6 Per_0_6) $x905)))
 (=> $x2245 $x907)))))
(assert
 (let (($x907 (= Opp_2_6 1)))
 (=> $x907 (xor Home_2_6 Home_0_6))))
(assert
 (let (($x1536 (= Opp_1_0 3)))
 (let (($x2258 (and (= Per_2_0 Per_1_0) $x1536)))
 (let (($x1538 (= Opp_2_0 2)))
 (=> $x1538 $x2258)))))
(assert
 (let (($x1538 (= Opp_2_0 2)))
 (let (($x1536 (= Opp_1_0 3)))
 (let (($x2258 (and (= Per_2_0 Per_1_0) $x1536)))
 (=> $x2258 $x1538)))))
(assert
 (let (($x1538 (= Opp_2_0 2)))
 (=> $x1538 (xor Home_2_0 Home_1_0))))
(assert
 (let (($x1551 (= Opp_1_1 3)))
 (let (($x2271 (and (= Per_2_1 Per_1_1) $x1551)))
 (let (($x1553 (= Opp_2_1 2)))
 (=> $x1553 $x2271)))))
(assert
 (let (($x1553 (= Opp_2_1 2)))
 (let (($x1551 (= Opp_1_1 3)))
 (let (($x2271 (and (= Per_2_1 Per_1_1) $x1551)))
 (=> $x2271 $x1553)))))
(assert
 (let (($x1553 (= Opp_2_1 2)))
 (=> $x1553 (xor Home_2_1 Home_1_1))))
(assert
 (let (($x1566 (= Opp_1_2 3)))
 (let (($x2284 (and (= Per_2_2 Per_1_2) $x1566)))
 (let (($x1568 (= Opp_2_2 2)))
 (=> $x1568 $x2284)))))
(assert
 (let (($x1568 (= Opp_2_2 2)))
 (let (($x1566 (= Opp_1_2 3)))
 (let (($x2284 (and (= Per_2_2 Per_1_2) $x1566)))
 (=> $x2284 $x1568)))))
(assert
 (let (($x1568 (= Opp_2_2 2)))
 (=> $x1568 (xor Home_2_2 Home_1_2))))
(assert
 (let (($x1581 (= Opp_1_3 3)))
 (let (($x2297 (and (= Per_2_3 Per_1_3) $x1581)))
 (let (($x1583 (= Opp_2_3 2)))
 (=> $x1583 $x2297)))))
(assert
 (let (($x1583 (= Opp_2_3 2)))
 (let (($x1581 (= Opp_1_3 3)))
 (let (($x2297 (and (= Per_2_3 Per_1_3) $x1581)))
 (=> $x2297 $x1583)))))
(assert
 (let (($x1583 (= Opp_2_3 2)))
 (=> $x1583 (xor Home_2_3 Home_1_3))))
(assert
 (let (($x1596 (= Opp_1_4 3)))
 (let (($x2310 (and (= Per_2_4 Per_1_4) $x1596)))
 (let (($x1598 (= Opp_2_4 2)))
 (=> $x1598 $x2310)))))
(assert
 (let (($x1598 (= Opp_2_4 2)))
 (let (($x1596 (= Opp_1_4 3)))
 (let (($x2310 (and (= Per_2_4 Per_1_4) $x1596)))
 (=> $x2310 $x1598)))))
(assert
 (let (($x1598 (= Opp_2_4 2)))
 (=> $x1598 (xor Home_2_4 Home_1_4))))
(assert
 (let (($x1611 (= Opp_1_5 3)))
 (let (($x2323 (and (= Per_2_5 Per_1_5) $x1611)))
 (let (($x1613 (= Opp_2_5 2)))
 (=> $x1613 $x2323)))))
(assert
 (let (($x1613 (= Opp_2_5 2)))
 (let (($x1611 (= Opp_1_5 3)))
 (let (($x2323 (and (= Per_2_5 Per_1_5) $x1611)))
 (=> $x2323 $x1613)))))
(assert
 (let (($x1613 (= Opp_2_5 2)))
 (=> $x1613 (xor Home_2_5 Home_1_5))))
(assert
 (let (($x1626 (= Opp_1_6 3)))
 (let (($x2336 (and (= Per_2_6 Per_1_6) $x1626)))
 (let (($x1628 (= Opp_2_6 2)))
 (=> $x1628 $x2336)))))
(assert
 (let (($x1628 (= Opp_2_6 2)))
 (let (($x1626 (= Opp_1_6 3)))
 (let (($x2336 (and (= Per_2_6 Per_1_6) $x1626)))
 (=> $x2336 $x1628)))))
(assert
 (let (($x1628 (= Opp_2_6 2)))
 (=> $x1628 (xor Home_2_6 Home_1_6))))
(assert
 (let (($x2350 (= Opp_3_0 3)))
 (let (($x2351 (and (= Per_2_0 Per_3_0) $x2350)))
 (let (($x2348 (= Opp_2_0 4)))
 (=> $x2348 $x2351)))))
(assert
 (let (($x2348 (= Opp_2_0 4)))
 (let (($x2350 (= Opp_3_0 3)))
 (let (($x2351 (and (= Per_2_0 Per_3_0) $x2350)))
 (=> $x2351 $x2348)))))
(assert
 (let (($x2348 (= Opp_2_0 4)))
 (=> $x2348 (xor Home_2_0 Home_3_0))))
(assert
 (let (($x2365 (= Opp_3_1 3)))
 (let (($x2366 (and (= Per_2_1 Per_3_1) $x2365)))
 (let (($x2363 (= Opp_2_1 4)))
 (=> $x2363 $x2366)))))
(assert
 (let (($x2363 (= Opp_2_1 4)))
 (let (($x2365 (= Opp_3_1 3)))
 (let (($x2366 (and (= Per_2_1 Per_3_1) $x2365)))
 (=> $x2366 $x2363)))))
(assert
 (let (($x2363 (= Opp_2_1 4)))
 (=> $x2363 (xor Home_2_1 Home_3_1))))
(assert
 (let (($x2380 (= Opp_3_2 3)))
 (let (($x2381 (and (= Per_2_2 Per_3_2) $x2380)))
 (let (($x2378 (= Opp_2_2 4)))
 (=> $x2378 $x2381)))))
(assert
 (let (($x2378 (= Opp_2_2 4)))
 (let (($x2380 (= Opp_3_2 3)))
 (let (($x2381 (and (= Per_2_2 Per_3_2) $x2380)))
 (=> $x2381 $x2378)))))
(assert
 (let (($x2378 (= Opp_2_2 4)))
 (=> $x2378 (xor Home_2_2 Home_3_2))))
(assert
 (let (($x2395 (= Opp_3_3 3)))
 (let (($x2396 (and (= Per_2_3 Per_3_3) $x2395)))
 (let (($x2393 (= Opp_2_3 4)))
 (=> $x2393 $x2396)))))
(assert
 (let (($x2393 (= Opp_2_3 4)))
 (let (($x2395 (= Opp_3_3 3)))
 (let (($x2396 (and (= Per_2_3 Per_3_3) $x2395)))
 (=> $x2396 $x2393)))))
(assert
 (let (($x2393 (= Opp_2_3 4)))
 (=> $x2393 (xor Home_2_3 Home_3_3))))
(assert
 (let (($x2410 (= Opp_3_4 3)))
 (let (($x2411 (and (= Per_2_4 Per_3_4) $x2410)))
 (let (($x2408 (= Opp_2_4 4)))
 (=> $x2408 $x2411)))))
(assert
 (let (($x2408 (= Opp_2_4 4)))
 (let (($x2410 (= Opp_3_4 3)))
 (let (($x2411 (and (= Per_2_4 Per_3_4) $x2410)))
 (=> $x2411 $x2408)))))
(assert
 (let (($x2408 (= Opp_2_4 4)))
 (=> $x2408 (xor Home_2_4 Home_3_4))))
(assert
 (let (($x2425 (= Opp_3_5 3)))
 (let (($x2426 (and (= Per_2_5 Per_3_5) $x2425)))
 (let (($x2423 (= Opp_2_5 4)))
 (=> $x2423 $x2426)))))
(assert
 (let (($x2423 (= Opp_2_5 4)))
 (let (($x2425 (= Opp_3_5 3)))
 (let (($x2426 (and (= Per_2_5 Per_3_5) $x2425)))
 (=> $x2426 $x2423)))))
(assert
 (let (($x2423 (= Opp_2_5 4)))
 (=> $x2423 (xor Home_2_5 Home_3_5))))
(assert
 (let (($x2440 (= Opp_3_6 3)))
 (let (($x2441 (and (= Per_2_6 Per_3_6) $x2440)))
 (let (($x2438 (= Opp_2_6 4)))
 (=> $x2438 $x2441)))))
(assert
 (let (($x2438 (= Opp_2_6 4)))
 (let (($x2440 (= Opp_3_6 3)))
 (let (($x2441 (and (= Per_2_6 Per_3_6) $x2440)))
 (=> $x2441 $x2438)))))
(assert
 (let (($x2438 (= Opp_2_6 4)))
 (=> $x2438 (xor Home_2_6 Home_3_6))))
(assert
 (let (($x2455 (= Opp_4_0 3)))
 (let (($x2456 (and (= Per_2_0 Per_4_0) $x2455)))
 (let (($x2453 (= Opp_2_0 5)))
 (=> $x2453 $x2456)))))
(assert
 (let (($x2453 (= Opp_2_0 5)))
 (let (($x2455 (= Opp_4_0 3)))
 (let (($x2456 (and (= Per_2_0 Per_4_0) $x2455)))
 (=> $x2456 $x2453)))))
(assert
 (let (($x2453 (= Opp_2_0 5)))
 (=> $x2453 (xor Home_2_0 Home_4_0))))
(assert
 (let (($x2470 (= Opp_4_1 3)))
 (let (($x2471 (and (= Per_2_1 Per_4_1) $x2470)))
 (let (($x2468 (= Opp_2_1 5)))
 (=> $x2468 $x2471)))))
(assert
 (let (($x2468 (= Opp_2_1 5)))
 (let (($x2470 (= Opp_4_1 3)))
 (let (($x2471 (and (= Per_2_1 Per_4_1) $x2470)))
 (=> $x2471 $x2468)))))
(assert
 (let (($x2468 (= Opp_2_1 5)))
 (=> $x2468 (xor Home_2_1 Home_4_1))))
(assert
 (let (($x2485 (= Opp_4_2 3)))
 (let (($x2486 (and (= Per_2_2 Per_4_2) $x2485)))
 (let (($x2483 (= Opp_2_2 5)))
 (=> $x2483 $x2486)))))
(assert
 (let (($x2483 (= Opp_2_2 5)))
 (let (($x2485 (= Opp_4_2 3)))
 (let (($x2486 (and (= Per_2_2 Per_4_2) $x2485)))
 (=> $x2486 $x2483)))))
(assert
 (let (($x2483 (= Opp_2_2 5)))
 (=> $x2483 (xor Home_2_2 Home_4_2))))
(assert
 (let (($x2500 (= Opp_4_3 3)))
 (let (($x2501 (and (= Per_2_3 Per_4_3) $x2500)))
 (let (($x2498 (= Opp_2_3 5)))
 (=> $x2498 $x2501)))))
(assert
 (let (($x2498 (= Opp_2_3 5)))
 (let (($x2500 (= Opp_4_3 3)))
 (let (($x2501 (and (= Per_2_3 Per_4_3) $x2500)))
 (=> $x2501 $x2498)))))
(assert
 (let (($x2498 (= Opp_2_3 5)))
 (=> $x2498 (xor Home_2_3 Home_4_3))))
(assert
 (let (($x2515 (= Opp_4_4 3)))
 (let (($x2516 (and (= Per_2_4 Per_4_4) $x2515)))
 (let (($x2513 (= Opp_2_4 5)))
 (=> $x2513 $x2516)))))
(assert
 (let (($x2513 (= Opp_2_4 5)))
 (let (($x2515 (= Opp_4_4 3)))
 (let (($x2516 (and (= Per_2_4 Per_4_4) $x2515)))
 (=> $x2516 $x2513)))))
(assert
 (let (($x2513 (= Opp_2_4 5)))
 (=> $x2513 (xor Home_2_4 Home_4_4))))
(assert
 (let (($x2530 (= Opp_4_5 3)))
 (let (($x2531 (and (= Per_2_5 Per_4_5) $x2530)))
 (let (($x2528 (= Opp_2_5 5)))
 (=> $x2528 $x2531)))))
(assert
 (let (($x2528 (= Opp_2_5 5)))
 (let (($x2530 (= Opp_4_5 3)))
 (let (($x2531 (and (= Per_2_5 Per_4_5) $x2530)))
 (=> $x2531 $x2528)))))
(assert
 (let (($x2528 (= Opp_2_5 5)))
 (=> $x2528 (xor Home_2_5 Home_4_5))))
(assert
 (let (($x2545 (= Opp_4_6 3)))
 (let (($x2546 (and (= Per_2_6 Per_4_6) $x2545)))
 (let (($x2543 (= Opp_2_6 5)))
 (=> $x2543 $x2546)))))
(assert
 (let (($x2543 (= Opp_2_6 5)))
 (let (($x2545 (= Opp_4_6 3)))
 (let (($x2546 (and (= Per_2_6 Per_4_6) $x2545)))
 (=> $x2546 $x2543)))))
(assert
 (let (($x2543 (= Opp_2_6 5)))
 (=> $x2543 (xor Home_2_6 Home_4_6))))
(assert
 (let (($x2560 (= Opp_5_0 3)))
 (let (($x2561 (and (= Per_2_0 Per_5_0) $x2560)))
 (let (($x2558 (= Opp_2_0 6)))
 (=> $x2558 $x2561)))))
(assert
 (let (($x2558 (= Opp_2_0 6)))
 (let (($x2560 (= Opp_5_0 3)))
 (let (($x2561 (and (= Per_2_0 Per_5_0) $x2560)))
 (=> $x2561 $x2558)))))
(assert
 (let (($x2558 (= Opp_2_0 6)))
 (=> $x2558 (xor Home_2_0 Home_5_0))))
(assert
 (let (($x2575 (= Opp_5_1 3)))
 (let (($x2576 (and (= Per_2_1 Per_5_1) $x2575)))
 (let (($x2573 (= Opp_2_1 6)))
 (=> $x2573 $x2576)))))
(assert
 (let (($x2573 (= Opp_2_1 6)))
 (let (($x2575 (= Opp_5_1 3)))
 (let (($x2576 (and (= Per_2_1 Per_5_1) $x2575)))
 (=> $x2576 $x2573)))))
(assert
 (let (($x2573 (= Opp_2_1 6)))
 (=> $x2573 (xor Home_2_1 Home_5_1))))
(assert
 (let (($x2590 (= Opp_5_2 3)))
 (let (($x2591 (and (= Per_2_2 Per_5_2) $x2590)))
 (let (($x2588 (= Opp_2_2 6)))
 (=> $x2588 $x2591)))))
(assert
 (let (($x2588 (= Opp_2_2 6)))
 (let (($x2590 (= Opp_5_2 3)))
 (let (($x2591 (and (= Per_2_2 Per_5_2) $x2590)))
 (=> $x2591 $x2588)))))
(assert
 (let (($x2588 (= Opp_2_2 6)))
 (=> $x2588 (xor Home_2_2 Home_5_2))))
(assert
 (let (($x2605 (= Opp_5_3 3)))
 (let (($x2606 (and (= Per_2_3 Per_5_3) $x2605)))
 (let (($x2603 (= Opp_2_3 6)))
 (=> $x2603 $x2606)))))
(assert
 (let (($x2603 (= Opp_2_3 6)))
 (let (($x2605 (= Opp_5_3 3)))
 (let (($x2606 (and (= Per_2_3 Per_5_3) $x2605)))
 (=> $x2606 $x2603)))))
(assert
 (let (($x2603 (= Opp_2_3 6)))
 (=> $x2603 (xor Home_2_3 Home_5_3))))
(assert
 (let (($x2620 (= Opp_5_4 3)))
 (let (($x2621 (and (= Per_2_4 Per_5_4) $x2620)))
 (let (($x2618 (= Opp_2_4 6)))
 (=> $x2618 $x2621)))))
(assert
 (let (($x2618 (= Opp_2_4 6)))
 (let (($x2620 (= Opp_5_4 3)))
 (let (($x2621 (and (= Per_2_4 Per_5_4) $x2620)))
 (=> $x2621 $x2618)))))
(assert
 (let (($x2618 (= Opp_2_4 6)))
 (=> $x2618 (xor Home_2_4 Home_5_4))))
(assert
 (let (($x2635 (= Opp_5_5 3)))
 (let (($x2636 (and (= Per_2_5 Per_5_5) $x2635)))
 (let (($x2633 (= Opp_2_5 6)))
 (=> $x2633 $x2636)))))
(assert
 (let (($x2633 (= Opp_2_5 6)))
 (let (($x2635 (= Opp_5_5 3)))
 (let (($x2636 (and (= Per_2_5 Per_5_5) $x2635)))
 (=> $x2636 $x2633)))))
(assert
 (let (($x2633 (= Opp_2_5 6)))
 (=> $x2633 (xor Home_2_5 Home_5_5))))
(assert
 (let (($x2650 (= Opp_5_6 3)))
 (let (($x2651 (and (= Per_2_6 Per_5_6) $x2650)))
 (let (($x2648 (= Opp_2_6 6)))
 (=> $x2648 $x2651)))))
(assert
 (let (($x2648 (= Opp_2_6 6)))
 (let (($x2650 (= Opp_5_6 3)))
 (let (($x2651 (and (= Per_2_6 Per_5_6) $x2650)))
 (=> $x2651 $x2648)))))
(assert
 (let (($x2648 (= Opp_2_6 6)))
 (=> $x2648 (xor Home_2_6 Home_5_6))))
(assert
 (let (($x2665 (= Opp_6_0 3)))
 (let (($x2666 (and (= Per_2_0 Per_6_0) $x2665)))
 (let (($x2663 (= Opp_2_0 7)))
 (=> $x2663 $x2666)))))
(assert
 (let (($x2663 (= Opp_2_0 7)))
 (let (($x2665 (= Opp_6_0 3)))
 (let (($x2666 (and (= Per_2_0 Per_6_0) $x2665)))
 (=> $x2666 $x2663)))))
(assert
 (let (($x2663 (= Opp_2_0 7)))
 (=> $x2663 (xor Home_2_0 Home_6_0))))
(assert
 (let (($x2680 (= Opp_6_1 3)))
 (let (($x2681 (and (= Per_2_1 Per_6_1) $x2680)))
 (let (($x2678 (= Opp_2_1 7)))
 (=> $x2678 $x2681)))))
(assert
 (let (($x2678 (= Opp_2_1 7)))
 (let (($x2680 (= Opp_6_1 3)))
 (let (($x2681 (and (= Per_2_1 Per_6_1) $x2680)))
 (=> $x2681 $x2678)))))
(assert
 (let (($x2678 (= Opp_2_1 7)))
 (=> $x2678 (xor Home_2_1 Home_6_1))))
(assert
 (let (($x2695 (= Opp_6_2 3)))
 (let (($x2696 (and (= Per_2_2 Per_6_2) $x2695)))
 (let (($x2693 (= Opp_2_2 7)))
 (=> $x2693 $x2696)))))
(assert
 (let (($x2693 (= Opp_2_2 7)))
 (let (($x2695 (= Opp_6_2 3)))
 (let (($x2696 (and (= Per_2_2 Per_6_2) $x2695)))
 (=> $x2696 $x2693)))))
(assert
 (let (($x2693 (= Opp_2_2 7)))
 (=> $x2693 (xor Home_2_2 Home_6_2))))
(assert
 (let (($x2710 (= Opp_6_3 3)))
 (let (($x2711 (and (= Per_2_3 Per_6_3) $x2710)))
 (let (($x2708 (= Opp_2_3 7)))
 (=> $x2708 $x2711)))))
(assert
 (let (($x2708 (= Opp_2_3 7)))
 (let (($x2710 (= Opp_6_3 3)))
 (let (($x2711 (and (= Per_2_3 Per_6_3) $x2710)))
 (=> $x2711 $x2708)))))
(assert
 (let (($x2708 (= Opp_2_3 7)))
 (=> $x2708 (xor Home_2_3 Home_6_3))))
(assert
 (let (($x2725 (= Opp_6_4 3)))
 (let (($x2726 (and (= Per_2_4 Per_6_4) $x2725)))
 (let (($x2723 (= Opp_2_4 7)))
 (=> $x2723 $x2726)))))
(assert
 (let (($x2723 (= Opp_2_4 7)))
 (let (($x2725 (= Opp_6_4 3)))
 (let (($x2726 (and (= Per_2_4 Per_6_4) $x2725)))
 (=> $x2726 $x2723)))))
(assert
 (let (($x2723 (= Opp_2_4 7)))
 (=> $x2723 (xor Home_2_4 Home_6_4))))
(assert
 (let (($x2740 (= Opp_6_5 3)))
 (let (($x2741 (and (= Per_2_5 Per_6_5) $x2740)))
 (let (($x2738 (= Opp_2_5 7)))
 (=> $x2738 $x2741)))))
(assert
 (let (($x2738 (= Opp_2_5 7)))
 (let (($x2740 (= Opp_6_5 3)))
 (let (($x2741 (and (= Per_2_5 Per_6_5) $x2740)))
 (=> $x2741 $x2738)))))
(assert
 (let (($x2738 (= Opp_2_5 7)))
 (=> $x2738 (xor Home_2_5 Home_6_5))))
(assert
 (let (($x2755 (= Opp_6_6 3)))
 (let (($x2756 (and (= Per_2_6 Per_6_6) $x2755)))
 (let (($x2753 (= Opp_2_6 7)))
 (=> $x2753 $x2756)))))
(assert
 (let (($x2753 (= Opp_2_6 7)))
 (let (($x2755 (= Opp_6_6 3)))
 (let (($x2756 (and (= Per_2_6 Per_6_6) $x2755)))
 (=> $x2756 $x2753)))))
(assert
 (let (($x2753 (= Opp_2_6 7)))
 (=> $x2753 (xor Home_2_6 Home_6_6))))
(assert
 (let (($x2770 (= Opp_7_0 3)))
 (let (($x2771 (and (= Per_2_0 Per_7_0) $x2770)))
 (let (($x2768 (= Opp_2_0 8)))
 (=> $x2768 $x2771)))))
(assert
 (let (($x2768 (= Opp_2_0 8)))
 (let (($x2770 (= Opp_7_0 3)))
 (let (($x2771 (and (= Per_2_0 Per_7_0) $x2770)))
 (=> $x2771 $x2768)))))
(assert
 (let (($x2768 (= Opp_2_0 8)))
 (=> $x2768 (xor Home_2_0 Home_7_0))))
(assert
 (let (($x2785 (= Opp_7_1 3)))
 (let (($x2786 (and (= Per_2_1 Per_7_1) $x2785)))
 (let (($x2783 (= Opp_2_1 8)))
 (=> $x2783 $x2786)))))
(assert
 (let (($x2783 (= Opp_2_1 8)))
 (let (($x2785 (= Opp_7_1 3)))
 (let (($x2786 (and (= Per_2_1 Per_7_1) $x2785)))
 (=> $x2786 $x2783)))))
(assert
 (let (($x2783 (= Opp_2_1 8)))
 (=> $x2783 (xor Home_2_1 Home_7_1))))
(assert
 (let (($x2800 (= Opp_7_2 3)))
 (let (($x2801 (and (= Per_2_2 Per_7_2) $x2800)))
 (let (($x2798 (= Opp_2_2 8)))
 (=> $x2798 $x2801)))))
(assert
 (let (($x2798 (= Opp_2_2 8)))
 (let (($x2800 (= Opp_7_2 3)))
 (let (($x2801 (and (= Per_2_2 Per_7_2) $x2800)))
 (=> $x2801 $x2798)))))
(assert
 (let (($x2798 (= Opp_2_2 8)))
 (=> $x2798 (xor Home_2_2 Home_7_2))))
(assert
 (let (($x2815 (= Opp_7_3 3)))
 (let (($x2816 (and (= Per_2_3 Per_7_3) $x2815)))
 (let (($x2813 (= Opp_2_3 8)))
 (=> $x2813 $x2816)))))
(assert
 (let (($x2813 (= Opp_2_3 8)))
 (let (($x2815 (= Opp_7_3 3)))
 (let (($x2816 (and (= Per_2_3 Per_7_3) $x2815)))
 (=> $x2816 $x2813)))))
(assert
 (let (($x2813 (= Opp_2_3 8)))
 (=> $x2813 (xor Home_2_3 Home_7_3))))
(assert
 (let (($x2830 (= Opp_7_4 3)))
 (let (($x2831 (and (= Per_2_4 Per_7_4) $x2830)))
 (let (($x2828 (= Opp_2_4 8)))
 (=> $x2828 $x2831)))))
(assert
 (let (($x2828 (= Opp_2_4 8)))
 (let (($x2830 (= Opp_7_4 3)))
 (let (($x2831 (and (= Per_2_4 Per_7_4) $x2830)))
 (=> $x2831 $x2828)))))
(assert
 (let (($x2828 (= Opp_2_4 8)))
 (=> $x2828 (xor Home_2_4 Home_7_4))))
(assert
 (let (($x2845 (= Opp_7_5 3)))
 (let (($x2846 (and (= Per_2_5 Per_7_5) $x2845)))
 (let (($x2843 (= Opp_2_5 8)))
 (=> $x2843 $x2846)))))
(assert
 (let (($x2843 (= Opp_2_5 8)))
 (let (($x2845 (= Opp_7_5 3)))
 (let (($x2846 (and (= Per_2_5 Per_7_5) $x2845)))
 (=> $x2846 $x2843)))))
(assert
 (let (($x2843 (= Opp_2_5 8)))
 (=> $x2843 (xor Home_2_5 Home_7_5))))
(assert
 (let (($x2860 (= Opp_7_6 3)))
 (let (($x2861 (and (= Per_2_6 Per_7_6) $x2860)))
 (let (($x2858 (= Opp_2_6 8)))
 (=> $x2858 $x2861)))))
(assert
 (let (($x2858 (= Opp_2_6 8)))
 (let (($x2860 (= Opp_7_6 3)))
 (let (($x2861 (and (= Per_2_6 Per_7_6) $x2860)))
 (=> $x2861 $x2858)))))
(assert
 (let (($x2858 (= Opp_2_6 8)))
 (=> $x2858 (xor Home_2_6 Home_7_6))))
(assert
 (let (($x920 (= Opp_0_0 4)))
 (let (($x2874 (and (= Per_3_0 Per_0_0) $x920)))
 (let (($x922 (= Opp_3_0 1)))
 (=> $x922 $x2874)))))
(assert
 (let (($x922 (= Opp_3_0 1)))
 (let (($x920 (= Opp_0_0 4)))
 (let (($x2874 (and (= Per_3_0 Per_0_0) $x920)))
 (=> $x2874 $x922)))))
(assert
 (let (($x922 (= Opp_3_0 1)))
 (=> $x922 (xor Home_3_0 Home_0_0))))
(assert
 (let (($x935 (= Opp_0_1 4)))
 (let (($x2887 (and (= Per_3_1 Per_0_1) $x935)))
 (let (($x937 (= Opp_3_1 1)))
 (=> $x937 $x2887)))))
(assert
 (let (($x937 (= Opp_3_1 1)))
 (let (($x935 (= Opp_0_1 4)))
 (let (($x2887 (and (= Per_3_1 Per_0_1) $x935)))
 (=> $x2887 $x937)))))
(assert
 (let (($x937 (= Opp_3_1 1)))
 (=> $x937 (xor Home_3_1 Home_0_1))))
(assert
 (let (($x950 (= Opp_0_2 4)))
 (let (($x2900 (and (= Per_3_2 Per_0_2) $x950)))
 (let (($x952 (= Opp_3_2 1)))
 (=> $x952 $x2900)))))
(assert
 (let (($x952 (= Opp_3_2 1)))
 (let (($x950 (= Opp_0_2 4)))
 (let (($x2900 (and (= Per_3_2 Per_0_2) $x950)))
 (=> $x2900 $x952)))))
(assert
 (let (($x952 (= Opp_3_2 1)))
 (=> $x952 (xor Home_3_2 Home_0_2))))
(assert
 (let (($x965 (= Opp_0_3 4)))
 (let (($x2913 (and (= Per_3_3 Per_0_3) $x965)))
 (let (($x967 (= Opp_3_3 1)))
 (=> $x967 $x2913)))))
(assert
 (let (($x967 (= Opp_3_3 1)))
 (let (($x965 (= Opp_0_3 4)))
 (let (($x2913 (and (= Per_3_3 Per_0_3) $x965)))
 (=> $x2913 $x967)))))
(assert
 (let (($x967 (= Opp_3_3 1)))
 (=> $x967 (xor Home_3_3 Home_0_3))))
(assert
 (let (($x980 (= Opp_0_4 4)))
 (let (($x2926 (and (= Per_3_4 Per_0_4) $x980)))
 (let (($x982 (= Opp_3_4 1)))
 (=> $x982 $x2926)))))
(assert
 (let (($x982 (= Opp_3_4 1)))
 (let (($x980 (= Opp_0_4 4)))
 (let (($x2926 (and (= Per_3_4 Per_0_4) $x980)))
 (=> $x2926 $x982)))))
(assert
 (let (($x982 (= Opp_3_4 1)))
 (=> $x982 (xor Home_3_4 Home_0_4))))
(assert
 (let (($x995 (= Opp_0_5 4)))
 (let (($x2939 (and (= Per_3_5 Per_0_5) $x995)))
 (let (($x997 (= Opp_3_5 1)))
 (=> $x997 $x2939)))))
(assert
 (let (($x997 (= Opp_3_5 1)))
 (let (($x995 (= Opp_0_5 4)))
 (let (($x2939 (and (= Per_3_5 Per_0_5) $x995)))
 (=> $x2939 $x997)))))
(assert
 (let (($x997 (= Opp_3_5 1)))
 (=> $x997 (xor Home_3_5 Home_0_5))))
(assert
 (let (($x1010 (= Opp_0_6 4)))
 (let (($x2952 (and (= Per_3_6 Per_0_6) $x1010)))
 (let (($x1012 (= Opp_3_6 1)))
 (=> $x1012 $x2952)))))
(assert
 (let (($x1012 (= Opp_3_6 1)))
 (let (($x1010 (= Opp_0_6 4)))
 (let (($x2952 (and (= Per_3_6 Per_0_6) $x1010)))
 (=> $x2952 $x1012)))))
(assert
 (let (($x1012 (= Opp_3_6 1)))
 (=> $x1012 (xor Home_3_6 Home_0_6))))
(assert
 (let (($x1641 (= Opp_1_0 4)))
 (let (($x2965 (and (= Per_3_0 Per_1_0) $x1641)))
 (let (($x1643 (= Opp_3_0 2)))
 (=> $x1643 $x2965)))))
(assert
 (let (($x1643 (= Opp_3_0 2)))
 (let (($x1641 (= Opp_1_0 4)))
 (let (($x2965 (and (= Per_3_0 Per_1_0) $x1641)))
 (=> $x2965 $x1643)))))
(assert
 (let (($x1643 (= Opp_3_0 2)))
 (=> $x1643 (xor Home_3_0 Home_1_0))))
(assert
 (let (($x1656 (= Opp_1_1 4)))
 (let (($x2978 (and (= Per_3_1 Per_1_1) $x1656)))
 (let (($x1658 (= Opp_3_1 2)))
 (=> $x1658 $x2978)))))
(assert
 (let (($x1658 (= Opp_3_1 2)))
 (let (($x1656 (= Opp_1_1 4)))
 (let (($x2978 (and (= Per_3_1 Per_1_1) $x1656)))
 (=> $x2978 $x1658)))))
(assert
 (let (($x1658 (= Opp_3_1 2)))
 (=> $x1658 (xor Home_3_1 Home_1_1))))
(assert
 (let (($x1671 (= Opp_1_2 4)))
 (let (($x2991 (and (= Per_3_2 Per_1_2) $x1671)))
 (let (($x1673 (= Opp_3_2 2)))
 (=> $x1673 $x2991)))))
(assert
 (let (($x1673 (= Opp_3_2 2)))
 (let (($x1671 (= Opp_1_2 4)))
 (let (($x2991 (and (= Per_3_2 Per_1_2) $x1671)))
 (=> $x2991 $x1673)))))
(assert
 (let (($x1673 (= Opp_3_2 2)))
 (=> $x1673 (xor Home_3_2 Home_1_2))))
(assert
 (let (($x1686 (= Opp_1_3 4)))
 (let (($x3004 (and (= Per_3_3 Per_1_3) $x1686)))
 (let (($x1688 (= Opp_3_3 2)))
 (=> $x1688 $x3004)))))
(assert
 (let (($x1688 (= Opp_3_3 2)))
 (let (($x1686 (= Opp_1_3 4)))
 (let (($x3004 (and (= Per_3_3 Per_1_3) $x1686)))
 (=> $x3004 $x1688)))))
(assert
 (let (($x1688 (= Opp_3_3 2)))
 (=> $x1688 (xor Home_3_3 Home_1_3))))
(assert
 (let (($x1701 (= Opp_1_4 4)))
 (let (($x3017 (and (= Per_3_4 Per_1_4) $x1701)))
 (let (($x1703 (= Opp_3_4 2)))
 (=> $x1703 $x3017)))))
(assert
 (let (($x1703 (= Opp_3_4 2)))
 (let (($x1701 (= Opp_1_4 4)))
 (let (($x3017 (and (= Per_3_4 Per_1_4) $x1701)))
 (=> $x3017 $x1703)))))
(assert
 (let (($x1703 (= Opp_3_4 2)))
 (=> $x1703 (xor Home_3_4 Home_1_4))))
(assert
 (let (($x1716 (= Opp_1_5 4)))
 (let (($x3030 (and (= Per_3_5 Per_1_5) $x1716)))
 (let (($x1718 (= Opp_3_5 2)))
 (=> $x1718 $x3030)))))
(assert
 (let (($x1718 (= Opp_3_5 2)))
 (let (($x1716 (= Opp_1_5 4)))
 (let (($x3030 (and (= Per_3_5 Per_1_5) $x1716)))
 (=> $x3030 $x1718)))))
(assert
 (let (($x1718 (= Opp_3_5 2)))
 (=> $x1718 (xor Home_3_5 Home_1_5))))
(assert
 (let (($x1731 (= Opp_1_6 4)))
 (let (($x3043 (and (= Per_3_6 Per_1_6) $x1731)))
 (let (($x1733 (= Opp_3_6 2)))
 (=> $x1733 $x3043)))))
(assert
 (let (($x1733 (= Opp_3_6 2)))
 (let (($x1731 (= Opp_1_6 4)))
 (let (($x3043 (and (= Per_3_6 Per_1_6) $x1731)))
 (=> $x3043 $x1733)))))
(assert
 (let (($x1733 (= Opp_3_6 2)))
 (=> $x1733 (xor Home_3_6 Home_1_6))))
(assert
 (let (($x2348 (= Opp_2_0 4)))
 (let (($x3056 (and (= Per_3_0 Per_2_0) $x2348)))
 (let (($x2350 (= Opp_3_0 3)))
 (=> $x2350 $x3056)))))
(assert
 (let (($x2350 (= Opp_3_0 3)))
 (let (($x2348 (= Opp_2_0 4)))
 (let (($x3056 (and (= Per_3_0 Per_2_0) $x2348)))
 (=> $x3056 $x2350)))))
(assert
 (let (($x2350 (= Opp_3_0 3)))
 (=> $x2350 (xor Home_3_0 Home_2_0))))
(assert
 (let (($x2363 (= Opp_2_1 4)))
 (let (($x3069 (and (= Per_3_1 Per_2_1) $x2363)))
 (let (($x2365 (= Opp_3_1 3)))
 (=> $x2365 $x3069)))))
(assert
 (let (($x2365 (= Opp_3_1 3)))
 (let (($x2363 (= Opp_2_1 4)))
 (let (($x3069 (and (= Per_3_1 Per_2_1) $x2363)))
 (=> $x3069 $x2365)))))
(assert
 (let (($x2365 (= Opp_3_1 3)))
 (=> $x2365 (xor Home_3_1 Home_2_1))))
(assert
 (let (($x2378 (= Opp_2_2 4)))
 (let (($x3082 (and (= Per_3_2 Per_2_2) $x2378)))
 (let (($x2380 (= Opp_3_2 3)))
 (=> $x2380 $x3082)))))
(assert
 (let (($x2380 (= Opp_3_2 3)))
 (let (($x2378 (= Opp_2_2 4)))
 (let (($x3082 (and (= Per_3_2 Per_2_2) $x2378)))
 (=> $x3082 $x2380)))))
(assert
 (let (($x2380 (= Opp_3_2 3)))
 (=> $x2380 (xor Home_3_2 Home_2_2))))
(assert
 (let (($x2393 (= Opp_2_3 4)))
 (let (($x3095 (and (= Per_3_3 Per_2_3) $x2393)))
 (let (($x2395 (= Opp_3_3 3)))
 (=> $x2395 $x3095)))))
(assert
 (let (($x2395 (= Opp_3_3 3)))
 (let (($x2393 (= Opp_2_3 4)))
 (let (($x3095 (and (= Per_3_3 Per_2_3) $x2393)))
 (=> $x3095 $x2395)))))
(assert
 (let (($x2395 (= Opp_3_3 3)))
 (=> $x2395 (xor Home_3_3 Home_2_3))))
(assert
 (let (($x2408 (= Opp_2_4 4)))
 (let (($x3108 (and (= Per_3_4 Per_2_4) $x2408)))
 (let (($x2410 (= Opp_3_4 3)))
 (=> $x2410 $x3108)))))
(assert
 (let (($x2410 (= Opp_3_4 3)))
 (let (($x2408 (= Opp_2_4 4)))
 (let (($x3108 (and (= Per_3_4 Per_2_4) $x2408)))
 (=> $x3108 $x2410)))))
(assert
 (let (($x2410 (= Opp_3_4 3)))
 (=> $x2410 (xor Home_3_4 Home_2_4))))
(assert
 (let (($x2423 (= Opp_2_5 4)))
 (let (($x3121 (and (= Per_3_5 Per_2_5) $x2423)))
 (let (($x2425 (= Opp_3_5 3)))
 (=> $x2425 $x3121)))))
(assert
 (let (($x2425 (= Opp_3_5 3)))
 (let (($x2423 (= Opp_2_5 4)))
 (let (($x3121 (and (= Per_3_5 Per_2_5) $x2423)))
 (=> $x3121 $x2425)))))
(assert
 (let (($x2425 (= Opp_3_5 3)))
 (=> $x2425 (xor Home_3_5 Home_2_5))))
(assert
 (let (($x2438 (= Opp_2_6 4)))
 (let (($x3134 (and (= Per_3_6 Per_2_6) $x2438)))
 (let (($x2440 (= Opp_3_6 3)))
 (=> $x2440 $x3134)))))
(assert
 (let (($x2440 (= Opp_3_6 3)))
 (let (($x2438 (= Opp_2_6 4)))
 (let (($x3134 (and (= Per_3_6 Per_2_6) $x2438)))
 (=> $x3134 $x2440)))))
(assert
 (let (($x2440 (= Opp_3_6 3)))
 (=> $x2440 (xor Home_3_6 Home_2_6))))
(assert
 (let (($x3148 (= Opp_4_0 4)))
 (let (($x3149 (and (= Per_3_0 Per_4_0) $x3148)))
 (let (($x3146 (= Opp_3_0 5)))
 (=> $x3146 $x3149)))))
(assert
 (let (($x3146 (= Opp_3_0 5)))
 (let (($x3148 (= Opp_4_0 4)))
 (let (($x3149 (and (= Per_3_0 Per_4_0) $x3148)))
 (=> $x3149 $x3146)))))
(assert
 (let (($x3146 (= Opp_3_0 5)))
 (=> $x3146 (xor Home_3_0 Home_4_0))))
(assert
 (let (($x3163 (= Opp_4_1 4)))
 (let (($x3164 (and (= Per_3_1 Per_4_1) $x3163)))
 (let (($x3161 (= Opp_3_1 5)))
 (=> $x3161 $x3164)))))
(assert
 (let (($x3161 (= Opp_3_1 5)))
 (let (($x3163 (= Opp_4_1 4)))
 (let (($x3164 (and (= Per_3_1 Per_4_1) $x3163)))
 (=> $x3164 $x3161)))))
(assert
 (let (($x3161 (= Opp_3_1 5)))
 (=> $x3161 (xor Home_3_1 Home_4_1))))
(assert
 (let (($x3178 (= Opp_4_2 4)))
 (let (($x3179 (and (= Per_3_2 Per_4_2) $x3178)))
 (let (($x3176 (= Opp_3_2 5)))
 (=> $x3176 $x3179)))))
(assert
 (let (($x3176 (= Opp_3_2 5)))
 (let (($x3178 (= Opp_4_2 4)))
 (let (($x3179 (and (= Per_3_2 Per_4_2) $x3178)))
 (=> $x3179 $x3176)))))
(assert
 (let (($x3176 (= Opp_3_2 5)))
 (=> $x3176 (xor Home_3_2 Home_4_2))))
(assert
 (let (($x3193 (= Opp_4_3 4)))
 (let (($x3194 (and (= Per_3_3 Per_4_3) $x3193)))
 (let (($x3191 (= Opp_3_3 5)))
 (=> $x3191 $x3194)))))
(assert
 (let (($x3191 (= Opp_3_3 5)))
 (let (($x3193 (= Opp_4_3 4)))
 (let (($x3194 (and (= Per_3_3 Per_4_3) $x3193)))
 (=> $x3194 $x3191)))))
(assert
 (let (($x3191 (= Opp_3_3 5)))
 (=> $x3191 (xor Home_3_3 Home_4_3))))
(assert
 (let (($x3208 (= Opp_4_4 4)))
 (let (($x3209 (and (= Per_3_4 Per_4_4) $x3208)))
 (let (($x3206 (= Opp_3_4 5)))
 (=> $x3206 $x3209)))))
(assert
 (let (($x3206 (= Opp_3_4 5)))
 (let (($x3208 (= Opp_4_4 4)))
 (let (($x3209 (and (= Per_3_4 Per_4_4) $x3208)))
 (=> $x3209 $x3206)))))
(assert
 (let (($x3206 (= Opp_3_4 5)))
 (=> $x3206 (xor Home_3_4 Home_4_4))))
(assert
 (let (($x3223 (= Opp_4_5 4)))
 (let (($x3224 (and (= Per_3_5 Per_4_5) $x3223)))
 (let (($x3221 (= Opp_3_5 5)))
 (=> $x3221 $x3224)))))
(assert
 (let (($x3221 (= Opp_3_5 5)))
 (let (($x3223 (= Opp_4_5 4)))
 (let (($x3224 (and (= Per_3_5 Per_4_5) $x3223)))
 (=> $x3224 $x3221)))))
(assert
 (let (($x3221 (= Opp_3_5 5)))
 (=> $x3221 (xor Home_3_5 Home_4_5))))
(assert
 (let (($x3238 (= Opp_4_6 4)))
 (let (($x3239 (and (= Per_3_6 Per_4_6) $x3238)))
 (let (($x3236 (= Opp_3_6 5)))
 (=> $x3236 $x3239)))))
(assert
 (let (($x3236 (= Opp_3_6 5)))
 (let (($x3238 (= Opp_4_6 4)))
 (let (($x3239 (and (= Per_3_6 Per_4_6) $x3238)))
 (=> $x3239 $x3236)))))
(assert
 (let (($x3236 (= Opp_3_6 5)))
 (=> $x3236 (xor Home_3_6 Home_4_6))))
(assert
 (let (($x3253 (= Opp_5_0 4)))
 (let (($x3254 (and (= Per_3_0 Per_5_0) $x3253)))
 (let (($x3251 (= Opp_3_0 6)))
 (=> $x3251 $x3254)))))
(assert
 (let (($x3251 (= Opp_3_0 6)))
 (let (($x3253 (= Opp_5_0 4)))
 (let (($x3254 (and (= Per_3_0 Per_5_0) $x3253)))
 (=> $x3254 $x3251)))))
(assert
 (let (($x3251 (= Opp_3_0 6)))
 (=> $x3251 (xor Home_3_0 Home_5_0))))
(assert
 (let (($x3268 (= Opp_5_1 4)))
 (let (($x3269 (and (= Per_3_1 Per_5_1) $x3268)))
 (let (($x3266 (= Opp_3_1 6)))
 (=> $x3266 $x3269)))))
(assert
 (let (($x3266 (= Opp_3_1 6)))
 (let (($x3268 (= Opp_5_1 4)))
 (let (($x3269 (and (= Per_3_1 Per_5_1) $x3268)))
 (=> $x3269 $x3266)))))
(assert
 (let (($x3266 (= Opp_3_1 6)))
 (=> $x3266 (xor Home_3_1 Home_5_1))))
(assert
 (let (($x3283 (= Opp_5_2 4)))
 (let (($x3284 (and (= Per_3_2 Per_5_2) $x3283)))
 (let (($x3281 (= Opp_3_2 6)))
 (=> $x3281 $x3284)))))
(assert
 (let (($x3281 (= Opp_3_2 6)))
 (let (($x3283 (= Opp_5_2 4)))
 (let (($x3284 (and (= Per_3_2 Per_5_2) $x3283)))
 (=> $x3284 $x3281)))))
(assert
 (let (($x3281 (= Opp_3_2 6)))
 (=> $x3281 (xor Home_3_2 Home_5_2))))
(assert
 (let (($x3298 (= Opp_5_3 4)))
 (let (($x3299 (and (= Per_3_3 Per_5_3) $x3298)))
 (let (($x3296 (= Opp_3_3 6)))
 (=> $x3296 $x3299)))))
(assert
 (let (($x3296 (= Opp_3_3 6)))
 (let (($x3298 (= Opp_5_3 4)))
 (let (($x3299 (and (= Per_3_3 Per_5_3) $x3298)))
 (=> $x3299 $x3296)))))
(assert
 (let (($x3296 (= Opp_3_3 6)))
 (=> $x3296 (xor Home_3_3 Home_5_3))))
(assert
 (let (($x3313 (= Opp_5_4 4)))
 (let (($x3314 (and (= Per_3_4 Per_5_4) $x3313)))
 (let (($x3311 (= Opp_3_4 6)))
 (=> $x3311 $x3314)))))
(assert
 (let (($x3311 (= Opp_3_4 6)))
 (let (($x3313 (= Opp_5_4 4)))
 (let (($x3314 (and (= Per_3_4 Per_5_4) $x3313)))
 (=> $x3314 $x3311)))))
(assert
 (let (($x3311 (= Opp_3_4 6)))
 (=> $x3311 (xor Home_3_4 Home_5_4))))
(assert
 (let (($x3328 (= Opp_5_5 4)))
 (let (($x3329 (and (= Per_3_5 Per_5_5) $x3328)))
 (let (($x3326 (= Opp_3_5 6)))
 (=> $x3326 $x3329)))))
(assert
 (let (($x3326 (= Opp_3_5 6)))
 (let (($x3328 (= Opp_5_5 4)))
 (let (($x3329 (and (= Per_3_5 Per_5_5) $x3328)))
 (=> $x3329 $x3326)))))
(assert
 (let (($x3326 (= Opp_3_5 6)))
 (=> $x3326 (xor Home_3_5 Home_5_5))))
(assert
 (let (($x3343 (= Opp_5_6 4)))
 (let (($x3344 (and (= Per_3_6 Per_5_6) $x3343)))
 (let (($x3341 (= Opp_3_6 6)))
 (=> $x3341 $x3344)))))
(assert
 (let (($x3341 (= Opp_3_6 6)))
 (let (($x3343 (= Opp_5_6 4)))
 (let (($x3344 (and (= Per_3_6 Per_5_6) $x3343)))
 (=> $x3344 $x3341)))))
(assert
 (let (($x3341 (= Opp_3_6 6)))
 (=> $x3341 (xor Home_3_6 Home_5_6))))
(assert
 (let (($x3358 (= Opp_6_0 4)))
 (let (($x3359 (and (= Per_3_0 Per_6_0) $x3358)))
 (let (($x3356 (= Opp_3_0 7)))
 (=> $x3356 $x3359)))))
(assert
 (let (($x3356 (= Opp_3_0 7)))
 (let (($x3358 (= Opp_6_0 4)))
 (let (($x3359 (and (= Per_3_0 Per_6_0) $x3358)))
 (=> $x3359 $x3356)))))
(assert
 (let (($x3356 (= Opp_3_0 7)))
 (=> $x3356 (xor Home_3_0 Home_6_0))))
(assert
 (let (($x3373 (= Opp_6_1 4)))
 (let (($x3374 (and (= Per_3_1 Per_6_1) $x3373)))
 (let (($x3371 (= Opp_3_1 7)))
 (=> $x3371 $x3374)))))
(assert
 (let (($x3371 (= Opp_3_1 7)))
 (let (($x3373 (= Opp_6_1 4)))
 (let (($x3374 (and (= Per_3_1 Per_6_1) $x3373)))
 (=> $x3374 $x3371)))))
(assert
 (let (($x3371 (= Opp_3_1 7)))
 (=> $x3371 (xor Home_3_1 Home_6_1))))
(assert
 (let (($x3388 (= Opp_6_2 4)))
 (let (($x3389 (and (= Per_3_2 Per_6_2) $x3388)))
 (let (($x3386 (= Opp_3_2 7)))
 (=> $x3386 $x3389)))))
(assert
 (let (($x3386 (= Opp_3_2 7)))
 (let (($x3388 (= Opp_6_2 4)))
 (let (($x3389 (and (= Per_3_2 Per_6_2) $x3388)))
 (=> $x3389 $x3386)))))
(assert
 (let (($x3386 (= Opp_3_2 7)))
 (=> $x3386 (xor Home_3_2 Home_6_2))))
(assert
 (let (($x3403 (= Opp_6_3 4)))
 (let (($x3404 (and (= Per_3_3 Per_6_3) $x3403)))
 (let (($x3401 (= Opp_3_3 7)))
 (=> $x3401 $x3404)))))
(assert
 (let (($x3401 (= Opp_3_3 7)))
 (let (($x3403 (= Opp_6_3 4)))
 (let (($x3404 (and (= Per_3_3 Per_6_3) $x3403)))
 (=> $x3404 $x3401)))))
(assert
 (let (($x3401 (= Opp_3_3 7)))
 (=> $x3401 (xor Home_3_3 Home_6_3))))
(assert
 (let (($x3418 (= Opp_6_4 4)))
 (let (($x3419 (and (= Per_3_4 Per_6_4) $x3418)))
 (let (($x3416 (= Opp_3_4 7)))
 (=> $x3416 $x3419)))))
(assert
 (let (($x3416 (= Opp_3_4 7)))
 (let (($x3418 (= Opp_6_4 4)))
 (let (($x3419 (and (= Per_3_4 Per_6_4) $x3418)))
 (=> $x3419 $x3416)))))
(assert
 (let (($x3416 (= Opp_3_4 7)))
 (=> $x3416 (xor Home_3_4 Home_6_4))))
(assert
 (let (($x3433 (= Opp_6_5 4)))
 (let (($x3434 (and (= Per_3_5 Per_6_5) $x3433)))
 (let (($x3431 (= Opp_3_5 7)))
 (=> $x3431 $x3434)))))
(assert
 (let (($x3431 (= Opp_3_5 7)))
 (let (($x3433 (= Opp_6_5 4)))
 (let (($x3434 (and (= Per_3_5 Per_6_5) $x3433)))
 (=> $x3434 $x3431)))))
(assert
 (let (($x3431 (= Opp_3_5 7)))
 (=> $x3431 (xor Home_3_5 Home_6_5))))
(assert
 (let (($x3448 (= Opp_6_6 4)))
 (let (($x3449 (and (= Per_3_6 Per_6_6) $x3448)))
 (let (($x3446 (= Opp_3_6 7)))
 (=> $x3446 $x3449)))))
(assert
 (let (($x3446 (= Opp_3_6 7)))
 (let (($x3448 (= Opp_6_6 4)))
 (let (($x3449 (and (= Per_3_6 Per_6_6) $x3448)))
 (=> $x3449 $x3446)))))
(assert
 (let (($x3446 (= Opp_3_6 7)))
 (=> $x3446 (xor Home_3_6 Home_6_6))))
(assert
 (let (($x3463 (= Opp_7_0 4)))
 (let (($x3464 (and (= Per_3_0 Per_7_0) $x3463)))
 (let (($x3461 (= Opp_3_0 8)))
 (=> $x3461 $x3464)))))
(assert
 (let (($x3461 (= Opp_3_0 8)))
 (let (($x3463 (= Opp_7_0 4)))
 (let (($x3464 (and (= Per_3_0 Per_7_0) $x3463)))
 (=> $x3464 $x3461)))))
(assert
 (let (($x3461 (= Opp_3_0 8)))
 (=> $x3461 (xor Home_3_0 Home_7_0))))
(assert
 (let (($x3478 (= Opp_7_1 4)))
 (let (($x3479 (and (= Per_3_1 Per_7_1) $x3478)))
 (let (($x3476 (= Opp_3_1 8)))
 (=> $x3476 $x3479)))))
(assert
 (let (($x3476 (= Opp_3_1 8)))
 (let (($x3478 (= Opp_7_1 4)))
 (let (($x3479 (and (= Per_3_1 Per_7_1) $x3478)))
 (=> $x3479 $x3476)))))
(assert
 (let (($x3476 (= Opp_3_1 8)))
 (=> $x3476 (xor Home_3_1 Home_7_1))))
(assert
 (let (($x3493 (= Opp_7_2 4)))
 (let (($x3494 (and (= Per_3_2 Per_7_2) $x3493)))
 (let (($x3491 (= Opp_3_2 8)))
 (=> $x3491 $x3494)))))
(assert
 (let (($x3491 (= Opp_3_2 8)))
 (let (($x3493 (= Opp_7_2 4)))
 (let (($x3494 (and (= Per_3_2 Per_7_2) $x3493)))
 (=> $x3494 $x3491)))))
(assert
 (let (($x3491 (= Opp_3_2 8)))
 (=> $x3491 (xor Home_3_2 Home_7_2))))
(assert
 (let (($x3508 (= Opp_7_3 4)))
 (let (($x3509 (and (= Per_3_3 Per_7_3) $x3508)))
 (let (($x3506 (= Opp_3_3 8)))
 (=> $x3506 $x3509)))))
(assert
 (let (($x3506 (= Opp_3_3 8)))
 (let (($x3508 (= Opp_7_3 4)))
 (let (($x3509 (and (= Per_3_3 Per_7_3) $x3508)))
 (=> $x3509 $x3506)))))
(assert
 (let (($x3506 (= Opp_3_3 8)))
 (=> $x3506 (xor Home_3_3 Home_7_3))))
(assert
 (let (($x3523 (= Opp_7_4 4)))
 (let (($x3524 (and (= Per_3_4 Per_7_4) $x3523)))
 (let (($x3521 (= Opp_3_4 8)))
 (=> $x3521 $x3524)))))
(assert
 (let (($x3521 (= Opp_3_4 8)))
 (let (($x3523 (= Opp_7_4 4)))
 (let (($x3524 (and (= Per_3_4 Per_7_4) $x3523)))
 (=> $x3524 $x3521)))))
(assert
 (let (($x3521 (= Opp_3_4 8)))
 (=> $x3521 (xor Home_3_4 Home_7_4))))
(assert
 (let (($x3538 (= Opp_7_5 4)))
 (let (($x3539 (and (= Per_3_5 Per_7_5) $x3538)))
 (let (($x3536 (= Opp_3_5 8)))
 (=> $x3536 $x3539)))))
(assert
 (let (($x3536 (= Opp_3_5 8)))
 (let (($x3538 (= Opp_7_5 4)))
 (let (($x3539 (and (= Per_3_5 Per_7_5) $x3538)))
 (=> $x3539 $x3536)))))
(assert
 (let (($x3536 (= Opp_3_5 8)))
 (=> $x3536 (xor Home_3_5 Home_7_5))))
(assert
 (let (($x3553 (= Opp_7_6 4)))
 (let (($x3554 (and (= Per_3_6 Per_7_6) $x3553)))
 (let (($x3551 (= Opp_3_6 8)))
 (=> $x3551 $x3554)))))
(assert
 (let (($x3551 (= Opp_3_6 8)))
 (let (($x3553 (= Opp_7_6 4)))
 (let (($x3554 (and (= Per_3_6 Per_7_6) $x3553)))
 (=> $x3554 $x3551)))))
(assert
 (let (($x3551 (= Opp_3_6 8)))
 (=> $x3551 (xor Home_3_6 Home_7_6))))
(assert
 (let (($x1025 (= Opp_0_0 5)))
 (let (($x3567 (and (= Per_4_0 Per_0_0) $x1025)))
 (let (($x1027 (= Opp_4_0 1)))
 (=> $x1027 $x3567)))))
(assert
 (let (($x1027 (= Opp_4_0 1)))
 (let (($x1025 (= Opp_0_0 5)))
 (let (($x3567 (and (= Per_4_0 Per_0_0) $x1025)))
 (=> $x3567 $x1027)))))
(assert
 (let (($x1027 (= Opp_4_0 1)))
 (=> $x1027 (xor Home_4_0 Home_0_0))))
(assert
 (let (($x1040 (= Opp_0_1 5)))
 (let (($x3580 (and (= Per_4_1 Per_0_1) $x1040)))
 (let (($x1042 (= Opp_4_1 1)))
 (=> $x1042 $x3580)))))
(assert
 (let (($x1042 (= Opp_4_1 1)))
 (let (($x1040 (= Opp_0_1 5)))
 (let (($x3580 (and (= Per_4_1 Per_0_1) $x1040)))
 (=> $x3580 $x1042)))))
(assert
 (let (($x1042 (= Opp_4_1 1)))
 (=> $x1042 (xor Home_4_1 Home_0_1))))
(assert
 (let (($x1055 (= Opp_0_2 5)))
 (let (($x3593 (and (= Per_4_2 Per_0_2) $x1055)))
 (let (($x1057 (= Opp_4_2 1)))
 (=> $x1057 $x3593)))))
(assert
 (let (($x1057 (= Opp_4_2 1)))
 (let (($x1055 (= Opp_0_2 5)))
 (let (($x3593 (and (= Per_4_2 Per_0_2) $x1055)))
 (=> $x3593 $x1057)))))
(assert
 (let (($x1057 (= Opp_4_2 1)))
 (=> $x1057 (xor Home_4_2 Home_0_2))))
(assert
 (let (($x1070 (= Opp_0_3 5)))
 (let (($x3606 (and (= Per_4_3 Per_0_3) $x1070)))
 (let (($x1072 (= Opp_4_3 1)))
 (=> $x1072 $x3606)))))
(assert
 (let (($x1072 (= Opp_4_3 1)))
 (let (($x1070 (= Opp_0_3 5)))
 (let (($x3606 (and (= Per_4_3 Per_0_3) $x1070)))
 (=> $x3606 $x1072)))))
(assert
 (let (($x1072 (= Opp_4_3 1)))
 (=> $x1072 (xor Home_4_3 Home_0_3))))
(assert
 (let (($x1085 (= Opp_0_4 5)))
 (let (($x3619 (and (= Per_4_4 Per_0_4) $x1085)))
 (let (($x1087 (= Opp_4_4 1)))
 (=> $x1087 $x3619)))))
(assert
 (let (($x1087 (= Opp_4_4 1)))
 (let (($x1085 (= Opp_0_4 5)))
 (let (($x3619 (and (= Per_4_4 Per_0_4) $x1085)))
 (=> $x3619 $x1087)))))
(assert
 (let (($x1087 (= Opp_4_4 1)))
 (=> $x1087 (xor Home_4_4 Home_0_4))))
(assert
 (let (($x1100 (= Opp_0_5 5)))
 (let (($x3632 (and (= Per_4_5 Per_0_5) $x1100)))
 (let (($x1102 (= Opp_4_5 1)))
 (=> $x1102 $x3632)))))
(assert
 (let (($x1102 (= Opp_4_5 1)))
 (let (($x1100 (= Opp_0_5 5)))
 (let (($x3632 (and (= Per_4_5 Per_0_5) $x1100)))
 (=> $x3632 $x1102)))))
(assert
 (let (($x1102 (= Opp_4_5 1)))
 (=> $x1102 (xor Home_4_5 Home_0_5))))
(assert
 (let (($x1115 (= Opp_0_6 5)))
 (let (($x3645 (and (= Per_4_6 Per_0_6) $x1115)))
 (let (($x1117 (= Opp_4_6 1)))
 (=> $x1117 $x3645)))))
(assert
 (let (($x1117 (= Opp_4_6 1)))
 (let (($x1115 (= Opp_0_6 5)))
 (let (($x3645 (and (= Per_4_6 Per_0_6) $x1115)))
 (=> $x3645 $x1117)))))
(assert
 (let (($x1117 (= Opp_4_6 1)))
 (=> $x1117 (xor Home_4_6 Home_0_6))))
(assert
 (let (($x1746 (= Opp_1_0 5)))
 (let (($x3658 (and (= Per_4_0 Per_1_0) $x1746)))
 (let (($x1748 (= Opp_4_0 2)))
 (=> $x1748 $x3658)))))
(assert
 (let (($x1748 (= Opp_4_0 2)))
 (let (($x1746 (= Opp_1_0 5)))
 (let (($x3658 (and (= Per_4_0 Per_1_0) $x1746)))
 (=> $x3658 $x1748)))))
(assert
 (let (($x1748 (= Opp_4_0 2)))
 (=> $x1748 (xor Home_4_0 Home_1_0))))
(assert
 (let (($x1761 (= Opp_1_1 5)))
 (let (($x3671 (and (= Per_4_1 Per_1_1) $x1761)))
 (let (($x1763 (= Opp_4_1 2)))
 (=> $x1763 $x3671)))))
(assert
 (let (($x1763 (= Opp_4_1 2)))
 (let (($x1761 (= Opp_1_1 5)))
 (let (($x3671 (and (= Per_4_1 Per_1_1) $x1761)))
 (=> $x3671 $x1763)))))
(assert
 (let (($x1763 (= Opp_4_1 2)))
 (=> $x1763 (xor Home_4_1 Home_1_1))))
(assert
 (let (($x1776 (= Opp_1_2 5)))
 (let (($x3684 (and (= Per_4_2 Per_1_2) $x1776)))
 (let (($x1778 (= Opp_4_2 2)))
 (=> $x1778 $x3684)))))
(assert
 (let (($x1778 (= Opp_4_2 2)))
 (let (($x1776 (= Opp_1_2 5)))
 (let (($x3684 (and (= Per_4_2 Per_1_2) $x1776)))
 (=> $x3684 $x1778)))))
(assert
 (let (($x1778 (= Opp_4_2 2)))
 (=> $x1778 (xor Home_4_2 Home_1_2))))
(assert
 (let (($x1791 (= Opp_1_3 5)))
 (let (($x3697 (and (= Per_4_3 Per_1_3) $x1791)))
 (let (($x1793 (= Opp_4_3 2)))
 (=> $x1793 $x3697)))))
(assert
 (let (($x1793 (= Opp_4_3 2)))
 (let (($x1791 (= Opp_1_3 5)))
 (let (($x3697 (and (= Per_4_3 Per_1_3) $x1791)))
 (=> $x3697 $x1793)))))
(assert
 (let (($x1793 (= Opp_4_3 2)))
 (=> $x1793 (xor Home_4_3 Home_1_3))))
(assert
 (let (($x1806 (= Opp_1_4 5)))
 (let (($x3710 (and (= Per_4_4 Per_1_4) $x1806)))
 (let (($x1808 (= Opp_4_4 2)))
 (=> $x1808 $x3710)))))
(assert
 (let (($x1808 (= Opp_4_4 2)))
 (let (($x1806 (= Opp_1_4 5)))
 (let (($x3710 (and (= Per_4_4 Per_1_4) $x1806)))
 (=> $x3710 $x1808)))))
(assert
 (let (($x1808 (= Opp_4_4 2)))
 (=> $x1808 (xor Home_4_4 Home_1_4))))
(assert
 (let (($x1821 (= Opp_1_5 5)))
 (let (($x3723 (and (= Per_4_5 Per_1_5) $x1821)))
 (let (($x1823 (= Opp_4_5 2)))
 (=> $x1823 $x3723)))))
(assert
 (let (($x1823 (= Opp_4_5 2)))
 (let (($x1821 (= Opp_1_5 5)))
 (let (($x3723 (and (= Per_4_5 Per_1_5) $x1821)))
 (=> $x3723 $x1823)))))
(assert
 (let (($x1823 (= Opp_4_5 2)))
 (=> $x1823 (xor Home_4_5 Home_1_5))))
(assert
 (let (($x1836 (= Opp_1_6 5)))
 (let (($x3736 (and (= Per_4_6 Per_1_6) $x1836)))
 (let (($x1838 (= Opp_4_6 2)))
 (=> $x1838 $x3736)))))
(assert
 (let (($x1838 (= Opp_4_6 2)))
 (let (($x1836 (= Opp_1_6 5)))
 (let (($x3736 (and (= Per_4_6 Per_1_6) $x1836)))
 (=> $x3736 $x1838)))))
(assert
 (let (($x1838 (= Opp_4_6 2)))
 (=> $x1838 (xor Home_4_6 Home_1_6))))
(assert
 (let (($x2453 (= Opp_2_0 5)))
 (let (($x3749 (and (= Per_4_0 Per_2_0) $x2453)))
 (let (($x2455 (= Opp_4_0 3)))
 (=> $x2455 $x3749)))))
(assert
 (let (($x2455 (= Opp_4_0 3)))
 (let (($x2453 (= Opp_2_0 5)))
 (let (($x3749 (and (= Per_4_0 Per_2_0) $x2453)))
 (=> $x3749 $x2455)))))
(assert
 (let (($x2455 (= Opp_4_0 3)))
 (=> $x2455 (xor Home_4_0 Home_2_0))))
(assert
 (let (($x2468 (= Opp_2_1 5)))
 (let (($x3762 (and (= Per_4_1 Per_2_1) $x2468)))
 (let (($x2470 (= Opp_4_1 3)))
 (=> $x2470 $x3762)))))
(assert
 (let (($x2470 (= Opp_4_1 3)))
 (let (($x2468 (= Opp_2_1 5)))
 (let (($x3762 (and (= Per_4_1 Per_2_1) $x2468)))
 (=> $x3762 $x2470)))))
(assert
 (let (($x2470 (= Opp_4_1 3)))
 (=> $x2470 (xor Home_4_1 Home_2_1))))
(assert
 (let (($x2483 (= Opp_2_2 5)))
 (let (($x3775 (and (= Per_4_2 Per_2_2) $x2483)))
 (let (($x2485 (= Opp_4_2 3)))
 (=> $x2485 $x3775)))))
(assert
 (let (($x2485 (= Opp_4_2 3)))
 (let (($x2483 (= Opp_2_2 5)))
 (let (($x3775 (and (= Per_4_2 Per_2_2) $x2483)))
 (=> $x3775 $x2485)))))
(assert
 (let (($x2485 (= Opp_4_2 3)))
 (=> $x2485 (xor Home_4_2 Home_2_2))))
(assert
 (let (($x2498 (= Opp_2_3 5)))
 (let (($x3788 (and (= Per_4_3 Per_2_3) $x2498)))
 (let (($x2500 (= Opp_4_3 3)))
 (=> $x2500 $x3788)))))
(assert
 (let (($x2500 (= Opp_4_3 3)))
 (let (($x2498 (= Opp_2_3 5)))
 (let (($x3788 (and (= Per_4_3 Per_2_3) $x2498)))
 (=> $x3788 $x2500)))))
(assert
 (let (($x2500 (= Opp_4_3 3)))
 (=> $x2500 (xor Home_4_3 Home_2_3))))
(assert
 (let (($x2513 (= Opp_2_4 5)))
 (let (($x3801 (and (= Per_4_4 Per_2_4) $x2513)))
 (let (($x2515 (= Opp_4_4 3)))
 (=> $x2515 $x3801)))))
(assert
 (let (($x2515 (= Opp_4_4 3)))
 (let (($x2513 (= Opp_2_4 5)))
 (let (($x3801 (and (= Per_4_4 Per_2_4) $x2513)))
 (=> $x3801 $x2515)))))
(assert
 (let (($x2515 (= Opp_4_4 3)))
 (=> $x2515 (xor Home_4_4 Home_2_4))))
(assert
 (let (($x2528 (= Opp_2_5 5)))
 (let (($x3814 (and (= Per_4_5 Per_2_5) $x2528)))
 (let (($x2530 (= Opp_4_5 3)))
 (=> $x2530 $x3814)))))
(assert
 (let (($x2530 (= Opp_4_5 3)))
 (let (($x2528 (= Opp_2_5 5)))
 (let (($x3814 (and (= Per_4_5 Per_2_5) $x2528)))
 (=> $x3814 $x2530)))))
(assert
 (let (($x2530 (= Opp_4_5 3)))
 (=> $x2530 (xor Home_4_5 Home_2_5))))
(assert
 (let (($x2543 (= Opp_2_6 5)))
 (let (($x3827 (and (= Per_4_6 Per_2_6) $x2543)))
 (let (($x2545 (= Opp_4_6 3)))
 (=> $x2545 $x3827)))))
(assert
 (let (($x2545 (= Opp_4_6 3)))
 (let (($x2543 (= Opp_2_6 5)))
 (let (($x3827 (and (= Per_4_6 Per_2_6) $x2543)))
 (=> $x3827 $x2545)))))
(assert
 (let (($x2545 (= Opp_4_6 3)))
 (=> $x2545 (xor Home_4_6 Home_2_6))))
(assert
 (let (($x3146 (= Opp_3_0 5)))
 (let (($x3840 (and (= Per_4_0 Per_3_0) $x3146)))
 (let (($x3148 (= Opp_4_0 4)))
 (=> $x3148 $x3840)))))
(assert
 (let (($x3148 (= Opp_4_0 4)))
 (let (($x3146 (= Opp_3_0 5)))
 (let (($x3840 (and (= Per_4_0 Per_3_0) $x3146)))
 (=> $x3840 $x3148)))))
(assert
 (let (($x3148 (= Opp_4_0 4)))
 (=> $x3148 (xor Home_4_0 Home_3_0))))
(assert
 (let (($x3161 (= Opp_3_1 5)))
 (let (($x3853 (and (= Per_4_1 Per_3_1) $x3161)))
 (let (($x3163 (= Opp_4_1 4)))
 (=> $x3163 $x3853)))))
(assert
 (let (($x3163 (= Opp_4_1 4)))
 (let (($x3161 (= Opp_3_1 5)))
 (let (($x3853 (and (= Per_4_1 Per_3_1) $x3161)))
 (=> $x3853 $x3163)))))
(assert
 (let (($x3163 (= Opp_4_1 4)))
 (=> $x3163 (xor Home_4_1 Home_3_1))))
(assert
 (let (($x3176 (= Opp_3_2 5)))
 (let (($x3866 (and (= Per_4_2 Per_3_2) $x3176)))
 (let (($x3178 (= Opp_4_2 4)))
 (=> $x3178 $x3866)))))
(assert
 (let (($x3178 (= Opp_4_2 4)))
 (let (($x3176 (= Opp_3_2 5)))
 (let (($x3866 (and (= Per_4_2 Per_3_2) $x3176)))
 (=> $x3866 $x3178)))))
(assert
 (let (($x3178 (= Opp_4_2 4)))
 (=> $x3178 (xor Home_4_2 Home_3_2))))
(assert
 (let (($x3191 (= Opp_3_3 5)))
 (let (($x3879 (and (= Per_4_3 Per_3_3) $x3191)))
 (let (($x3193 (= Opp_4_3 4)))
 (=> $x3193 $x3879)))))
(assert
 (let (($x3193 (= Opp_4_3 4)))
 (let (($x3191 (= Opp_3_3 5)))
 (let (($x3879 (and (= Per_4_3 Per_3_3) $x3191)))
 (=> $x3879 $x3193)))))
(assert
 (let (($x3193 (= Opp_4_3 4)))
 (=> $x3193 (xor Home_4_3 Home_3_3))))
(assert
 (let (($x3206 (= Opp_3_4 5)))
 (let (($x3892 (and (= Per_4_4 Per_3_4) $x3206)))
 (let (($x3208 (= Opp_4_4 4)))
 (=> $x3208 $x3892)))))
(assert
 (let (($x3208 (= Opp_4_4 4)))
 (let (($x3206 (= Opp_3_4 5)))
 (let (($x3892 (and (= Per_4_4 Per_3_4) $x3206)))
 (=> $x3892 $x3208)))))
(assert
 (let (($x3208 (= Opp_4_4 4)))
 (=> $x3208 (xor Home_4_4 Home_3_4))))
(assert
 (let (($x3221 (= Opp_3_5 5)))
 (let (($x3905 (and (= Per_4_5 Per_3_5) $x3221)))
 (let (($x3223 (= Opp_4_5 4)))
 (=> $x3223 $x3905)))))
(assert
 (let (($x3223 (= Opp_4_5 4)))
 (let (($x3221 (= Opp_3_5 5)))
 (let (($x3905 (and (= Per_4_5 Per_3_5) $x3221)))
 (=> $x3905 $x3223)))))
(assert
 (let (($x3223 (= Opp_4_5 4)))
 (=> $x3223 (xor Home_4_5 Home_3_5))))
(assert
 (let (($x3236 (= Opp_3_6 5)))
 (let (($x3918 (and (= Per_4_6 Per_3_6) $x3236)))
 (let (($x3238 (= Opp_4_6 4)))
 (=> $x3238 $x3918)))))
(assert
 (let (($x3238 (= Opp_4_6 4)))
 (let (($x3236 (= Opp_3_6 5)))
 (let (($x3918 (and (= Per_4_6 Per_3_6) $x3236)))
 (=> $x3918 $x3238)))))
(assert
 (let (($x3238 (= Opp_4_6 4)))
 (=> $x3238 (xor Home_4_6 Home_3_6))))
(assert
 (let (($x3932 (= Opp_5_0 5)))
 (let (($x3933 (and (= Per_4_0 Per_5_0) $x3932)))
 (let (($x3930 (= Opp_4_0 6)))
 (=> $x3930 $x3933)))))
(assert
 (let (($x3930 (= Opp_4_0 6)))
 (let (($x3932 (= Opp_5_0 5)))
 (let (($x3933 (and (= Per_4_0 Per_5_0) $x3932)))
 (=> $x3933 $x3930)))))
(assert
 (let (($x3930 (= Opp_4_0 6)))
 (=> $x3930 (xor Home_4_0 Home_5_0))))
(assert
 (let (($x3947 (= Opp_5_1 5)))
 (let (($x3948 (and (= Per_4_1 Per_5_1) $x3947)))
 (let (($x3945 (= Opp_4_1 6)))
 (=> $x3945 $x3948)))))
(assert
 (let (($x3945 (= Opp_4_1 6)))
 (let (($x3947 (= Opp_5_1 5)))
 (let (($x3948 (and (= Per_4_1 Per_5_1) $x3947)))
 (=> $x3948 $x3945)))))
(assert
 (let (($x3945 (= Opp_4_1 6)))
 (=> $x3945 (xor Home_4_1 Home_5_1))))
(assert
 (let (($x3962 (= Opp_5_2 5)))
 (let (($x3963 (and (= Per_4_2 Per_5_2) $x3962)))
 (let (($x3960 (= Opp_4_2 6)))
 (=> $x3960 $x3963)))))
(assert
 (let (($x3960 (= Opp_4_2 6)))
 (let (($x3962 (= Opp_5_2 5)))
 (let (($x3963 (and (= Per_4_2 Per_5_2) $x3962)))
 (=> $x3963 $x3960)))))
(assert
 (let (($x3960 (= Opp_4_2 6)))
 (=> $x3960 (xor Home_4_2 Home_5_2))))
(assert
 (let (($x3977 (= Opp_5_3 5)))
 (let (($x3978 (and (= Per_4_3 Per_5_3) $x3977)))
 (let (($x3975 (= Opp_4_3 6)))
 (=> $x3975 $x3978)))))
(assert
 (let (($x3975 (= Opp_4_3 6)))
 (let (($x3977 (= Opp_5_3 5)))
 (let (($x3978 (and (= Per_4_3 Per_5_3) $x3977)))
 (=> $x3978 $x3975)))))
(assert
 (let (($x3975 (= Opp_4_3 6)))
 (=> $x3975 (xor Home_4_3 Home_5_3))))
(assert
 (let (($x3992 (= Opp_5_4 5)))
 (let (($x3993 (and (= Per_4_4 Per_5_4) $x3992)))
 (let (($x3990 (= Opp_4_4 6)))
 (=> $x3990 $x3993)))))
(assert
 (let (($x3990 (= Opp_4_4 6)))
 (let (($x3992 (= Opp_5_4 5)))
 (let (($x3993 (and (= Per_4_4 Per_5_4) $x3992)))
 (=> $x3993 $x3990)))))
(assert
 (let (($x3990 (= Opp_4_4 6)))
 (=> $x3990 (xor Home_4_4 Home_5_4))))
(assert
 (let (($x4007 (= Opp_5_5 5)))
 (let (($x4008 (and (= Per_4_5 Per_5_5) $x4007)))
 (let (($x4005 (= Opp_4_5 6)))
 (=> $x4005 $x4008)))))
(assert
 (let (($x4005 (= Opp_4_5 6)))
 (let (($x4007 (= Opp_5_5 5)))
 (let (($x4008 (and (= Per_4_5 Per_5_5) $x4007)))
 (=> $x4008 $x4005)))))
(assert
 (let (($x4005 (= Opp_4_5 6)))
 (=> $x4005 (xor Home_4_5 Home_5_5))))
(assert
 (let (($x4022 (= Opp_5_6 5)))
 (let (($x4023 (and (= Per_4_6 Per_5_6) $x4022)))
 (let (($x4020 (= Opp_4_6 6)))
 (=> $x4020 $x4023)))))
(assert
 (let (($x4020 (= Opp_4_6 6)))
 (let (($x4022 (= Opp_5_6 5)))
 (let (($x4023 (and (= Per_4_6 Per_5_6) $x4022)))
 (=> $x4023 $x4020)))))
(assert
 (let (($x4020 (= Opp_4_6 6)))
 (=> $x4020 (xor Home_4_6 Home_5_6))))
(assert
 (let (($x4037 (= Opp_6_0 5)))
 (let (($x4038 (and (= Per_4_0 Per_6_0) $x4037)))
 (let (($x4035 (= Opp_4_0 7)))
 (=> $x4035 $x4038)))))
(assert
 (let (($x4035 (= Opp_4_0 7)))
 (let (($x4037 (= Opp_6_0 5)))
 (let (($x4038 (and (= Per_4_0 Per_6_0) $x4037)))
 (=> $x4038 $x4035)))))
(assert
 (let (($x4035 (= Opp_4_0 7)))
 (=> $x4035 (xor Home_4_0 Home_6_0))))
(assert
 (let (($x4052 (= Opp_6_1 5)))
 (let (($x4053 (and (= Per_4_1 Per_6_1) $x4052)))
 (let (($x4050 (= Opp_4_1 7)))
 (=> $x4050 $x4053)))))
(assert
 (let (($x4050 (= Opp_4_1 7)))
 (let (($x4052 (= Opp_6_1 5)))
 (let (($x4053 (and (= Per_4_1 Per_6_1) $x4052)))
 (=> $x4053 $x4050)))))
(assert
 (let (($x4050 (= Opp_4_1 7)))
 (=> $x4050 (xor Home_4_1 Home_6_1))))
(assert
 (let (($x4067 (= Opp_6_2 5)))
 (let (($x4068 (and (= Per_4_2 Per_6_2) $x4067)))
 (let (($x4065 (= Opp_4_2 7)))
 (=> $x4065 $x4068)))))
(assert
 (let (($x4065 (= Opp_4_2 7)))
 (let (($x4067 (= Opp_6_2 5)))
 (let (($x4068 (and (= Per_4_2 Per_6_2) $x4067)))
 (=> $x4068 $x4065)))))
(assert
 (let (($x4065 (= Opp_4_2 7)))
 (=> $x4065 (xor Home_4_2 Home_6_2))))
(assert
 (let (($x4082 (= Opp_6_3 5)))
 (let (($x4083 (and (= Per_4_3 Per_6_3) $x4082)))
 (let (($x4080 (= Opp_4_3 7)))
 (=> $x4080 $x4083)))))
(assert
 (let (($x4080 (= Opp_4_3 7)))
 (let (($x4082 (= Opp_6_3 5)))
 (let (($x4083 (and (= Per_4_3 Per_6_3) $x4082)))
 (=> $x4083 $x4080)))))
(assert
 (let (($x4080 (= Opp_4_3 7)))
 (=> $x4080 (xor Home_4_3 Home_6_3))))
(assert
 (let (($x4097 (= Opp_6_4 5)))
 (let (($x4098 (and (= Per_4_4 Per_6_4) $x4097)))
 (let (($x4095 (= Opp_4_4 7)))
 (=> $x4095 $x4098)))))
(assert
 (let (($x4095 (= Opp_4_4 7)))
 (let (($x4097 (= Opp_6_4 5)))
 (let (($x4098 (and (= Per_4_4 Per_6_4) $x4097)))
 (=> $x4098 $x4095)))))
(assert
 (let (($x4095 (= Opp_4_4 7)))
 (=> $x4095 (xor Home_4_4 Home_6_4))))
(assert
 (let (($x4112 (= Opp_6_5 5)))
 (let (($x4113 (and (= Per_4_5 Per_6_5) $x4112)))
 (let (($x4110 (= Opp_4_5 7)))
 (=> $x4110 $x4113)))))
(assert
 (let (($x4110 (= Opp_4_5 7)))
 (let (($x4112 (= Opp_6_5 5)))
 (let (($x4113 (and (= Per_4_5 Per_6_5) $x4112)))
 (=> $x4113 $x4110)))))
(assert
 (let (($x4110 (= Opp_4_5 7)))
 (=> $x4110 (xor Home_4_5 Home_6_5))))
(assert
 (let (($x4127 (= Opp_6_6 5)))
 (let (($x4128 (and (= Per_4_6 Per_6_6) $x4127)))
 (let (($x4125 (= Opp_4_6 7)))
 (=> $x4125 $x4128)))))
(assert
 (let (($x4125 (= Opp_4_6 7)))
 (let (($x4127 (= Opp_6_6 5)))
 (let (($x4128 (and (= Per_4_6 Per_6_6) $x4127)))
 (=> $x4128 $x4125)))))
(assert
 (let (($x4125 (= Opp_4_6 7)))
 (=> $x4125 (xor Home_4_6 Home_6_6))))
(assert
 (let (($x4142 (= Opp_7_0 5)))
 (let (($x4143 (and (= Per_4_0 Per_7_0) $x4142)))
 (let (($x4140 (= Opp_4_0 8)))
 (=> $x4140 $x4143)))))
(assert
 (let (($x4140 (= Opp_4_0 8)))
 (let (($x4142 (= Opp_7_0 5)))
 (let (($x4143 (and (= Per_4_0 Per_7_0) $x4142)))
 (=> $x4143 $x4140)))))
(assert
 (let (($x4140 (= Opp_4_0 8)))
 (=> $x4140 (xor Home_4_0 Home_7_0))))
(assert
 (let (($x4157 (= Opp_7_1 5)))
 (let (($x4158 (and (= Per_4_1 Per_7_1) $x4157)))
 (let (($x4155 (= Opp_4_1 8)))
 (=> $x4155 $x4158)))))
(assert
 (let (($x4155 (= Opp_4_1 8)))
 (let (($x4157 (= Opp_7_1 5)))
 (let (($x4158 (and (= Per_4_1 Per_7_1) $x4157)))
 (=> $x4158 $x4155)))))
(assert
 (let (($x4155 (= Opp_4_1 8)))
 (=> $x4155 (xor Home_4_1 Home_7_1))))
(assert
 (let (($x4172 (= Opp_7_2 5)))
 (let (($x4173 (and (= Per_4_2 Per_7_2) $x4172)))
 (let (($x4170 (= Opp_4_2 8)))
 (=> $x4170 $x4173)))))
(assert
 (let (($x4170 (= Opp_4_2 8)))
 (let (($x4172 (= Opp_7_2 5)))
 (let (($x4173 (and (= Per_4_2 Per_7_2) $x4172)))
 (=> $x4173 $x4170)))))
(assert
 (let (($x4170 (= Opp_4_2 8)))
 (=> $x4170 (xor Home_4_2 Home_7_2))))
(assert
 (let (($x4187 (= Opp_7_3 5)))
 (let (($x4188 (and (= Per_4_3 Per_7_3) $x4187)))
 (let (($x4185 (= Opp_4_3 8)))
 (=> $x4185 $x4188)))))
(assert
 (let (($x4185 (= Opp_4_3 8)))
 (let (($x4187 (= Opp_7_3 5)))
 (let (($x4188 (and (= Per_4_3 Per_7_3) $x4187)))
 (=> $x4188 $x4185)))))
(assert
 (let (($x4185 (= Opp_4_3 8)))
 (=> $x4185 (xor Home_4_3 Home_7_3))))
(assert
 (let (($x4202 (= Opp_7_4 5)))
 (let (($x4203 (and (= Per_4_4 Per_7_4) $x4202)))
 (let (($x4200 (= Opp_4_4 8)))
 (=> $x4200 $x4203)))))
(assert
 (let (($x4200 (= Opp_4_4 8)))
 (let (($x4202 (= Opp_7_4 5)))
 (let (($x4203 (and (= Per_4_4 Per_7_4) $x4202)))
 (=> $x4203 $x4200)))))
(assert
 (let (($x4200 (= Opp_4_4 8)))
 (=> $x4200 (xor Home_4_4 Home_7_4))))
(assert
 (let (($x4217 (= Opp_7_5 5)))
 (let (($x4218 (and (= Per_4_5 Per_7_5) $x4217)))
 (let (($x4215 (= Opp_4_5 8)))
 (=> $x4215 $x4218)))))
(assert
 (let (($x4215 (= Opp_4_5 8)))
 (let (($x4217 (= Opp_7_5 5)))
 (let (($x4218 (and (= Per_4_5 Per_7_5) $x4217)))
 (=> $x4218 $x4215)))))
(assert
 (let (($x4215 (= Opp_4_5 8)))
 (=> $x4215 (xor Home_4_5 Home_7_5))))
(assert
 (let (($x4232 (= Opp_7_6 5)))
 (let (($x4233 (and (= Per_4_6 Per_7_6) $x4232)))
 (let (($x4230 (= Opp_4_6 8)))
 (=> $x4230 $x4233)))))
(assert
 (let (($x4230 (= Opp_4_6 8)))
 (let (($x4232 (= Opp_7_6 5)))
 (let (($x4233 (and (= Per_4_6 Per_7_6) $x4232)))
 (=> $x4233 $x4230)))))
(assert
 (let (($x4230 (= Opp_4_6 8)))
 (=> $x4230 (xor Home_4_6 Home_7_6))))
(assert
 (let (($x1130 (= Opp_0_0 6)))
 (let (($x4246 (and (= Per_5_0 Per_0_0) $x1130)))
 (let (($x1132 (= Opp_5_0 1)))
 (=> $x1132 $x4246)))))
(assert
 (let (($x1132 (= Opp_5_0 1)))
 (let (($x1130 (= Opp_0_0 6)))
 (let (($x4246 (and (= Per_5_0 Per_0_0) $x1130)))
 (=> $x4246 $x1132)))))
(assert
 (let (($x1132 (= Opp_5_0 1)))
 (=> $x1132 (xor Home_5_0 Home_0_0))))
(assert
 (let (($x1145 (= Opp_0_1 6)))
 (let (($x4259 (and (= Per_5_1 Per_0_1) $x1145)))
 (let (($x1147 (= Opp_5_1 1)))
 (=> $x1147 $x4259)))))
(assert
 (let (($x1147 (= Opp_5_1 1)))
 (let (($x1145 (= Opp_0_1 6)))
 (let (($x4259 (and (= Per_5_1 Per_0_1) $x1145)))
 (=> $x4259 $x1147)))))
(assert
 (let (($x1147 (= Opp_5_1 1)))
 (=> $x1147 (xor Home_5_1 Home_0_1))))
(assert
 (let (($x1160 (= Opp_0_2 6)))
 (let (($x4272 (and (= Per_5_2 Per_0_2) $x1160)))
 (let (($x1162 (= Opp_5_2 1)))
 (=> $x1162 $x4272)))))
(assert
 (let (($x1162 (= Opp_5_2 1)))
 (let (($x1160 (= Opp_0_2 6)))
 (let (($x4272 (and (= Per_5_2 Per_0_2) $x1160)))
 (=> $x4272 $x1162)))))
(assert
 (let (($x1162 (= Opp_5_2 1)))
 (=> $x1162 (xor Home_5_2 Home_0_2))))
(assert
 (let (($x1175 (= Opp_0_3 6)))
 (let (($x4285 (and (= Per_5_3 Per_0_3) $x1175)))
 (let (($x1177 (= Opp_5_3 1)))
 (=> $x1177 $x4285)))))
(assert
 (let (($x1177 (= Opp_5_3 1)))
 (let (($x1175 (= Opp_0_3 6)))
 (let (($x4285 (and (= Per_5_3 Per_0_3) $x1175)))
 (=> $x4285 $x1177)))))
(assert
 (let (($x1177 (= Opp_5_3 1)))
 (=> $x1177 (xor Home_5_3 Home_0_3))))
(assert
 (let (($x1190 (= Opp_0_4 6)))
 (let (($x4298 (and (= Per_5_4 Per_0_4) $x1190)))
 (let (($x1192 (= Opp_5_4 1)))
 (=> $x1192 $x4298)))))
(assert
 (let (($x1192 (= Opp_5_4 1)))
 (let (($x1190 (= Opp_0_4 6)))
 (let (($x4298 (and (= Per_5_4 Per_0_4) $x1190)))
 (=> $x4298 $x1192)))))
(assert
 (let (($x1192 (= Opp_5_4 1)))
 (=> $x1192 (xor Home_5_4 Home_0_4))))
(assert
 (let (($x1205 (= Opp_0_5 6)))
 (let (($x4311 (and (= Per_5_5 Per_0_5) $x1205)))
 (let (($x1207 (= Opp_5_5 1)))
 (=> $x1207 $x4311)))))
(assert
 (let (($x1207 (= Opp_5_5 1)))
 (let (($x1205 (= Opp_0_5 6)))
 (let (($x4311 (and (= Per_5_5 Per_0_5) $x1205)))
 (=> $x4311 $x1207)))))
(assert
 (let (($x1207 (= Opp_5_5 1)))
 (=> $x1207 (xor Home_5_5 Home_0_5))))
(assert
 (let (($x1220 (= Opp_0_6 6)))
 (let (($x4324 (and (= Per_5_6 Per_0_6) $x1220)))
 (let (($x1222 (= Opp_5_6 1)))
 (=> $x1222 $x4324)))))
(assert
 (let (($x1222 (= Opp_5_6 1)))
 (let (($x1220 (= Opp_0_6 6)))
 (let (($x4324 (and (= Per_5_6 Per_0_6) $x1220)))
 (=> $x4324 $x1222)))))
(assert
 (let (($x1222 (= Opp_5_6 1)))
 (=> $x1222 (xor Home_5_6 Home_0_6))))
(assert
 (let (($x1851 (= Opp_1_0 6)))
 (let (($x4337 (and (= Per_5_0 Per_1_0) $x1851)))
 (let (($x1853 (= Opp_5_0 2)))
 (=> $x1853 $x4337)))))
(assert
 (let (($x1853 (= Opp_5_0 2)))
 (let (($x1851 (= Opp_1_0 6)))
 (let (($x4337 (and (= Per_5_0 Per_1_0) $x1851)))
 (=> $x4337 $x1853)))))
(assert
 (let (($x1853 (= Opp_5_0 2)))
 (=> $x1853 (xor Home_5_0 Home_1_0))))
(assert
 (let (($x1866 (= Opp_1_1 6)))
 (let (($x4350 (and (= Per_5_1 Per_1_1) $x1866)))
 (let (($x1868 (= Opp_5_1 2)))
 (=> $x1868 $x4350)))))
(assert
 (let (($x1868 (= Opp_5_1 2)))
 (let (($x1866 (= Opp_1_1 6)))
 (let (($x4350 (and (= Per_5_1 Per_1_1) $x1866)))
 (=> $x4350 $x1868)))))
(assert
 (let (($x1868 (= Opp_5_1 2)))
 (=> $x1868 (xor Home_5_1 Home_1_1))))
(assert
 (let (($x1881 (= Opp_1_2 6)))
 (let (($x4363 (and (= Per_5_2 Per_1_2) $x1881)))
 (let (($x1883 (= Opp_5_2 2)))
 (=> $x1883 $x4363)))))
(assert
 (let (($x1883 (= Opp_5_2 2)))
 (let (($x1881 (= Opp_1_2 6)))
 (let (($x4363 (and (= Per_5_2 Per_1_2) $x1881)))
 (=> $x4363 $x1883)))))
(assert
 (let (($x1883 (= Opp_5_2 2)))
 (=> $x1883 (xor Home_5_2 Home_1_2))))
(assert
 (let (($x1896 (= Opp_1_3 6)))
 (let (($x4376 (and (= Per_5_3 Per_1_3) $x1896)))
 (let (($x1898 (= Opp_5_3 2)))
 (=> $x1898 $x4376)))))
(assert
 (let (($x1898 (= Opp_5_3 2)))
 (let (($x1896 (= Opp_1_3 6)))
 (let (($x4376 (and (= Per_5_3 Per_1_3) $x1896)))
 (=> $x4376 $x1898)))))
(assert
 (let (($x1898 (= Opp_5_3 2)))
 (=> $x1898 (xor Home_5_3 Home_1_3))))
(assert
 (let (($x1911 (= Opp_1_4 6)))
 (let (($x4389 (and (= Per_5_4 Per_1_4) $x1911)))
 (let (($x1913 (= Opp_5_4 2)))
 (=> $x1913 $x4389)))))
(assert
 (let (($x1913 (= Opp_5_4 2)))
 (let (($x1911 (= Opp_1_4 6)))
 (let (($x4389 (and (= Per_5_4 Per_1_4) $x1911)))
 (=> $x4389 $x1913)))))
(assert
 (let (($x1913 (= Opp_5_4 2)))
 (=> $x1913 (xor Home_5_4 Home_1_4))))
(assert
 (let (($x1926 (= Opp_1_5 6)))
 (let (($x4402 (and (= Per_5_5 Per_1_5) $x1926)))
 (let (($x1928 (= Opp_5_5 2)))
 (=> $x1928 $x4402)))))
(assert
 (let (($x1928 (= Opp_5_5 2)))
 (let (($x1926 (= Opp_1_5 6)))
 (let (($x4402 (and (= Per_5_5 Per_1_5) $x1926)))
 (=> $x4402 $x1928)))))
(assert
 (let (($x1928 (= Opp_5_5 2)))
 (=> $x1928 (xor Home_5_5 Home_1_5))))
(assert
 (let (($x1941 (= Opp_1_6 6)))
 (let (($x4415 (and (= Per_5_6 Per_1_6) $x1941)))
 (let (($x1943 (= Opp_5_6 2)))
 (=> $x1943 $x4415)))))
(assert
 (let (($x1943 (= Opp_5_6 2)))
 (let (($x1941 (= Opp_1_6 6)))
 (let (($x4415 (and (= Per_5_6 Per_1_6) $x1941)))
 (=> $x4415 $x1943)))))
(assert
 (let (($x1943 (= Opp_5_6 2)))
 (=> $x1943 (xor Home_5_6 Home_1_6))))
(assert
 (let (($x2558 (= Opp_2_0 6)))
 (let (($x4428 (and (= Per_5_0 Per_2_0) $x2558)))
 (let (($x2560 (= Opp_5_0 3)))
 (=> $x2560 $x4428)))))
(assert
 (let (($x2560 (= Opp_5_0 3)))
 (let (($x2558 (= Opp_2_0 6)))
 (let (($x4428 (and (= Per_5_0 Per_2_0) $x2558)))
 (=> $x4428 $x2560)))))
(assert
 (let (($x2560 (= Opp_5_0 3)))
 (=> $x2560 (xor Home_5_0 Home_2_0))))
(assert
 (let (($x2573 (= Opp_2_1 6)))
 (let (($x4441 (and (= Per_5_1 Per_2_1) $x2573)))
 (let (($x2575 (= Opp_5_1 3)))
 (=> $x2575 $x4441)))))
(assert
 (let (($x2575 (= Opp_5_1 3)))
 (let (($x2573 (= Opp_2_1 6)))
 (let (($x4441 (and (= Per_5_1 Per_2_1) $x2573)))
 (=> $x4441 $x2575)))))
(assert
 (let (($x2575 (= Opp_5_1 3)))
 (=> $x2575 (xor Home_5_1 Home_2_1))))
(assert
 (let (($x2588 (= Opp_2_2 6)))
 (let (($x4454 (and (= Per_5_2 Per_2_2) $x2588)))
 (let (($x2590 (= Opp_5_2 3)))
 (=> $x2590 $x4454)))))
(assert
 (let (($x2590 (= Opp_5_2 3)))
 (let (($x2588 (= Opp_2_2 6)))
 (let (($x4454 (and (= Per_5_2 Per_2_2) $x2588)))
 (=> $x4454 $x2590)))))
(assert
 (let (($x2590 (= Opp_5_2 3)))
 (=> $x2590 (xor Home_5_2 Home_2_2))))
(assert
 (let (($x2603 (= Opp_2_3 6)))
 (let (($x4467 (and (= Per_5_3 Per_2_3) $x2603)))
 (let (($x2605 (= Opp_5_3 3)))
 (=> $x2605 $x4467)))))
(assert
 (let (($x2605 (= Opp_5_3 3)))
 (let (($x2603 (= Opp_2_3 6)))
 (let (($x4467 (and (= Per_5_3 Per_2_3) $x2603)))
 (=> $x4467 $x2605)))))
(assert
 (let (($x2605 (= Opp_5_3 3)))
 (=> $x2605 (xor Home_5_3 Home_2_3))))
(assert
 (let (($x2618 (= Opp_2_4 6)))
 (let (($x4480 (and (= Per_5_4 Per_2_4) $x2618)))
 (let (($x2620 (= Opp_5_4 3)))
 (=> $x2620 $x4480)))))
(assert
 (let (($x2620 (= Opp_5_4 3)))
 (let (($x2618 (= Opp_2_4 6)))
 (let (($x4480 (and (= Per_5_4 Per_2_4) $x2618)))
 (=> $x4480 $x2620)))))
(assert
 (let (($x2620 (= Opp_5_4 3)))
 (=> $x2620 (xor Home_5_4 Home_2_4))))
(assert
 (let (($x2633 (= Opp_2_5 6)))
 (let (($x4493 (and (= Per_5_5 Per_2_5) $x2633)))
 (let (($x2635 (= Opp_5_5 3)))
 (=> $x2635 $x4493)))))
(assert
 (let (($x2635 (= Opp_5_5 3)))
 (let (($x2633 (= Opp_2_5 6)))
 (let (($x4493 (and (= Per_5_5 Per_2_5) $x2633)))
 (=> $x4493 $x2635)))))
(assert
 (let (($x2635 (= Opp_5_5 3)))
 (=> $x2635 (xor Home_5_5 Home_2_5))))
(assert
 (let (($x2648 (= Opp_2_6 6)))
 (let (($x4506 (and (= Per_5_6 Per_2_6) $x2648)))
 (let (($x2650 (= Opp_5_6 3)))
 (=> $x2650 $x4506)))))
(assert
 (let (($x2650 (= Opp_5_6 3)))
 (let (($x2648 (= Opp_2_6 6)))
 (let (($x4506 (and (= Per_5_6 Per_2_6) $x2648)))
 (=> $x4506 $x2650)))))
(assert
 (let (($x2650 (= Opp_5_6 3)))
 (=> $x2650 (xor Home_5_6 Home_2_6))))
(assert
 (let (($x3251 (= Opp_3_0 6)))
 (let (($x4519 (and (= Per_5_0 Per_3_0) $x3251)))
 (let (($x3253 (= Opp_5_0 4)))
 (=> $x3253 $x4519)))))
(assert
 (let (($x3253 (= Opp_5_0 4)))
 (let (($x3251 (= Opp_3_0 6)))
 (let (($x4519 (and (= Per_5_0 Per_3_0) $x3251)))
 (=> $x4519 $x3253)))))
(assert
 (let (($x3253 (= Opp_5_0 4)))
 (=> $x3253 (xor Home_5_0 Home_3_0))))
(assert
 (let (($x3266 (= Opp_3_1 6)))
 (let (($x4532 (and (= Per_5_1 Per_3_1) $x3266)))
 (let (($x3268 (= Opp_5_1 4)))
 (=> $x3268 $x4532)))))
(assert
 (let (($x3268 (= Opp_5_1 4)))
 (let (($x3266 (= Opp_3_1 6)))
 (let (($x4532 (and (= Per_5_1 Per_3_1) $x3266)))
 (=> $x4532 $x3268)))))
(assert
 (let (($x3268 (= Opp_5_1 4)))
 (=> $x3268 (xor Home_5_1 Home_3_1))))
(assert
 (let (($x3281 (= Opp_3_2 6)))
 (let (($x4545 (and (= Per_5_2 Per_3_2) $x3281)))
 (let (($x3283 (= Opp_5_2 4)))
 (=> $x3283 $x4545)))))
(assert
 (let (($x3283 (= Opp_5_2 4)))
 (let (($x3281 (= Opp_3_2 6)))
 (let (($x4545 (and (= Per_5_2 Per_3_2) $x3281)))
 (=> $x4545 $x3283)))))
(assert
 (let (($x3283 (= Opp_5_2 4)))
 (=> $x3283 (xor Home_5_2 Home_3_2))))
(assert
 (let (($x3296 (= Opp_3_3 6)))
 (let (($x4558 (and (= Per_5_3 Per_3_3) $x3296)))
 (let (($x3298 (= Opp_5_3 4)))
 (=> $x3298 $x4558)))))
(assert
 (let (($x3298 (= Opp_5_3 4)))
 (let (($x3296 (= Opp_3_3 6)))
 (let (($x4558 (and (= Per_5_3 Per_3_3) $x3296)))
 (=> $x4558 $x3298)))))
(assert
 (let (($x3298 (= Opp_5_3 4)))
 (=> $x3298 (xor Home_5_3 Home_3_3))))
(assert
 (let (($x3311 (= Opp_3_4 6)))
 (let (($x4571 (and (= Per_5_4 Per_3_4) $x3311)))
 (let (($x3313 (= Opp_5_4 4)))
 (=> $x3313 $x4571)))))
(assert
 (let (($x3313 (= Opp_5_4 4)))
 (let (($x3311 (= Opp_3_4 6)))
 (let (($x4571 (and (= Per_5_4 Per_3_4) $x3311)))
 (=> $x4571 $x3313)))))
(assert
 (let (($x3313 (= Opp_5_4 4)))
 (=> $x3313 (xor Home_5_4 Home_3_4))))
(assert
 (let (($x3326 (= Opp_3_5 6)))
 (let (($x4584 (and (= Per_5_5 Per_3_5) $x3326)))
 (let (($x3328 (= Opp_5_5 4)))
 (=> $x3328 $x4584)))))
(assert
 (let (($x3328 (= Opp_5_5 4)))
 (let (($x3326 (= Opp_3_5 6)))
 (let (($x4584 (and (= Per_5_5 Per_3_5) $x3326)))
 (=> $x4584 $x3328)))))
(assert
 (let (($x3328 (= Opp_5_5 4)))
 (=> $x3328 (xor Home_5_5 Home_3_5))))
(assert
 (let (($x3341 (= Opp_3_6 6)))
 (let (($x4597 (and (= Per_5_6 Per_3_6) $x3341)))
 (let (($x3343 (= Opp_5_6 4)))
 (=> $x3343 $x4597)))))
(assert
 (let (($x3343 (= Opp_5_6 4)))
 (let (($x3341 (= Opp_3_6 6)))
 (let (($x4597 (and (= Per_5_6 Per_3_6) $x3341)))
 (=> $x4597 $x3343)))))
(assert
 (let (($x3343 (= Opp_5_6 4)))
 (=> $x3343 (xor Home_5_6 Home_3_6))))
(assert
 (let (($x3930 (= Opp_4_0 6)))
 (let (($x4610 (and (= Per_5_0 Per_4_0) $x3930)))
 (let (($x3932 (= Opp_5_0 5)))
 (=> $x3932 $x4610)))))
(assert
 (let (($x3932 (= Opp_5_0 5)))
 (let (($x3930 (= Opp_4_0 6)))
 (let (($x4610 (and (= Per_5_0 Per_4_0) $x3930)))
 (=> $x4610 $x3932)))))
(assert
 (let (($x3932 (= Opp_5_0 5)))
 (=> $x3932 (xor Home_5_0 Home_4_0))))
(assert
 (let (($x3945 (= Opp_4_1 6)))
 (let (($x4623 (and (= Per_5_1 Per_4_1) $x3945)))
 (let (($x3947 (= Opp_5_1 5)))
 (=> $x3947 $x4623)))))
(assert
 (let (($x3947 (= Opp_5_1 5)))
 (let (($x3945 (= Opp_4_1 6)))
 (let (($x4623 (and (= Per_5_1 Per_4_1) $x3945)))
 (=> $x4623 $x3947)))))
(assert
 (let (($x3947 (= Opp_5_1 5)))
 (=> $x3947 (xor Home_5_1 Home_4_1))))
(assert
 (let (($x3960 (= Opp_4_2 6)))
 (let (($x4636 (and (= Per_5_2 Per_4_2) $x3960)))
 (let (($x3962 (= Opp_5_2 5)))
 (=> $x3962 $x4636)))))
(assert
 (let (($x3962 (= Opp_5_2 5)))
 (let (($x3960 (= Opp_4_2 6)))
 (let (($x4636 (and (= Per_5_2 Per_4_2) $x3960)))
 (=> $x4636 $x3962)))))
(assert
 (let (($x3962 (= Opp_5_2 5)))
 (=> $x3962 (xor Home_5_2 Home_4_2))))
(assert
 (let (($x3975 (= Opp_4_3 6)))
 (let (($x4649 (and (= Per_5_3 Per_4_3) $x3975)))
 (let (($x3977 (= Opp_5_3 5)))
 (=> $x3977 $x4649)))))
(assert
 (let (($x3977 (= Opp_5_3 5)))
 (let (($x3975 (= Opp_4_3 6)))
 (let (($x4649 (and (= Per_5_3 Per_4_3) $x3975)))
 (=> $x4649 $x3977)))))
(assert
 (let (($x3977 (= Opp_5_3 5)))
 (=> $x3977 (xor Home_5_3 Home_4_3))))
(assert
 (let (($x3990 (= Opp_4_4 6)))
 (let (($x4662 (and (= Per_5_4 Per_4_4) $x3990)))
 (let (($x3992 (= Opp_5_4 5)))
 (=> $x3992 $x4662)))))
(assert
 (let (($x3992 (= Opp_5_4 5)))
 (let (($x3990 (= Opp_4_4 6)))
 (let (($x4662 (and (= Per_5_4 Per_4_4) $x3990)))
 (=> $x4662 $x3992)))))
(assert
 (let (($x3992 (= Opp_5_4 5)))
 (=> $x3992 (xor Home_5_4 Home_4_4))))
(assert
 (let (($x4005 (= Opp_4_5 6)))
 (let (($x4675 (and (= Per_5_5 Per_4_5) $x4005)))
 (let (($x4007 (= Opp_5_5 5)))
 (=> $x4007 $x4675)))))
(assert
 (let (($x4007 (= Opp_5_5 5)))
 (let (($x4005 (= Opp_4_5 6)))
 (let (($x4675 (and (= Per_5_5 Per_4_5) $x4005)))
 (=> $x4675 $x4007)))))
(assert
 (let (($x4007 (= Opp_5_5 5)))
 (=> $x4007 (xor Home_5_5 Home_4_5))))
(assert
 (let (($x4020 (= Opp_4_6 6)))
 (let (($x4688 (and (= Per_5_6 Per_4_6) $x4020)))
 (let (($x4022 (= Opp_5_6 5)))
 (=> $x4022 $x4688)))))
(assert
 (let (($x4022 (= Opp_5_6 5)))
 (let (($x4020 (= Opp_4_6 6)))
 (let (($x4688 (and (= Per_5_6 Per_4_6) $x4020)))
 (=> $x4688 $x4022)))))
(assert
 (let (($x4022 (= Opp_5_6 5)))
 (=> $x4022 (xor Home_5_6 Home_4_6))))
(assert
 (let (($x4702 (= Opp_6_0 6)))
 (let (($x4703 (and (= Per_5_0 Per_6_0) $x4702)))
 (let (($x4700 (= Opp_5_0 7)))
 (=> $x4700 $x4703)))))
(assert
 (let (($x4700 (= Opp_5_0 7)))
 (let (($x4702 (= Opp_6_0 6)))
 (let (($x4703 (and (= Per_5_0 Per_6_0) $x4702)))
 (=> $x4703 $x4700)))))
(assert
 (let (($x4700 (= Opp_5_0 7)))
 (=> $x4700 (xor Home_5_0 Home_6_0))))
(assert
 (let (($x4717 (= Opp_6_1 6)))
 (let (($x4718 (and (= Per_5_1 Per_6_1) $x4717)))
 (let (($x4715 (= Opp_5_1 7)))
 (=> $x4715 $x4718)))))
(assert
 (let (($x4715 (= Opp_5_1 7)))
 (let (($x4717 (= Opp_6_1 6)))
 (let (($x4718 (and (= Per_5_1 Per_6_1) $x4717)))
 (=> $x4718 $x4715)))))
(assert
 (let (($x4715 (= Opp_5_1 7)))
 (=> $x4715 (xor Home_5_1 Home_6_1))))
(assert
 (let (($x4732 (= Opp_6_2 6)))
 (let (($x4733 (and (= Per_5_2 Per_6_2) $x4732)))
 (let (($x4730 (= Opp_5_2 7)))
 (=> $x4730 $x4733)))))
(assert
 (let (($x4730 (= Opp_5_2 7)))
 (let (($x4732 (= Opp_6_2 6)))
 (let (($x4733 (and (= Per_5_2 Per_6_2) $x4732)))
 (=> $x4733 $x4730)))))
(assert
 (let (($x4730 (= Opp_5_2 7)))
 (=> $x4730 (xor Home_5_2 Home_6_2))))
(assert
 (let (($x4747 (= Opp_6_3 6)))
 (let (($x4748 (and (= Per_5_3 Per_6_3) $x4747)))
 (let (($x4745 (= Opp_5_3 7)))
 (=> $x4745 $x4748)))))
(assert
 (let (($x4745 (= Opp_5_3 7)))
 (let (($x4747 (= Opp_6_3 6)))
 (let (($x4748 (and (= Per_5_3 Per_6_3) $x4747)))
 (=> $x4748 $x4745)))))
(assert
 (let (($x4745 (= Opp_5_3 7)))
 (=> $x4745 (xor Home_5_3 Home_6_3))))
(assert
 (let (($x4762 (= Opp_6_4 6)))
 (let (($x4763 (and (= Per_5_4 Per_6_4) $x4762)))
 (let (($x4760 (= Opp_5_4 7)))
 (=> $x4760 $x4763)))))
(assert
 (let (($x4760 (= Opp_5_4 7)))
 (let (($x4762 (= Opp_6_4 6)))
 (let (($x4763 (and (= Per_5_4 Per_6_4) $x4762)))
 (=> $x4763 $x4760)))))
(assert
 (let (($x4760 (= Opp_5_4 7)))
 (=> $x4760 (xor Home_5_4 Home_6_4))))
(assert
 (let (($x4777 (= Opp_6_5 6)))
 (let (($x4778 (and (= Per_5_5 Per_6_5) $x4777)))
 (let (($x4775 (= Opp_5_5 7)))
 (=> $x4775 $x4778)))))
(assert
 (let (($x4775 (= Opp_5_5 7)))
 (let (($x4777 (= Opp_6_5 6)))
 (let (($x4778 (and (= Per_5_5 Per_6_5) $x4777)))
 (=> $x4778 $x4775)))))
(assert
 (let (($x4775 (= Opp_5_5 7)))
 (=> $x4775 (xor Home_5_5 Home_6_5))))
(assert
 (let (($x4792 (= Opp_6_6 6)))
 (let (($x4793 (and (= Per_5_6 Per_6_6) $x4792)))
 (let (($x4790 (= Opp_5_6 7)))
 (=> $x4790 $x4793)))))
(assert
 (let (($x4790 (= Opp_5_6 7)))
 (let (($x4792 (= Opp_6_6 6)))
 (let (($x4793 (and (= Per_5_6 Per_6_6) $x4792)))
 (=> $x4793 $x4790)))))
(assert
 (let (($x4790 (= Opp_5_6 7)))
 (=> $x4790 (xor Home_5_6 Home_6_6))))
(assert
 (let (($x4807 (= Opp_7_0 6)))
 (let (($x4808 (and (= Per_5_0 Per_7_0) $x4807)))
 (let (($x4805 (= Opp_5_0 8)))
 (=> $x4805 $x4808)))))
(assert
 (let (($x4805 (= Opp_5_0 8)))
 (let (($x4807 (= Opp_7_0 6)))
 (let (($x4808 (and (= Per_5_0 Per_7_0) $x4807)))
 (=> $x4808 $x4805)))))
(assert
 (let (($x4805 (= Opp_5_0 8)))
 (=> $x4805 (xor Home_5_0 Home_7_0))))
(assert
 (let (($x4822 (= Opp_7_1 6)))
 (let (($x4823 (and (= Per_5_1 Per_7_1) $x4822)))
 (let (($x4820 (= Opp_5_1 8)))
 (=> $x4820 $x4823)))))
(assert
 (let (($x4820 (= Opp_5_1 8)))
 (let (($x4822 (= Opp_7_1 6)))
 (let (($x4823 (and (= Per_5_1 Per_7_1) $x4822)))
 (=> $x4823 $x4820)))))
(assert
 (let (($x4820 (= Opp_5_1 8)))
 (=> $x4820 (xor Home_5_1 Home_7_1))))
(assert
 (let (($x4837 (= Opp_7_2 6)))
 (let (($x4838 (and (= Per_5_2 Per_7_2) $x4837)))
 (let (($x4835 (= Opp_5_2 8)))
 (=> $x4835 $x4838)))))
(assert
 (let (($x4835 (= Opp_5_2 8)))
 (let (($x4837 (= Opp_7_2 6)))
 (let (($x4838 (and (= Per_5_2 Per_7_2) $x4837)))
 (=> $x4838 $x4835)))))
(assert
 (let (($x4835 (= Opp_5_2 8)))
 (=> $x4835 (xor Home_5_2 Home_7_2))))
(assert
 (let (($x4852 (= Opp_7_3 6)))
 (let (($x4853 (and (= Per_5_3 Per_7_3) $x4852)))
 (let (($x4850 (= Opp_5_3 8)))
 (=> $x4850 $x4853)))))
(assert
 (let (($x4850 (= Opp_5_3 8)))
 (let (($x4852 (= Opp_7_3 6)))
 (let (($x4853 (and (= Per_5_3 Per_7_3) $x4852)))
 (=> $x4853 $x4850)))))
(assert
 (let (($x4850 (= Opp_5_3 8)))
 (=> $x4850 (xor Home_5_3 Home_7_3))))
(assert
 (let (($x4867 (= Opp_7_4 6)))
 (let (($x4868 (and (= Per_5_4 Per_7_4) $x4867)))
 (let (($x4865 (= Opp_5_4 8)))
 (=> $x4865 $x4868)))))
(assert
 (let (($x4865 (= Opp_5_4 8)))
 (let (($x4867 (= Opp_7_4 6)))
 (let (($x4868 (and (= Per_5_4 Per_7_4) $x4867)))
 (=> $x4868 $x4865)))))
(assert
 (let (($x4865 (= Opp_5_4 8)))
 (=> $x4865 (xor Home_5_4 Home_7_4))))
(assert
 (let (($x4882 (= Opp_7_5 6)))
 (let (($x4883 (and (= Per_5_5 Per_7_5) $x4882)))
 (let (($x4880 (= Opp_5_5 8)))
 (=> $x4880 $x4883)))))
(assert
 (let (($x4880 (= Opp_5_5 8)))
 (let (($x4882 (= Opp_7_5 6)))
 (let (($x4883 (and (= Per_5_5 Per_7_5) $x4882)))
 (=> $x4883 $x4880)))))
(assert
 (let (($x4880 (= Opp_5_5 8)))
 (=> $x4880 (xor Home_5_5 Home_7_5))))
(assert
 (let (($x4897 (= Opp_7_6 6)))
 (let (($x4898 (and (= Per_5_6 Per_7_6) $x4897)))
 (let (($x4895 (= Opp_5_6 8)))
 (=> $x4895 $x4898)))))
(assert
 (let (($x4895 (= Opp_5_6 8)))
 (let (($x4897 (= Opp_7_6 6)))
 (let (($x4898 (and (= Per_5_6 Per_7_6) $x4897)))
 (=> $x4898 $x4895)))))
(assert
 (let (($x4895 (= Opp_5_6 8)))
 (=> $x4895 (xor Home_5_6 Home_7_6))))
(assert
 (let (($x1235 (= Opp_0_0 7)))
 (let (($x4911 (and (= Per_6_0 Per_0_0) $x1235)))
 (let (($x1237 (= Opp_6_0 1)))
 (=> $x1237 $x4911)))))
(assert
 (let (($x1237 (= Opp_6_0 1)))
 (let (($x1235 (= Opp_0_0 7)))
 (let (($x4911 (and (= Per_6_0 Per_0_0) $x1235)))
 (=> $x4911 $x1237)))))
(assert
 (let (($x1237 (= Opp_6_0 1)))
 (=> $x1237 (xor Home_6_0 Home_0_0))))
(assert
 (let (($x1250 (= Opp_0_1 7)))
 (let (($x4924 (and (= Per_6_1 Per_0_1) $x1250)))
 (let (($x1252 (= Opp_6_1 1)))
 (=> $x1252 $x4924)))))
(assert
 (let (($x1252 (= Opp_6_1 1)))
 (let (($x1250 (= Opp_0_1 7)))
 (let (($x4924 (and (= Per_6_1 Per_0_1) $x1250)))
 (=> $x4924 $x1252)))))
(assert
 (let (($x1252 (= Opp_6_1 1)))
 (=> $x1252 (xor Home_6_1 Home_0_1))))
(assert
 (let (($x1265 (= Opp_0_2 7)))
 (let (($x4937 (and (= Per_6_2 Per_0_2) $x1265)))
 (let (($x1267 (= Opp_6_2 1)))
 (=> $x1267 $x4937)))))
(assert
 (let (($x1267 (= Opp_6_2 1)))
 (let (($x1265 (= Opp_0_2 7)))
 (let (($x4937 (and (= Per_6_2 Per_0_2) $x1265)))
 (=> $x4937 $x1267)))))
(assert
 (let (($x1267 (= Opp_6_2 1)))
 (=> $x1267 (xor Home_6_2 Home_0_2))))
(assert
 (let (($x1280 (= Opp_0_3 7)))
 (let (($x4950 (and (= Per_6_3 Per_0_3) $x1280)))
 (let (($x1282 (= Opp_6_3 1)))
 (=> $x1282 $x4950)))))
(assert
 (let (($x1282 (= Opp_6_3 1)))
 (let (($x1280 (= Opp_0_3 7)))
 (let (($x4950 (and (= Per_6_3 Per_0_3) $x1280)))
 (=> $x4950 $x1282)))))
(assert
 (let (($x1282 (= Opp_6_3 1)))
 (=> $x1282 (xor Home_6_3 Home_0_3))))
(assert
 (let (($x1295 (= Opp_0_4 7)))
 (let (($x4963 (and (= Per_6_4 Per_0_4) $x1295)))
 (let (($x1297 (= Opp_6_4 1)))
 (=> $x1297 $x4963)))))
(assert
 (let (($x1297 (= Opp_6_4 1)))
 (let (($x1295 (= Opp_0_4 7)))
 (let (($x4963 (and (= Per_6_4 Per_0_4) $x1295)))
 (=> $x4963 $x1297)))))
(assert
 (let (($x1297 (= Opp_6_4 1)))
 (=> $x1297 (xor Home_6_4 Home_0_4))))
(assert
 (let (($x1310 (= Opp_0_5 7)))
 (let (($x4976 (and (= Per_6_5 Per_0_5) $x1310)))
 (let (($x1312 (= Opp_6_5 1)))
 (=> $x1312 $x4976)))))
(assert
 (let (($x1312 (= Opp_6_5 1)))
 (let (($x1310 (= Opp_0_5 7)))
 (let (($x4976 (and (= Per_6_5 Per_0_5) $x1310)))
 (=> $x4976 $x1312)))))
(assert
 (let (($x1312 (= Opp_6_5 1)))
 (=> $x1312 (xor Home_6_5 Home_0_5))))
(assert
 (let (($x1325 (= Opp_0_6 7)))
 (let (($x4989 (and (= Per_6_6 Per_0_6) $x1325)))
 (let (($x1327 (= Opp_6_6 1)))
 (=> $x1327 $x4989)))))
(assert
 (let (($x1327 (= Opp_6_6 1)))
 (let (($x1325 (= Opp_0_6 7)))
 (let (($x4989 (and (= Per_6_6 Per_0_6) $x1325)))
 (=> $x4989 $x1327)))))
(assert
 (let (($x1327 (= Opp_6_6 1)))
 (=> $x1327 (xor Home_6_6 Home_0_6))))
(assert
 (let (($x1956 (= Opp_1_0 7)))
 (let (($x5002 (and (= Per_6_0 Per_1_0) $x1956)))
 (let (($x1958 (= Opp_6_0 2)))
 (=> $x1958 $x5002)))))
(assert
 (let (($x1958 (= Opp_6_0 2)))
 (let (($x1956 (= Opp_1_0 7)))
 (let (($x5002 (and (= Per_6_0 Per_1_0) $x1956)))
 (=> $x5002 $x1958)))))
(assert
 (let (($x1958 (= Opp_6_0 2)))
 (=> $x1958 (xor Home_6_0 Home_1_0))))
(assert
 (let (($x1971 (= Opp_1_1 7)))
 (let (($x5015 (and (= Per_6_1 Per_1_1) $x1971)))
 (let (($x1973 (= Opp_6_1 2)))
 (=> $x1973 $x5015)))))
(assert
 (let (($x1973 (= Opp_6_1 2)))
 (let (($x1971 (= Opp_1_1 7)))
 (let (($x5015 (and (= Per_6_1 Per_1_1) $x1971)))
 (=> $x5015 $x1973)))))
(assert
 (let (($x1973 (= Opp_6_1 2)))
 (=> $x1973 (xor Home_6_1 Home_1_1))))
(assert
 (let (($x1986 (= Opp_1_2 7)))
 (let (($x5028 (and (= Per_6_2 Per_1_2) $x1986)))
 (let (($x1988 (= Opp_6_2 2)))
 (=> $x1988 $x5028)))))
(assert
 (let (($x1988 (= Opp_6_2 2)))
 (let (($x1986 (= Opp_1_2 7)))
 (let (($x5028 (and (= Per_6_2 Per_1_2) $x1986)))
 (=> $x5028 $x1988)))))
(assert
 (let (($x1988 (= Opp_6_2 2)))
 (=> $x1988 (xor Home_6_2 Home_1_2))))
(assert
 (let (($x2001 (= Opp_1_3 7)))
 (let (($x5041 (and (= Per_6_3 Per_1_3) $x2001)))
 (let (($x2003 (= Opp_6_3 2)))
 (=> $x2003 $x5041)))))
(assert
 (let (($x2003 (= Opp_6_3 2)))
 (let (($x2001 (= Opp_1_3 7)))
 (let (($x5041 (and (= Per_6_3 Per_1_3) $x2001)))
 (=> $x5041 $x2003)))))
(assert
 (let (($x2003 (= Opp_6_3 2)))
 (=> $x2003 (xor Home_6_3 Home_1_3))))
(assert
 (let (($x2016 (= Opp_1_4 7)))
 (let (($x5054 (and (= Per_6_4 Per_1_4) $x2016)))
 (let (($x2018 (= Opp_6_4 2)))
 (=> $x2018 $x5054)))))
(assert
 (let (($x2018 (= Opp_6_4 2)))
 (let (($x2016 (= Opp_1_4 7)))
 (let (($x5054 (and (= Per_6_4 Per_1_4) $x2016)))
 (=> $x5054 $x2018)))))
(assert
 (let (($x2018 (= Opp_6_4 2)))
 (=> $x2018 (xor Home_6_4 Home_1_4))))
(assert
 (let (($x2031 (= Opp_1_5 7)))
 (let (($x5067 (and (= Per_6_5 Per_1_5) $x2031)))
 (let (($x2033 (= Opp_6_5 2)))
 (=> $x2033 $x5067)))))
(assert
 (let (($x2033 (= Opp_6_5 2)))
 (let (($x2031 (= Opp_1_5 7)))
 (let (($x5067 (and (= Per_6_5 Per_1_5) $x2031)))
 (=> $x5067 $x2033)))))
(assert
 (let (($x2033 (= Opp_6_5 2)))
 (=> $x2033 (xor Home_6_5 Home_1_5))))
(assert
 (let (($x2046 (= Opp_1_6 7)))
 (let (($x5080 (and (= Per_6_6 Per_1_6) $x2046)))
 (let (($x2048 (= Opp_6_6 2)))
 (=> $x2048 $x5080)))))
(assert
 (let (($x2048 (= Opp_6_6 2)))
 (let (($x2046 (= Opp_1_6 7)))
 (let (($x5080 (and (= Per_6_6 Per_1_6) $x2046)))
 (=> $x5080 $x2048)))))
(assert
 (let (($x2048 (= Opp_6_6 2)))
 (=> $x2048 (xor Home_6_6 Home_1_6))))
(assert
 (let (($x2663 (= Opp_2_0 7)))
 (let (($x5093 (and (= Per_6_0 Per_2_0) $x2663)))
 (let (($x2665 (= Opp_6_0 3)))
 (=> $x2665 $x5093)))))
(assert
 (let (($x2665 (= Opp_6_0 3)))
 (let (($x2663 (= Opp_2_0 7)))
 (let (($x5093 (and (= Per_6_0 Per_2_0) $x2663)))
 (=> $x5093 $x2665)))))
(assert
 (let (($x2665 (= Opp_6_0 3)))
 (=> $x2665 (xor Home_6_0 Home_2_0))))
(assert
 (let (($x2678 (= Opp_2_1 7)))
 (let (($x5106 (and (= Per_6_1 Per_2_1) $x2678)))
 (let (($x2680 (= Opp_6_1 3)))
 (=> $x2680 $x5106)))))
(assert
 (let (($x2680 (= Opp_6_1 3)))
 (let (($x2678 (= Opp_2_1 7)))
 (let (($x5106 (and (= Per_6_1 Per_2_1) $x2678)))
 (=> $x5106 $x2680)))))
(assert
 (let (($x2680 (= Opp_6_1 3)))
 (=> $x2680 (xor Home_6_1 Home_2_1))))
(assert
 (let (($x2693 (= Opp_2_2 7)))
 (let (($x5119 (and (= Per_6_2 Per_2_2) $x2693)))
 (let (($x2695 (= Opp_6_2 3)))
 (=> $x2695 $x5119)))))
(assert
 (let (($x2695 (= Opp_6_2 3)))
 (let (($x2693 (= Opp_2_2 7)))
 (let (($x5119 (and (= Per_6_2 Per_2_2) $x2693)))
 (=> $x5119 $x2695)))))
(assert
 (let (($x2695 (= Opp_6_2 3)))
 (=> $x2695 (xor Home_6_2 Home_2_2))))
(assert
 (let (($x2708 (= Opp_2_3 7)))
 (let (($x5132 (and (= Per_6_3 Per_2_3) $x2708)))
 (let (($x2710 (= Opp_6_3 3)))
 (=> $x2710 $x5132)))))
(assert
 (let (($x2710 (= Opp_6_3 3)))
 (let (($x2708 (= Opp_2_3 7)))
 (let (($x5132 (and (= Per_6_3 Per_2_3) $x2708)))
 (=> $x5132 $x2710)))))
(assert
 (let (($x2710 (= Opp_6_3 3)))
 (=> $x2710 (xor Home_6_3 Home_2_3))))
(assert
 (let (($x2723 (= Opp_2_4 7)))
 (let (($x5145 (and (= Per_6_4 Per_2_4) $x2723)))
 (let (($x2725 (= Opp_6_4 3)))
 (=> $x2725 $x5145)))))
(assert
 (let (($x2725 (= Opp_6_4 3)))
 (let (($x2723 (= Opp_2_4 7)))
 (let (($x5145 (and (= Per_6_4 Per_2_4) $x2723)))
 (=> $x5145 $x2725)))))
(assert
 (let (($x2725 (= Opp_6_4 3)))
 (=> $x2725 (xor Home_6_4 Home_2_4))))
(assert
 (let (($x2738 (= Opp_2_5 7)))
 (let (($x5158 (and (= Per_6_5 Per_2_5) $x2738)))
 (let (($x2740 (= Opp_6_5 3)))
 (=> $x2740 $x5158)))))
(assert
 (let (($x2740 (= Opp_6_5 3)))
 (let (($x2738 (= Opp_2_5 7)))
 (let (($x5158 (and (= Per_6_5 Per_2_5) $x2738)))
 (=> $x5158 $x2740)))))
(assert
 (let (($x2740 (= Opp_6_5 3)))
 (=> $x2740 (xor Home_6_5 Home_2_5))))
(assert
 (let (($x2753 (= Opp_2_6 7)))
 (let (($x5171 (and (= Per_6_6 Per_2_6) $x2753)))
 (let (($x2755 (= Opp_6_6 3)))
 (=> $x2755 $x5171)))))
(assert
 (let (($x2755 (= Opp_6_6 3)))
 (let (($x2753 (= Opp_2_6 7)))
 (let (($x5171 (and (= Per_6_6 Per_2_6) $x2753)))
 (=> $x5171 $x2755)))))
(assert
 (let (($x2755 (= Opp_6_6 3)))
 (=> $x2755 (xor Home_6_6 Home_2_6))))
(assert
 (let (($x3356 (= Opp_3_0 7)))
 (let (($x5184 (and (= Per_6_0 Per_3_0) $x3356)))
 (let (($x3358 (= Opp_6_0 4)))
 (=> $x3358 $x5184)))))
(assert
 (let (($x3358 (= Opp_6_0 4)))
 (let (($x3356 (= Opp_3_0 7)))
 (let (($x5184 (and (= Per_6_0 Per_3_0) $x3356)))
 (=> $x5184 $x3358)))))
(assert
 (let (($x3358 (= Opp_6_0 4)))
 (=> $x3358 (xor Home_6_0 Home_3_0))))
(assert
 (let (($x3371 (= Opp_3_1 7)))
 (let (($x5197 (and (= Per_6_1 Per_3_1) $x3371)))
 (let (($x3373 (= Opp_6_1 4)))
 (=> $x3373 $x5197)))))
(assert
 (let (($x3373 (= Opp_6_1 4)))
 (let (($x3371 (= Opp_3_1 7)))
 (let (($x5197 (and (= Per_6_1 Per_3_1) $x3371)))
 (=> $x5197 $x3373)))))
(assert
 (let (($x3373 (= Opp_6_1 4)))
 (=> $x3373 (xor Home_6_1 Home_3_1))))
(assert
 (let (($x3386 (= Opp_3_2 7)))
 (let (($x5210 (and (= Per_6_2 Per_3_2) $x3386)))
 (let (($x3388 (= Opp_6_2 4)))
 (=> $x3388 $x5210)))))
(assert
 (let (($x3388 (= Opp_6_2 4)))
 (let (($x3386 (= Opp_3_2 7)))
 (let (($x5210 (and (= Per_6_2 Per_3_2) $x3386)))
 (=> $x5210 $x3388)))))
(assert
 (let (($x3388 (= Opp_6_2 4)))
 (=> $x3388 (xor Home_6_2 Home_3_2))))
(assert
 (let (($x3401 (= Opp_3_3 7)))
 (let (($x5223 (and (= Per_6_3 Per_3_3) $x3401)))
 (let (($x3403 (= Opp_6_3 4)))
 (=> $x3403 $x5223)))))
(assert
 (let (($x3403 (= Opp_6_3 4)))
 (let (($x3401 (= Opp_3_3 7)))
 (let (($x5223 (and (= Per_6_3 Per_3_3) $x3401)))
 (=> $x5223 $x3403)))))
(assert
 (let (($x3403 (= Opp_6_3 4)))
 (=> $x3403 (xor Home_6_3 Home_3_3))))
(assert
 (let (($x3416 (= Opp_3_4 7)))
 (let (($x5236 (and (= Per_6_4 Per_3_4) $x3416)))
 (let (($x3418 (= Opp_6_4 4)))
 (=> $x3418 $x5236)))))
(assert
 (let (($x3418 (= Opp_6_4 4)))
 (let (($x3416 (= Opp_3_4 7)))
 (let (($x5236 (and (= Per_6_4 Per_3_4) $x3416)))
 (=> $x5236 $x3418)))))
(assert
 (let (($x3418 (= Opp_6_4 4)))
 (=> $x3418 (xor Home_6_4 Home_3_4))))
(assert
 (let (($x3431 (= Opp_3_5 7)))
 (let (($x5249 (and (= Per_6_5 Per_3_5) $x3431)))
 (let (($x3433 (= Opp_6_5 4)))
 (=> $x3433 $x5249)))))
(assert
 (let (($x3433 (= Opp_6_5 4)))
 (let (($x3431 (= Opp_3_5 7)))
 (let (($x5249 (and (= Per_6_5 Per_3_5) $x3431)))
 (=> $x5249 $x3433)))))
(assert
 (let (($x3433 (= Opp_6_5 4)))
 (=> $x3433 (xor Home_6_5 Home_3_5))))
(assert
 (let (($x3446 (= Opp_3_6 7)))
 (let (($x5262 (and (= Per_6_6 Per_3_6) $x3446)))
 (let (($x3448 (= Opp_6_6 4)))
 (=> $x3448 $x5262)))))
(assert
 (let (($x3448 (= Opp_6_6 4)))
 (let (($x3446 (= Opp_3_6 7)))
 (let (($x5262 (and (= Per_6_6 Per_3_6) $x3446)))
 (=> $x5262 $x3448)))))
(assert
 (let (($x3448 (= Opp_6_6 4)))
 (=> $x3448 (xor Home_6_6 Home_3_6))))
(assert
 (let (($x4035 (= Opp_4_0 7)))
 (let (($x5275 (and (= Per_6_0 Per_4_0) $x4035)))
 (let (($x4037 (= Opp_6_0 5)))
 (=> $x4037 $x5275)))))
(assert
 (let (($x4037 (= Opp_6_0 5)))
 (let (($x4035 (= Opp_4_0 7)))
 (let (($x5275 (and (= Per_6_0 Per_4_0) $x4035)))
 (=> $x5275 $x4037)))))
(assert
 (let (($x4037 (= Opp_6_0 5)))
 (=> $x4037 (xor Home_6_0 Home_4_0))))
(assert
 (let (($x4050 (= Opp_4_1 7)))
 (let (($x5288 (and (= Per_6_1 Per_4_1) $x4050)))
 (let (($x4052 (= Opp_6_1 5)))
 (=> $x4052 $x5288)))))
(assert
 (let (($x4052 (= Opp_6_1 5)))
 (let (($x4050 (= Opp_4_1 7)))
 (let (($x5288 (and (= Per_6_1 Per_4_1) $x4050)))
 (=> $x5288 $x4052)))))
(assert
 (let (($x4052 (= Opp_6_1 5)))
 (=> $x4052 (xor Home_6_1 Home_4_1))))
(assert
 (let (($x4065 (= Opp_4_2 7)))
 (let (($x5301 (and (= Per_6_2 Per_4_2) $x4065)))
 (let (($x4067 (= Opp_6_2 5)))
 (=> $x4067 $x5301)))))
(assert
 (let (($x4067 (= Opp_6_2 5)))
 (let (($x4065 (= Opp_4_2 7)))
 (let (($x5301 (and (= Per_6_2 Per_4_2) $x4065)))
 (=> $x5301 $x4067)))))
(assert
 (let (($x4067 (= Opp_6_2 5)))
 (=> $x4067 (xor Home_6_2 Home_4_2))))
(assert
 (let (($x4080 (= Opp_4_3 7)))
 (let (($x5314 (and (= Per_6_3 Per_4_3) $x4080)))
 (let (($x4082 (= Opp_6_3 5)))
 (=> $x4082 $x5314)))))
(assert
 (let (($x4082 (= Opp_6_3 5)))
 (let (($x4080 (= Opp_4_3 7)))
 (let (($x5314 (and (= Per_6_3 Per_4_3) $x4080)))
 (=> $x5314 $x4082)))))
(assert
 (let (($x4082 (= Opp_6_3 5)))
 (=> $x4082 (xor Home_6_3 Home_4_3))))
(assert
 (let (($x4095 (= Opp_4_4 7)))
 (let (($x5327 (and (= Per_6_4 Per_4_4) $x4095)))
 (let (($x4097 (= Opp_6_4 5)))
 (=> $x4097 $x5327)))))
(assert
 (let (($x4097 (= Opp_6_4 5)))
 (let (($x4095 (= Opp_4_4 7)))
 (let (($x5327 (and (= Per_6_4 Per_4_4) $x4095)))
 (=> $x5327 $x4097)))))
(assert
 (let (($x4097 (= Opp_6_4 5)))
 (=> $x4097 (xor Home_6_4 Home_4_4))))
(assert
 (let (($x4110 (= Opp_4_5 7)))
 (let (($x5340 (and (= Per_6_5 Per_4_5) $x4110)))
 (let (($x4112 (= Opp_6_5 5)))
 (=> $x4112 $x5340)))))
(assert
 (let (($x4112 (= Opp_6_5 5)))
 (let (($x4110 (= Opp_4_5 7)))
 (let (($x5340 (and (= Per_6_5 Per_4_5) $x4110)))
 (=> $x5340 $x4112)))))
(assert
 (let (($x4112 (= Opp_6_5 5)))
 (=> $x4112 (xor Home_6_5 Home_4_5))))
(assert
 (let (($x4125 (= Opp_4_6 7)))
 (let (($x5353 (and (= Per_6_6 Per_4_6) $x4125)))
 (let (($x4127 (= Opp_6_6 5)))
 (=> $x4127 $x5353)))))
(assert
 (let (($x4127 (= Opp_6_6 5)))
 (let (($x4125 (= Opp_4_6 7)))
 (let (($x5353 (and (= Per_6_6 Per_4_6) $x4125)))
 (=> $x5353 $x4127)))))
(assert
 (let (($x4127 (= Opp_6_6 5)))
 (=> $x4127 (xor Home_6_6 Home_4_6))))
(assert
 (let (($x4700 (= Opp_5_0 7)))
 (let (($x5366 (and (= Per_6_0 Per_5_0) $x4700)))
 (let (($x4702 (= Opp_6_0 6)))
 (=> $x4702 $x5366)))))
(assert
 (let (($x4702 (= Opp_6_0 6)))
 (let (($x4700 (= Opp_5_0 7)))
 (let (($x5366 (and (= Per_6_0 Per_5_0) $x4700)))
 (=> $x5366 $x4702)))))
(assert
 (let (($x4702 (= Opp_6_0 6)))
 (=> $x4702 (xor Home_6_0 Home_5_0))))
(assert
 (let (($x4715 (= Opp_5_1 7)))
 (let (($x5379 (and (= Per_6_1 Per_5_1) $x4715)))
 (let (($x4717 (= Opp_6_1 6)))
 (=> $x4717 $x5379)))))
(assert
 (let (($x4717 (= Opp_6_1 6)))
 (let (($x4715 (= Opp_5_1 7)))
 (let (($x5379 (and (= Per_6_1 Per_5_1) $x4715)))
 (=> $x5379 $x4717)))))
(assert
 (let (($x4717 (= Opp_6_1 6)))
 (=> $x4717 (xor Home_6_1 Home_5_1))))
(assert
 (let (($x4730 (= Opp_5_2 7)))
 (let (($x5392 (and (= Per_6_2 Per_5_2) $x4730)))
 (let (($x4732 (= Opp_6_2 6)))
 (=> $x4732 $x5392)))))
(assert
 (let (($x4732 (= Opp_6_2 6)))
 (let (($x4730 (= Opp_5_2 7)))
 (let (($x5392 (and (= Per_6_2 Per_5_2) $x4730)))
 (=> $x5392 $x4732)))))
(assert
 (let (($x4732 (= Opp_6_2 6)))
 (=> $x4732 (xor Home_6_2 Home_5_2))))
(assert
 (let (($x4745 (= Opp_5_3 7)))
 (let (($x5405 (and (= Per_6_3 Per_5_3) $x4745)))
 (let (($x4747 (= Opp_6_3 6)))
 (=> $x4747 $x5405)))))
(assert
 (let (($x4747 (= Opp_6_3 6)))
 (let (($x4745 (= Opp_5_3 7)))
 (let (($x5405 (and (= Per_6_3 Per_5_3) $x4745)))
 (=> $x5405 $x4747)))))
(assert
 (let (($x4747 (= Opp_6_3 6)))
 (=> $x4747 (xor Home_6_3 Home_5_3))))
(assert
 (let (($x4760 (= Opp_5_4 7)))
 (let (($x5418 (and (= Per_6_4 Per_5_4) $x4760)))
 (let (($x4762 (= Opp_6_4 6)))
 (=> $x4762 $x5418)))))
(assert
 (let (($x4762 (= Opp_6_4 6)))
 (let (($x4760 (= Opp_5_4 7)))
 (let (($x5418 (and (= Per_6_4 Per_5_4) $x4760)))
 (=> $x5418 $x4762)))))
(assert
 (let (($x4762 (= Opp_6_4 6)))
 (=> $x4762 (xor Home_6_4 Home_5_4))))
(assert
 (let (($x4775 (= Opp_5_5 7)))
 (let (($x5431 (and (= Per_6_5 Per_5_5) $x4775)))
 (let (($x4777 (= Opp_6_5 6)))
 (=> $x4777 $x5431)))))
(assert
 (let (($x4777 (= Opp_6_5 6)))
 (let (($x4775 (= Opp_5_5 7)))
 (let (($x5431 (and (= Per_6_5 Per_5_5) $x4775)))
 (=> $x5431 $x4777)))))
(assert
 (let (($x4777 (= Opp_6_5 6)))
 (=> $x4777 (xor Home_6_5 Home_5_5))))
(assert
 (let (($x4790 (= Opp_5_6 7)))
 (let (($x5444 (and (= Per_6_6 Per_5_6) $x4790)))
 (let (($x4792 (= Opp_6_6 6)))
 (=> $x4792 $x5444)))))
(assert
 (let (($x4792 (= Opp_6_6 6)))
 (let (($x4790 (= Opp_5_6 7)))
 (let (($x5444 (and (= Per_6_6 Per_5_6) $x4790)))
 (=> $x5444 $x4792)))))
(assert
 (let (($x4792 (= Opp_6_6 6)))
 (=> $x4792 (xor Home_6_6 Home_5_6))))
(assert
 (let (($x5458 (= Opp_7_0 7)))
 (let (($x5459 (and (= Per_6_0 Per_7_0) $x5458)))
 (let (($x5456 (= Opp_6_0 8)))
 (=> $x5456 $x5459)))))
(assert
 (let (($x5456 (= Opp_6_0 8)))
 (let (($x5458 (= Opp_7_0 7)))
 (let (($x5459 (and (= Per_6_0 Per_7_0) $x5458)))
 (=> $x5459 $x5456)))))
(assert
 (let (($x5456 (= Opp_6_0 8)))
 (=> $x5456 (xor Home_6_0 Home_7_0))))
(assert
 (let (($x5473 (= Opp_7_1 7)))
 (let (($x5474 (and (= Per_6_1 Per_7_1) $x5473)))
 (let (($x5471 (= Opp_6_1 8)))
 (=> $x5471 $x5474)))))
(assert
 (let (($x5471 (= Opp_6_1 8)))
 (let (($x5473 (= Opp_7_1 7)))
 (let (($x5474 (and (= Per_6_1 Per_7_1) $x5473)))
 (=> $x5474 $x5471)))))
(assert
 (let (($x5471 (= Opp_6_1 8)))
 (=> $x5471 (xor Home_6_1 Home_7_1))))
(assert
 (let (($x5488 (= Opp_7_2 7)))
 (let (($x5489 (and (= Per_6_2 Per_7_2) $x5488)))
 (let (($x5486 (= Opp_6_2 8)))
 (=> $x5486 $x5489)))))
(assert
 (let (($x5486 (= Opp_6_2 8)))
 (let (($x5488 (= Opp_7_2 7)))
 (let (($x5489 (and (= Per_6_2 Per_7_2) $x5488)))
 (=> $x5489 $x5486)))))
(assert
 (let (($x5486 (= Opp_6_2 8)))
 (=> $x5486 (xor Home_6_2 Home_7_2))))
(assert
 (let (($x5503 (= Opp_7_3 7)))
 (let (($x5504 (and (= Per_6_3 Per_7_3) $x5503)))
 (let (($x5501 (= Opp_6_3 8)))
 (=> $x5501 $x5504)))))
(assert
 (let (($x5501 (= Opp_6_3 8)))
 (let (($x5503 (= Opp_7_3 7)))
 (let (($x5504 (and (= Per_6_3 Per_7_3) $x5503)))
 (=> $x5504 $x5501)))))
(assert
 (let (($x5501 (= Opp_6_3 8)))
 (=> $x5501 (xor Home_6_3 Home_7_3))))
(assert
 (let (($x5518 (= Opp_7_4 7)))
 (let (($x5519 (and (= Per_6_4 Per_7_4) $x5518)))
 (let (($x5516 (= Opp_6_4 8)))
 (=> $x5516 $x5519)))))
(assert
 (let (($x5516 (= Opp_6_4 8)))
 (let (($x5518 (= Opp_7_4 7)))
 (let (($x5519 (and (= Per_6_4 Per_7_4) $x5518)))
 (=> $x5519 $x5516)))))
(assert
 (let (($x5516 (= Opp_6_4 8)))
 (=> $x5516 (xor Home_6_4 Home_7_4))))
(assert
 (let (($x5533 (= Opp_7_5 7)))
 (let (($x5534 (and (= Per_6_5 Per_7_5) $x5533)))
 (let (($x5531 (= Opp_6_5 8)))
 (=> $x5531 $x5534)))))
(assert
 (let (($x5531 (= Opp_6_5 8)))
 (let (($x5533 (= Opp_7_5 7)))
 (let (($x5534 (and (= Per_6_5 Per_7_5) $x5533)))
 (=> $x5534 $x5531)))))
(assert
 (let (($x5531 (= Opp_6_5 8)))
 (=> $x5531 (xor Home_6_5 Home_7_5))))
(assert
 (let (($x5548 (= Opp_7_6 7)))
 (let (($x5549 (and (= Per_6_6 Per_7_6) $x5548)))
 (let (($x5546 (= Opp_6_6 8)))
 (=> $x5546 $x5549)))))
(assert
 (let (($x5546 (= Opp_6_6 8)))
 (let (($x5548 (= Opp_7_6 7)))
 (let (($x5549 (and (= Per_6_6 Per_7_6) $x5548)))
 (=> $x5549 $x5546)))))
(assert
 (let (($x5546 (= Opp_6_6 8)))
 (=> $x5546 (xor Home_6_6 Home_7_6))))
(assert
 (let (($x1340 (= Opp_0_0 8)))
 (let (($x5562 (and (= Per_7_0 Per_0_0) $x1340)))
 (let (($x1342 (= Opp_7_0 1)))
 (=> $x1342 $x5562)))))
(assert
 (let (($x1342 (= Opp_7_0 1)))
 (let (($x1340 (= Opp_0_0 8)))
 (let (($x5562 (and (= Per_7_0 Per_0_0) $x1340)))
 (=> $x5562 $x1342)))))
(assert
 (let (($x1342 (= Opp_7_0 1)))
 (=> $x1342 (xor Home_7_0 Home_0_0))))
(assert
 (let (($x1355 (= Opp_0_1 8)))
 (let (($x5575 (and (= Per_7_1 Per_0_1) $x1355)))
 (let (($x1357 (= Opp_7_1 1)))
 (=> $x1357 $x5575)))))
(assert
 (let (($x1357 (= Opp_7_1 1)))
 (let (($x1355 (= Opp_0_1 8)))
 (let (($x5575 (and (= Per_7_1 Per_0_1) $x1355)))
 (=> $x5575 $x1357)))))
(assert
 (let (($x1357 (= Opp_7_1 1)))
 (=> $x1357 (xor Home_7_1 Home_0_1))))
(assert
 (let (($x1370 (= Opp_0_2 8)))
 (let (($x5588 (and (= Per_7_2 Per_0_2) $x1370)))
 (let (($x1372 (= Opp_7_2 1)))
 (=> $x1372 $x5588)))))
(assert
 (let (($x1372 (= Opp_7_2 1)))
 (let (($x1370 (= Opp_0_2 8)))
 (let (($x5588 (and (= Per_7_2 Per_0_2) $x1370)))
 (=> $x5588 $x1372)))))
(assert
 (let (($x1372 (= Opp_7_2 1)))
 (=> $x1372 (xor Home_7_2 Home_0_2))))
(assert
 (let (($x1385 (= Opp_0_3 8)))
 (let (($x5601 (and (= Per_7_3 Per_0_3) $x1385)))
 (let (($x1387 (= Opp_7_3 1)))
 (=> $x1387 $x5601)))))
(assert
 (let (($x1387 (= Opp_7_3 1)))
 (let (($x1385 (= Opp_0_3 8)))
 (let (($x5601 (and (= Per_7_3 Per_0_3) $x1385)))
 (=> $x5601 $x1387)))))
(assert
 (let (($x1387 (= Opp_7_3 1)))
 (=> $x1387 (xor Home_7_3 Home_0_3))))
(assert
 (let (($x1400 (= Opp_0_4 8)))
 (let (($x5614 (and (= Per_7_4 Per_0_4) $x1400)))
 (let (($x1402 (= Opp_7_4 1)))
 (=> $x1402 $x5614)))))
(assert
 (let (($x1402 (= Opp_7_4 1)))
 (let (($x1400 (= Opp_0_4 8)))
 (let (($x5614 (and (= Per_7_4 Per_0_4) $x1400)))
 (=> $x5614 $x1402)))))
(assert
 (let (($x1402 (= Opp_7_4 1)))
 (=> $x1402 (xor Home_7_4 Home_0_4))))
(assert
 (let (($x1415 (= Opp_0_5 8)))
 (let (($x5627 (and (= Per_7_5 Per_0_5) $x1415)))
 (let (($x1417 (= Opp_7_5 1)))
 (=> $x1417 $x5627)))))
(assert
 (let (($x1417 (= Opp_7_5 1)))
 (let (($x1415 (= Opp_0_5 8)))
 (let (($x5627 (and (= Per_7_5 Per_0_5) $x1415)))
 (=> $x5627 $x1417)))))
(assert
 (let (($x1417 (= Opp_7_5 1)))
 (=> $x1417 (xor Home_7_5 Home_0_5))))
(assert
 (let (($x1430 (= Opp_0_6 8)))
 (let (($x5640 (and (= Per_7_6 Per_0_6) $x1430)))
 (let (($x1432 (= Opp_7_6 1)))
 (=> $x1432 $x5640)))))
(assert
 (let (($x1432 (= Opp_7_6 1)))
 (let (($x1430 (= Opp_0_6 8)))
 (let (($x5640 (and (= Per_7_6 Per_0_6) $x1430)))
 (=> $x5640 $x1432)))))
(assert
 (let (($x1432 (= Opp_7_6 1)))
 (=> $x1432 (xor Home_7_6 Home_0_6))))
(assert
 (let (($x2061 (= Opp_1_0 8)))
 (let (($x5653 (and (= Per_7_0 Per_1_0) $x2061)))
 (let (($x2063 (= Opp_7_0 2)))
 (=> $x2063 $x5653)))))
(assert
 (let (($x2063 (= Opp_7_0 2)))
 (let (($x2061 (= Opp_1_0 8)))
 (let (($x5653 (and (= Per_7_0 Per_1_0) $x2061)))
 (=> $x5653 $x2063)))))
(assert
 (let (($x2063 (= Opp_7_0 2)))
 (=> $x2063 (xor Home_7_0 Home_1_0))))
(assert
 (let (($x2076 (= Opp_1_1 8)))
 (let (($x5666 (and (= Per_7_1 Per_1_1) $x2076)))
 (let (($x2078 (= Opp_7_1 2)))
 (=> $x2078 $x5666)))))
(assert
 (let (($x2078 (= Opp_7_1 2)))
 (let (($x2076 (= Opp_1_1 8)))
 (let (($x5666 (and (= Per_7_1 Per_1_1) $x2076)))
 (=> $x5666 $x2078)))))
(assert
 (let (($x2078 (= Opp_7_1 2)))
 (=> $x2078 (xor Home_7_1 Home_1_1))))
(assert
 (let (($x2091 (= Opp_1_2 8)))
 (let (($x5679 (and (= Per_7_2 Per_1_2) $x2091)))
 (let (($x2093 (= Opp_7_2 2)))
 (=> $x2093 $x5679)))))
(assert
 (let (($x2093 (= Opp_7_2 2)))
 (let (($x2091 (= Opp_1_2 8)))
 (let (($x5679 (and (= Per_7_2 Per_1_2) $x2091)))
 (=> $x5679 $x2093)))))
(assert
 (let (($x2093 (= Opp_7_2 2)))
 (=> $x2093 (xor Home_7_2 Home_1_2))))
(assert
 (let (($x2106 (= Opp_1_3 8)))
 (let (($x5692 (and (= Per_7_3 Per_1_3) $x2106)))
 (let (($x2108 (= Opp_7_3 2)))
 (=> $x2108 $x5692)))))
(assert
 (let (($x2108 (= Opp_7_3 2)))
 (let (($x2106 (= Opp_1_3 8)))
 (let (($x5692 (and (= Per_7_3 Per_1_3) $x2106)))
 (=> $x5692 $x2108)))))
(assert
 (let (($x2108 (= Opp_7_3 2)))
 (=> $x2108 (xor Home_7_3 Home_1_3))))
(assert
 (let (($x2121 (= Opp_1_4 8)))
 (let (($x5705 (and (= Per_7_4 Per_1_4) $x2121)))
 (let (($x2123 (= Opp_7_4 2)))
 (=> $x2123 $x5705)))))
(assert
 (let (($x2123 (= Opp_7_4 2)))
 (let (($x2121 (= Opp_1_4 8)))
 (let (($x5705 (and (= Per_7_4 Per_1_4) $x2121)))
 (=> $x5705 $x2123)))))
(assert
 (let (($x2123 (= Opp_7_4 2)))
 (=> $x2123 (xor Home_7_4 Home_1_4))))
(assert
 (let (($x2136 (= Opp_1_5 8)))
 (let (($x5718 (and (= Per_7_5 Per_1_5) $x2136)))
 (let (($x2138 (= Opp_7_5 2)))
 (=> $x2138 $x5718)))))
(assert
 (let (($x2138 (= Opp_7_5 2)))
 (let (($x2136 (= Opp_1_5 8)))
 (let (($x5718 (and (= Per_7_5 Per_1_5) $x2136)))
 (=> $x5718 $x2138)))))
(assert
 (let (($x2138 (= Opp_7_5 2)))
 (=> $x2138 (xor Home_7_5 Home_1_5))))
(assert
 (let (($x2151 (= Opp_1_6 8)))
 (let (($x5731 (and (= Per_7_6 Per_1_6) $x2151)))
 (let (($x2153 (= Opp_7_6 2)))
 (=> $x2153 $x5731)))))
(assert
 (let (($x2153 (= Opp_7_6 2)))
 (let (($x2151 (= Opp_1_6 8)))
 (let (($x5731 (and (= Per_7_6 Per_1_6) $x2151)))
 (=> $x5731 $x2153)))))
(assert
 (let (($x2153 (= Opp_7_6 2)))
 (=> $x2153 (xor Home_7_6 Home_1_6))))
(assert
 (let (($x2768 (= Opp_2_0 8)))
 (let (($x5744 (and (= Per_7_0 Per_2_0) $x2768)))
 (let (($x2770 (= Opp_7_0 3)))
 (=> $x2770 $x5744)))))
(assert
 (let (($x2770 (= Opp_7_0 3)))
 (let (($x2768 (= Opp_2_0 8)))
 (let (($x5744 (and (= Per_7_0 Per_2_0) $x2768)))
 (=> $x5744 $x2770)))))
(assert
 (let (($x2770 (= Opp_7_0 3)))
 (=> $x2770 (xor Home_7_0 Home_2_0))))
(assert
 (let (($x2783 (= Opp_2_1 8)))
 (let (($x5757 (and (= Per_7_1 Per_2_1) $x2783)))
 (let (($x2785 (= Opp_7_1 3)))
 (=> $x2785 $x5757)))))
(assert
 (let (($x2785 (= Opp_7_1 3)))
 (let (($x2783 (= Opp_2_1 8)))
 (let (($x5757 (and (= Per_7_1 Per_2_1) $x2783)))
 (=> $x5757 $x2785)))))
(assert
 (let (($x2785 (= Opp_7_1 3)))
 (=> $x2785 (xor Home_7_1 Home_2_1))))
(assert
 (let (($x2798 (= Opp_2_2 8)))
 (let (($x5770 (and (= Per_7_2 Per_2_2) $x2798)))
 (let (($x2800 (= Opp_7_2 3)))
 (=> $x2800 $x5770)))))
(assert
 (let (($x2800 (= Opp_7_2 3)))
 (let (($x2798 (= Opp_2_2 8)))
 (let (($x5770 (and (= Per_7_2 Per_2_2) $x2798)))
 (=> $x5770 $x2800)))))
(assert
 (let (($x2800 (= Opp_7_2 3)))
 (=> $x2800 (xor Home_7_2 Home_2_2))))
(assert
 (let (($x2813 (= Opp_2_3 8)))
 (let (($x5783 (and (= Per_7_3 Per_2_3) $x2813)))
 (let (($x2815 (= Opp_7_3 3)))
 (=> $x2815 $x5783)))))
(assert
 (let (($x2815 (= Opp_7_3 3)))
 (let (($x2813 (= Opp_2_3 8)))
 (let (($x5783 (and (= Per_7_3 Per_2_3) $x2813)))
 (=> $x5783 $x2815)))))
(assert
 (let (($x2815 (= Opp_7_3 3)))
 (=> $x2815 (xor Home_7_3 Home_2_3))))
(assert
 (let (($x2828 (= Opp_2_4 8)))
 (let (($x5796 (and (= Per_7_4 Per_2_4) $x2828)))
 (let (($x2830 (= Opp_7_4 3)))
 (=> $x2830 $x5796)))))
(assert
 (let (($x2830 (= Opp_7_4 3)))
 (let (($x2828 (= Opp_2_4 8)))
 (let (($x5796 (and (= Per_7_4 Per_2_4) $x2828)))
 (=> $x5796 $x2830)))))
(assert
 (let (($x2830 (= Opp_7_4 3)))
 (=> $x2830 (xor Home_7_4 Home_2_4))))
(assert
 (let (($x2843 (= Opp_2_5 8)))
 (let (($x5809 (and (= Per_7_5 Per_2_5) $x2843)))
 (let (($x2845 (= Opp_7_5 3)))
 (=> $x2845 $x5809)))))
(assert
 (let (($x2845 (= Opp_7_5 3)))
 (let (($x2843 (= Opp_2_5 8)))
 (let (($x5809 (and (= Per_7_5 Per_2_5) $x2843)))
 (=> $x5809 $x2845)))))
(assert
 (let (($x2845 (= Opp_7_5 3)))
 (=> $x2845 (xor Home_7_5 Home_2_5))))
(assert
 (let (($x2858 (= Opp_2_6 8)))
 (let (($x5822 (and (= Per_7_6 Per_2_6) $x2858)))
 (let (($x2860 (= Opp_7_6 3)))
 (=> $x2860 $x5822)))))
(assert
 (let (($x2860 (= Opp_7_6 3)))
 (let (($x2858 (= Opp_2_6 8)))
 (let (($x5822 (and (= Per_7_6 Per_2_6) $x2858)))
 (=> $x5822 $x2860)))))
(assert
 (let (($x2860 (= Opp_7_6 3)))
 (=> $x2860 (xor Home_7_6 Home_2_6))))
(assert
 (let (($x3461 (= Opp_3_0 8)))
 (let (($x5835 (and (= Per_7_0 Per_3_0) $x3461)))
 (let (($x3463 (= Opp_7_0 4)))
 (=> $x3463 $x5835)))))
(assert
 (let (($x3463 (= Opp_7_0 4)))
 (let (($x3461 (= Opp_3_0 8)))
 (let (($x5835 (and (= Per_7_0 Per_3_0) $x3461)))
 (=> $x5835 $x3463)))))
(assert
 (let (($x3463 (= Opp_7_0 4)))
 (=> $x3463 (xor Home_7_0 Home_3_0))))
(assert
 (let (($x3476 (= Opp_3_1 8)))
 (let (($x5848 (and (= Per_7_1 Per_3_1) $x3476)))
 (let (($x3478 (= Opp_7_1 4)))
 (=> $x3478 $x5848)))))
(assert
 (let (($x3478 (= Opp_7_1 4)))
 (let (($x3476 (= Opp_3_1 8)))
 (let (($x5848 (and (= Per_7_1 Per_3_1) $x3476)))
 (=> $x5848 $x3478)))))
(assert
 (let (($x3478 (= Opp_7_1 4)))
 (=> $x3478 (xor Home_7_1 Home_3_1))))
(assert
 (let (($x3491 (= Opp_3_2 8)))
 (let (($x5861 (and (= Per_7_2 Per_3_2) $x3491)))
 (let (($x3493 (= Opp_7_2 4)))
 (=> $x3493 $x5861)))))
(assert
 (let (($x3493 (= Opp_7_2 4)))
 (let (($x3491 (= Opp_3_2 8)))
 (let (($x5861 (and (= Per_7_2 Per_3_2) $x3491)))
 (=> $x5861 $x3493)))))
(assert
 (let (($x3493 (= Opp_7_2 4)))
 (=> $x3493 (xor Home_7_2 Home_3_2))))
(assert
 (let (($x3506 (= Opp_3_3 8)))
 (let (($x5874 (and (= Per_7_3 Per_3_3) $x3506)))
 (let (($x3508 (= Opp_7_3 4)))
 (=> $x3508 $x5874)))))
(assert
 (let (($x3508 (= Opp_7_3 4)))
 (let (($x3506 (= Opp_3_3 8)))
 (let (($x5874 (and (= Per_7_3 Per_3_3) $x3506)))
 (=> $x5874 $x3508)))))
(assert
 (let (($x3508 (= Opp_7_3 4)))
 (=> $x3508 (xor Home_7_3 Home_3_3))))
(assert
 (let (($x3521 (= Opp_3_4 8)))
 (let (($x5887 (and (= Per_7_4 Per_3_4) $x3521)))
 (let (($x3523 (= Opp_7_4 4)))
 (=> $x3523 $x5887)))))
(assert
 (let (($x3523 (= Opp_7_4 4)))
 (let (($x3521 (= Opp_3_4 8)))
 (let (($x5887 (and (= Per_7_4 Per_3_4) $x3521)))
 (=> $x5887 $x3523)))))
(assert
 (let (($x3523 (= Opp_7_4 4)))
 (=> $x3523 (xor Home_7_4 Home_3_4))))
(assert
 (let (($x3536 (= Opp_3_5 8)))
 (let (($x5900 (and (= Per_7_5 Per_3_5) $x3536)))
 (let (($x3538 (= Opp_7_5 4)))
 (=> $x3538 $x5900)))))
(assert
 (let (($x3538 (= Opp_7_5 4)))
 (let (($x3536 (= Opp_3_5 8)))
 (let (($x5900 (and (= Per_7_5 Per_3_5) $x3536)))
 (=> $x5900 $x3538)))))
(assert
 (let (($x3538 (= Opp_7_5 4)))
 (=> $x3538 (xor Home_7_5 Home_3_5))))
(assert
 (let (($x3551 (= Opp_3_6 8)))
 (let (($x5913 (and (= Per_7_6 Per_3_6) $x3551)))
 (let (($x3553 (= Opp_7_6 4)))
 (=> $x3553 $x5913)))))
(assert
 (let (($x3553 (= Opp_7_6 4)))
 (let (($x3551 (= Opp_3_6 8)))
 (let (($x5913 (and (= Per_7_6 Per_3_6) $x3551)))
 (=> $x5913 $x3553)))))
(assert
 (let (($x3553 (= Opp_7_6 4)))
 (=> $x3553 (xor Home_7_6 Home_3_6))))
(assert
 (let (($x4140 (= Opp_4_0 8)))
 (let (($x5926 (and (= Per_7_0 Per_4_0) $x4140)))
 (let (($x4142 (= Opp_7_0 5)))
 (=> $x4142 $x5926)))))
(assert
 (let (($x4142 (= Opp_7_0 5)))
 (let (($x4140 (= Opp_4_0 8)))
 (let (($x5926 (and (= Per_7_0 Per_4_0) $x4140)))
 (=> $x5926 $x4142)))))
(assert
 (let (($x4142 (= Opp_7_0 5)))
 (=> $x4142 (xor Home_7_0 Home_4_0))))
(assert
 (let (($x4155 (= Opp_4_1 8)))
 (let (($x5939 (and (= Per_7_1 Per_4_1) $x4155)))
 (let (($x4157 (= Opp_7_1 5)))
 (=> $x4157 $x5939)))))
(assert
 (let (($x4157 (= Opp_7_1 5)))
 (let (($x4155 (= Opp_4_1 8)))
 (let (($x5939 (and (= Per_7_1 Per_4_1) $x4155)))
 (=> $x5939 $x4157)))))
(assert
 (let (($x4157 (= Opp_7_1 5)))
 (=> $x4157 (xor Home_7_1 Home_4_1))))
(assert
 (let (($x4170 (= Opp_4_2 8)))
 (let (($x5952 (and (= Per_7_2 Per_4_2) $x4170)))
 (let (($x4172 (= Opp_7_2 5)))
 (=> $x4172 $x5952)))))
(assert
 (let (($x4172 (= Opp_7_2 5)))
 (let (($x4170 (= Opp_4_2 8)))
 (let (($x5952 (and (= Per_7_2 Per_4_2) $x4170)))
 (=> $x5952 $x4172)))))
(assert
 (let (($x4172 (= Opp_7_2 5)))
 (=> $x4172 (xor Home_7_2 Home_4_2))))
(assert
 (let (($x4185 (= Opp_4_3 8)))
 (let (($x5965 (and (= Per_7_3 Per_4_3) $x4185)))
 (let (($x4187 (= Opp_7_3 5)))
 (=> $x4187 $x5965)))))
(assert
 (let (($x4187 (= Opp_7_3 5)))
 (let (($x4185 (= Opp_4_3 8)))
 (let (($x5965 (and (= Per_7_3 Per_4_3) $x4185)))
 (=> $x5965 $x4187)))))
(assert
 (let (($x4187 (= Opp_7_3 5)))
 (=> $x4187 (xor Home_7_3 Home_4_3))))
(assert
 (let (($x4200 (= Opp_4_4 8)))
 (let (($x5978 (and (= Per_7_4 Per_4_4) $x4200)))
 (let (($x4202 (= Opp_7_4 5)))
 (=> $x4202 $x5978)))))
(assert
 (let (($x4202 (= Opp_7_4 5)))
 (let (($x4200 (= Opp_4_4 8)))
 (let (($x5978 (and (= Per_7_4 Per_4_4) $x4200)))
 (=> $x5978 $x4202)))))
(assert
 (let (($x4202 (= Opp_7_4 5)))
 (=> $x4202 (xor Home_7_4 Home_4_4))))
(assert
 (let (($x4215 (= Opp_4_5 8)))
 (let (($x5991 (and (= Per_7_5 Per_4_5) $x4215)))
 (let (($x4217 (= Opp_7_5 5)))
 (=> $x4217 $x5991)))))
(assert
 (let (($x4217 (= Opp_7_5 5)))
 (let (($x4215 (= Opp_4_5 8)))
 (let (($x5991 (and (= Per_7_5 Per_4_5) $x4215)))
 (=> $x5991 $x4217)))))
(assert
 (let (($x4217 (= Opp_7_5 5)))
 (=> $x4217 (xor Home_7_5 Home_4_5))))
(assert
 (let (($x4230 (= Opp_4_6 8)))
 (let (($x6004 (and (= Per_7_6 Per_4_6) $x4230)))
 (let (($x4232 (= Opp_7_6 5)))
 (=> $x4232 $x6004)))))
(assert
 (let (($x4232 (= Opp_7_6 5)))
 (let (($x4230 (= Opp_4_6 8)))
 (let (($x6004 (and (= Per_7_6 Per_4_6) $x4230)))
 (=> $x6004 $x4232)))))
(assert
 (let (($x4232 (= Opp_7_6 5)))
 (=> $x4232 (xor Home_7_6 Home_4_6))))
(assert
 (let (($x4805 (= Opp_5_0 8)))
 (let (($x6017 (and (= Per_7_0 Per_5_0) $x4805)))
 (let (($x4807 (= Opp_7_0 6)))
 (=> $x4807 $x6017)))))
(assert
 (let (($x4807 (= Opp_7_0 6)))
 (let (($x4805 (= Opp_5_0 8)))
 (let (($x6017 (and (= Per_7_0 Per_5_0) $x4805)))
 (=> $x6017 $x4807)))))
(assert
 (let (($x4807 (= Opp_7_0 6)))
 (=> $x4807 (xor Home_7_0 Home_5_0))))
(assert
 (let (($x4820 (= Opp_5_1 8)))
 (let (($x6030 (and (= Per_7_1 Per_5_1) $x4820)))
 (let (($x4822 (= Opp_7_1 6)))
 (=> $x4822 $x6030)))))
(assert
 (let (($x4822 (= Opp_7_1 6)))
 (let (($x4820 (= Opp_5_1 8)))
 (let (($x6030 (and (= Per_7_1 Per_5_1) $x4820)))
 (=> $x6030 $x4822)))))
(assert
 (let (($x4822 (= Opp_7_1 6)))
 (=> $x4822 (xor Home_7_1 Home_5_1))))
(assert
 (let (($x4835 (= Opp_5_2 8)))
 (let (($x6043 (and (= Per_7_2 Per_5_2) $x4835)))
 (let (($x4837 (= Opp_7_2 6)))
 (=> $x4837 $x6043)))))
(assert
 (let (($x4837 (= Opp_7_2 6)))
 (let (($x4835 (= Opp_5_2 8)))
 (let (($x6043 (and (= Per_7_2 Per_5_2) $x4835)))
 (=> $x6043 $x4837)))))
(assert
 (let (($x4837 (= Opp_7_2 6)))
 (=> $x4837 (xor Home_7_2 Home_5_2))))
(assert
 (let (($x4850 (= Opp_5_3 8)))
 (let (($x6056 (and (= Per_7_3 Per_5_3) $x4850)))
 (let (($x4852 (= Opp_7_3 6)))
 (=> $x4852 $x6056)))))
(assert
 (let (($x4852 (= Opp_7_3 6)))
 (let (($x4850 (= Opp_5_3 8)))
 (let (($x6056 (and (= Per_7_3 Per_5_3) $x4850)))
 (=> $x6056 $x4852)))))
(assert
 (let (($x4852 (= Opp_7_3 6)))
 (=> $x4852 (xor Home_7_3 Home_5_3))))
(assert
 (let (($x4865 (= Opp_5_4 8)))
 (let (($x6069 (and (= Per_7_4 Per_5_4) $x4865)))
 (let (($x4867 (= Opp_7_4 6)))
 (=> $x4867 $x6069)))))
(assert
 (let (($x4867 (= Opp_7_4 6)))
 (let (($x4865 (= Opp_5_4 8)))
 (let (($x6069 (and (= Per_7_4 Per_5_4) $x4865)))
 (=> $x6069 $x4867)))))
(assert
 (let (($x4867 (= Opp_7_4 6)))
 (=> $x4867 (xor Home_7_4 Home_5_4))))
(assert
 (let (($x4880 (= Opp_5_5 8)))
 (let (($x6082 (and (= Per_7_5 Per_5_5) $x4880)))
 (let (($x4882 (= Opp_7_5 6)))
 (=> $x4882 $x6082)))))
(assert
 (let (($x4882 (= Opp_7_5 6)))
 (let (($x4880 (= Opp_5_5 8)))
 (let (($x6082 (and (= Per_7_5 Per_5_5) $x4880)))
 (=> $x6082 $x4882)))))
(assert
 (let (($x4882 (= Opp_7_5 6)))
 (=> $x4882 (xor Home_7_5 Home_5_5))))
(assert
 (let (($x4895 (= Opp_5_6 8)))
 (let (($x6095 (and (= Per_7_6 Per_5_6) $x4895)))
 (let (($x4897 (= Opp_7_6 6)))
 (=> $x4897 $x6095)))))
(assert
 (let (($x4897 (= Opp_7_6 6)))
 (let (($x4895 (= Opp_5_6 8)))
 (let (($x6095 (and (= Per_7_6 Per_5_6) $x4895)))
 (=> $x6095 $x4897)))))
(assert
 (let (($x4897 (= Opp_7_6 6)))
 (=> $x4897 (xor Home_7_6 Home_5_6))))
(assert
 (let (($x5456 (= Opp_6_0 8)))
 (let (($x6108 (and (= Per_7_0 Per_6_0) $x5456)))
 (let (($x5458 (= Opp_7_0 7)))
 (=> $x5458 $x6108)))))
(assert
 (let (($x5458 (= Opp_7_0 7)))
 (let (($x5456 (= Opp_6_0 8)))
 (let (($x6108 (and (= Per_7_0 Per_6_0) $x5456)))
 (=> $x6108 $x5458)))))
(assert
 (let (($x5458 (= Opp_7_0 7)))
 (=> $x5458 (xor Home_7_0 Home_6_0))))
(assert
 (let (($x5471 (= Opp_6_1 8)))
 (let (($x6121 (and (= Per_7_1 Per_6_1) $x5471)))
 (let (($x5473 (= Opp_7_1 7)))
 (=> $x5473 $x6121)))))
(assert
 (let (($x5473 (= Opp_7_1 7)))
 (let (($x5471 (= Opp_6_1 8)))
 (let (($x6121 (and (= Per_7_1 Per_6_1) $x5471)))
 (=> $x6121 $x5473)))))
(assert
 (let (($x5473 (= Opp_7_1 7)))
 (=> $x5473 (xor Home_7_1 Home_6_1))))
(assert
 (let (($x5486 (= Opp_6_2 8)))
 (let (($x6134 (and (= Per_7_2 Per_6_2) $x5486)))
 (let (($x5488 (= Opp_7_2 7)))
 (=> $x5488 $x6134)))))
(assert
 (let (($x5488 (= Opp_7_2 7)))
 (let (($x5486 (= Opp_6_2 8)))
 (let (($x6134 (and (= Per_7_2 Per_6_2) $x5486)))
 (=> $x6134 $x5488)))))
(assert
 (let (($x5488 (= Opp_7_2 7)))
 (=> $x5488 (xor Home_7_2 Home_6_2))))
(assert
 (let (($x5501 (= Opp_6_3 8)))
 (let (($x6147 (and (= Per_7_3 Per_6_3) $x5501)))
 (let (($x5503 (= Opp_7_3 7)))
 (=> $x5503 $x6147)))))
(assert
 (let (($x5503 (= Opp_7_3 7)))
 (let (($x5501 (= Opp_6_3 8)))
 (let (($x6147 (and (= Per_7_3 Per_6_3) $x5501)))
 (=> $x6147 $x5503)))))
(assert
 (let (($x5503 (= Opp_7_3 7)))
 (=> $x5503 (xor Home_7_3 Home_6_3))))
(assert
 (let (($x5516 (= Opp_6_4 8)))
 (let (($x6160 (and (= Per_7_4 Per_6_4) $x5516)))
 (let (($x5518 (= Opp_7_4 7)))
 (=> $x5518 $x6160)))))
(assert
 (let (($x5518 (= Opp_7_4 7)))
 (let (($x5516 (= Opp_6_4 8)))
 (let (($x6160 (and (= Per_7_4 Per_6_4) $x5516)))
 (=> $x6160 $x5518)))))
(assert
 (let (($x5518 (= Opp_7_4 7)))
 (=> $x5518 (xor Home_7_4 Home_6_4))))
(assert
 (let (($x5531 (= Opp_6_5 8)))
 (let (($x6173 (and (= Per_7_5 Per_6_5) $x5531)))
 (let (($x5533 (= Opp_7_5 7)))
 (=> $x5533 $x6173)))))
(assert
 (let (($x5533 (= Opp_7_5 7)))
 (let (($x5531 (= Opp_6_5 8)))
 (let (($x6173 (and (= Per_7_5 Per_6_5) $x5531)))
 (=> $x6173 $x5533)))))
(assert
 (let (($x5533 (= Opp_7_5 7)))
 (=> $x5533 (xor Home_7_5 Home_6_5))))
(assert
 (let (($x5546 (= Opp_6_6 8)))
 (let (($x6186 (and (= Per_7_6 Per_6_6) $x5546)))
 (let (($x5548 (= Opp_7_6 7)))
 (=> $x5548 $x6186)))))
(assert
 (let (($x5548 (= Opp_7_6 7)))
 (let (($x5546 (= Opp_6_6 8)))
 (let (($x6186 (and (= Per_7_6 Per_6_6) $x5546)))
 (=> $x6186 $x5548)))))
(assert
 (let (($x5548 (= Opp_7_6 7)))
 (=> $x5548 (xor Home_7_6 Home_6_6))))
(assert
 (and (distinct Opp_0_0 Opp_0_1 Opp_0_2 Opp_0_3 Opp_0_4 Opp_0_5 Opp_0_6) true))
(assert
 (and (distinct Opp_1_0 Opp_1_1 Opp_1_2 Opp_1_3 Opp_1_4 Opp_1_5 Opp_1_6) true))
(assert
 (and (distinct Opp_2_0 Opp_2_1 Opp_2_2 Opp_2_3 Opp_2_4 Opp_2_5 Opp_2_6) true))
(assert
 (and (distinct Opp_3_0 Opp_3_1 Opp_3_2 Opp_3_3 Opp_3_4 Opp_3_5 Opp_3_6) true))
(assert
 (and (distinct Opp_4_0 Opp_4_1 Opp_4_2 Opp_4_3 Opp_4_4 Opp_4_5 Opp_4_6) true))
(assert
 (and (distinct Opp_5_0 Opp_5_1 Opp_5_2 Opp_5_3 Opp_5_4 Opp_5_5 Opp_5_6) true))
(assert
 (and (distinct Opp_6_0 Opp_6_1 Opp_6_2 Opp_6_3 Opp_6_4 Opp_6_5 Opp_6_6) true))
(assert
 (and (distinct Opp_7_0 Opp_7_1 Opp_7_2 Opp_7_3 Opp_7_4 Opp_7_5 Opp_7_6) true))
(assert
 (let (($x6221 (= Per_7_0 1)))
 (let ((?x6222 (ite $x6221 1 0)))
 (let ((?x6220 (ite (= Per_6_0 1) 1 0)))
 (let ((?x6218 (ite (= Per_5_0 1) 1 0)))
 (let ((?x6216 (ite (= Per_4_0 1) 1 0)))
 (let ((?x6214 (ite (= Per_3_0 1) 1 0)))
 (let ((?x6212 (ite (= Per_2_0 1) 1 0)))
 (let ((?x6210 (ite (= Per_1_0 1) 1 0)))
 (let (($x6206 (= Per_0_0 1)))
 (let ((?x6208 (ite $x6206 1 0)))
 (= (+ ?x6208 ?x6210 ?x6212 ?x6214 ?x6216 ?x6218 ?x6220 ?x6222) 2))))))))))))
(assert
 (let ((?x6240 (ite (= Per_7_0 2) 1 0)))
 (let (($x6237 (= Per_6_0 2)))
 (let ((?x6238 (ite $x6237 1 0)))
 (let ((?x6236 (ite (= Per_5_0 2) 1 0)))
 (let ((?x6234 (ite (= Per_4_0 2) 1 0)))
 (let ((?x6232 (ite (= Per_3_0 2) 1 0)))
 (let ((?x6230 (ite (= Per_2_0 2) 1 0)))
 (let (($x6227 (= Per_1_0 2)))
 (let ((?x6228 (ite $x6227 1 0)))
 (let ((?x6226 (ite (= Per_0_0 2) 1 0)))
 (= (+ ?x6226 ?x6228 ?x6230 ?x6232 ?x6234 ?x6236 ?x6238 ?x6240) 2))))))))))))
(assert
 (let ((?x6258 (ite (= Per_7_0 3) 1 0)))
 (let ((?x6256 (ite (= Per_6_0 3) 1 0)))
 (let (($x6253 (= Per_5_0 3)))
 (let ((?x6254 (ite $x6253 1 0)))
 (let ((?x6252 (ite (= Per_4_0 3) 1 0)))
 (let ((?x6250 (ite (= Per_3_0 3) 1 0)))
 (let (($x6247 (= Per_2_0 3)))
 (let ((?x6248 (ite $x6247 1 0)))
 (let ((?x6246 (ite (= Per_1_0 3) 1 0)))
 (let ((?x6244 (ite (= Per_0_0 3) 1 0)))
 (= (+ ?x6244 ?x6246 ?x6248 ?x6250 ?x6252 ?x6254 ?x6256 ?x6258) 2))))))))))))
(assert
 (let ((?x6276 (ite (= Per_7_0 4) 1 0)))
 (let ((?x6274 (ite (= Per_6_0 4) 1 0)))
 (let ((?x6272 (ite (= Per_5_0 4) 1 0)))
 (let (($x6269 (= Per_4_0 4)))
 (let ((?x6270 (ite $x6269 1 0)))
 (let (($x6267 (= Per_3_0 4)))
 (let ((?x6268 (ite $x6267 1 0)))
 (let ((?x6266 (ite (= Per_2_0 4) 1 0)))
 (let ((?x6264 (ite (= Per_1_0 4) 1 0)))
 (let ((?x6262 (ite (= Per_0_0 4) 1 0)))
 (= (+ ?x6262 ?x6264 ?x6266 ?x6268 ?x6270 ?x6272 ?x6274 ?x6276) 2))))))))))))
(assert
 (let ((?x6294 (ite (= Per_7_1 1) 1 0)))
 (let ((?x6292 (ite (= Per_6_1 1) 1 0)))
 (let ((?x6290 (ite (= Per_5_1 1) 1 0)))
 (let ((?x6288 (ite (= Per_4_1 1) 1 0)))
 (let ((?x6286 (ite (= Per_3_1 1) 1 0)))
 (let ((?x6284 (ite (= Per_2_1 1) 1 0)))
 (let ((?x6282 (ite (= Per_1_1 1) 1 0)))
 (let ((?x6280 (ite (= Per_0_1 1) 1 0)))
 (= (+ ?x6280 ?x6282 ?x6284 ?x6286 ?x6288 ?x6290 ?x6292 ?x6294) 2))))))))))
(assert
 (let ((?x6312 (ite (= Per_7_1 2) 1 0)))
 (let ((?x6310 (ite (= Per_6_1 2) 1 0)))
 (let ((?x6308 (ite (= Per_5_1 2) 1 0)))
 (let ((?x6306 (ite (= Per_4_1 2) 1 0)))
 (let ((?x6304 (ite (= Per_3_1 2) 1 0)))
 (let ((?x6302 (ite (= Per_2_1 2) 1 0)))
 (let ((?x6300 (ite (= Per_1_1 2) 1 0)))
 (let ((?x6298 (ite (= Per_0_1 2) 1 0)))
 (= (+ ?x6298 ?x6300 ?x6302 ?x6304 ?x6306 ?x6308 ?x6310 ?x6312) 2))))))))))
(assert
 (let ((?x6330 (ite (= Per_7_1 3) 1 0)))
 (let ((?x6328 (ite (= Per_6_1 3) 1 0)))
 (let ((?x6326 (ite (= Per_5_1 3) 1 0)))
 (let ((?x6324 (ite (= Per_4_1 3) 1 0)))
 (let ((?x6322 (ite (= Per_3_1 3) 1 0)))
 (let ((?x6320 (ite (= Per_2_1 3) 1 0)))
 (let ((?x6318 (ite (= Per_1_1 3) 1 0)))
 (let ((?x6316 (ite (= Per_0_1 3) 1 0)))
 (= (+ ?x6316 ?x6318 ?x6320 ?x6322 ?x6324 ?x6326 ?x6328 ?x6330) 2))))))))))
(assert
 (let ((?x6348 (ite (= Per_7_1 4) 1 0)))
 (let ((?x6346 (ite (= Per_6_1 4) 1 0)))
 (let ((?x6344 (ite (= Per_5_1 4) 1 0)))
 (let ((?x6342 (ite (= Per_4_1 4) 1 0)))
 (let ((?x6340 (ite (= Per_3_1 4) 1 0)))
 (let ((?x6338 (ite (= Per_2_1 4) 1 0)))
 (let ((?x6336 (ite (= Per_1_1 4) 1 0)))
 (let ((?x6334 (ite (= Per_0_1 4) 1 0)))
 (= (+ ?x6334 ?x6336 ?x6338 ?x6340 ?x6342 ?x6344 ?x6346 ?x6348) 2))))))))))
(assert
 (let ((?x6366 (ite (= Per_7_2 1) 1 0)))
 (let ((?x6364 (ite (= Per_6_2 1) 1 0)))
 (let ((?x6362 (ite (= Per_5_2 1) 1 0)))
 (let ((?x6360 (ite (= Per_4_2 1) 1 0)))
 (let ((?x6358 (ite (= Per_3_2 1) 1 0)))
 (let ((?x6356 (ite (= Per_2_2 1) 1 0)))
 (let ((?x6354 (ite (= Per_1_2 1) 1 0)))
 (let ((?x6352 (ite (= Per_0_2 1) 1 0)))
 (= (+ ?x6352 ?x6354 ?x6356 ?x6358 ?x6360 ?x6362 ?x6364 ?x6366) 2))))))))))
(assert
 (let ((?x6384 (ite (= Per_7_2 2) 1 0)))
 (let ((?x6382 (ite (= Per_6_2 2) 1 0)))
 (let ((?x6380 (ite (= Per_5_2 2) 1 0)))
 (let ((?x6378 (ite (= Per_4_2 2) 1 0)))
 (let ((?x6376 (ite (= Per_3_2 2) 1 0)))
 (let ((?x6374 (ite (= Per_2_2 2) 1 0)))
 (let ((?x6372 (ite (= Per_1_2 2) 1 0)))
 (let ((?x6370 (ite (= Per_0_2 2) 1 0)))
 (= (+ ?x6370 ?x6372 ?x6374 ?x6376 ?x6378 ?x6380 ?x6382 ?x6384) 2))))))))))
(assert
 (let ((?x6402 (ite (= Per_7_2 3) 1 0)))
 (let ((?x6400 (ite (= Per_6_2 3) 1 0)))
 (let ((?x6398 (ite (= Per_5_2 3) 1 0)))
 (let ((?x6396 (ite (= Per_4_2 3) 1 0)))
 (let ((?x6394 (ite (= Per_3_2 3) 1 0)))
 (let ((?x6392 (ite (= Per_2_2 3) 1 0)))
 (let ((?x6390 (ite (= Per_1_2 3) 1 0)))
 (let ((?x6388 (ite (= Per_0_2 3) 1 0)))
 (= (+ ?x6388 ?x6390 ?x6392 ?x6394 ?x6396 ?x6398 ?x6400 ?x6402) 2))))))))))
(assert
 (let ((?x6420 (ite (= Per_7_2 4) 1 0)))
 (let ((?x6418 (ite (= Per_6_2 4) 1 0)))
 (let ((?x6416 (ite (= Per_5_2 4) 1 0)))
 (let ((?x6414 (ite (= Per_4_2 4) 1 0)))
 (let ((?x6412 (ite (= Per_3_2 4) 1 0)))
 (let ((?x6410 (ite (= Per_2_2 4) 1 0)))
 (let ((?x6408 (ite (= Per_1_2 4) 1 0)))
 (let ((?x6406 (ite (= Per_0_2 4) 1 0)))
 (= (+ ?x6406 ?x6408 ?x6410 ?x6412 ?x6414 ?x6416 ?x6418 ?x6420) 2))))))))))
(assert
 (let ((?x6438 (ite (= Per_7_3 1) 1 0)))
 (let ((?x6436 (ite (= Per_6_3 1) 1 0)))
 (let ((?x6434 (ite (= Per_5_3 1) 1 0)))
 (let ((?x6432 (ite (= Per_4_3 1) 1 0)))
 (let ((?x6430 (ite (= Per_3_3 1) 1 0)))
 (let ((?x6428 (ite (= Per_2_3 1) 1 0)))
 (let ((?x6426 (ite (= Per_1_3 1) 1 0)))
 (let ((?x6424 (ite (= Per_0_3 1) 1 0)))
 (= (+ ?x6424 ?x6426 ?x6428 ?x6430 ?x6432 ?x6434 ?x6436 ?x6438) 2))))))))))
(assert
 (let ((?x6456 (ite (= Per_7_3 2) 1 0)))
 (let ((?x6454 (ite (= Per_6_3 2) 1 0)))
 (let ((?x6452 (ite (= Per_5_3 2) 1 0)))
 (let ((?x6450 (ite (= Per_4_3 2) 1 0)))
 (let ((?x6448 (ite (= Per_3_3 2) 1 0)))
 (let ((?x6446 (ite (= Per_2_3 2) 1 0)))
 (let ((?x6444 (ite (= Per_1_3 2) 1 0)))
 (let ((?x6442 (ite (= Per_0_3 2) 1 0)))
 (= (+ ?x6442 ?x6444 ?x6446 ?x6448 ?x6450 ?x6452 ?x6454 ?x6456) 2))))))))))
(assert
 (let ((?x6474 (ite (= Per_7_3 3) 1 0)))
 (let ((?x6472 (ite (= Per_6_3 3) 1 0)))
 (let ((?x6470 (ite (= Per_5_3 3) 1 0)))
 (let ((?x6468 (ite (= Per_4_3 3) 1 0)))
 (let ((?x6466 (ite (= Per_3_3 3) 1 0)))
 (let ((?x6464 (ite (= Per_2_3 3) 1 0)))
 (let ((?x6462 (ite (= Per_1_3 3) 1 0)))
 (let ((?x6460 (ite (= Per_0_3 3) 1 0)))
 (= (+ ?x6460 ?x6462 ?x6464 ?x6466 ?x6468 ?x6470 ?x6472 ?x6474) 2))))))))))
(assert
 (let ((?x6492 (ite (= Per_7_3 4) 1 0)))
 (let ((?x6490 (ite (= Per_6_3 4) 1 0)))
 (let ((?x6488 (ite (= Per_5_3 4) 1 0)))
 (let ((?x6486 (ite (= Per_4_3 4) 1 0)))
 (let ((?x6484 (ite (= Per_3_3 4) 1 0)))
 (let ((?x6482 (ite (= Per_2_3 4) 1 0)))
 (let ((?x6480 (ite (= Per_1_3 4) 1 0)))
 (let ((?x6478 (ite (= Per_0_3 4) 1 0)))
 (= (+ ?x6478 ?x6480 ?x6482 ?x6484 ?x6486 ?x6488 ?x6490 ?x6492) 2))))))))))
(assert
 (let ((?x6510 (ite (= Per_7_4 1) 1 0)))
 (let ((?x6508 (ite (= Per_6_4 1) 1 0)))
 (let ((?x6506 (ite (= Per_5_4 1) 1 0)))
 (let ((?x6504 (ite (= Per_4_4 1) 1 0)))
 (let ((?x6502 (ite (= Per_3_4 1) 1 0)))
 (let ((?x6500 (ite (= Per_2_4 1) 1 0)))
 (let ((?x6498 (ite (= Per_1_4 1) 1 0)))
 (let ((?x6496 (ite (= Per_0_4 1) 1 0)))
 (= (+ ?x6496 ?x6498 ?x6500 ?x6502 ?x6504 ?x6506 ?x6508 ?x6510) 2))))))))))
(assert
 (let ((?x6528 (ite (= Per_7_4 2) 1 0)))
 (let ((?x6526 (ite (= Per_6_4 2) 1 0)))
 (let ((?x6524 (ite (= Per_5_4 2) 1 0)))
 (let ((?x6522 (ite (= Per_4_4 2) 1 0)))
 (let ((?x6520 (ite (= Per_3_4 2) 1 0)))
 (let ((?x6518 (ite (= Per_2_4 2) 1 0)))
 (let ((?x6516 (ite (= Per_1_4 2) 1 0)))
 (let ((?x6514 (ite (= Per_0_4 2) 1 0)))
 (= (+ ?x6514 ?x6516 ?x6518 ?x6520 ?x6522 ?x6524 ?x6526 ?x6528) 2))))))))))
(assert
 (let ((?x6546 (ite (= Per_7_4 3) 1 0)))
 (let ((?x6544 (ite (= Per_6_4 3) 1 0)))
 (let ((?x6542 (ite (= Per_5_4 3) 1 0)))
 (let ((?x6540 (ite (= Per_4_4 3) 1 0)))
 (let ((?x6538 (ite (= Per_3_4 3) 1 0)))
 (let ((?x6536 (ite (= Per_2_4 3) 1 0)))
 (let ((?x6534 (ite (= Per_1_4 3) 1 0)))
 (let ((?x6532 (ite (= Per_0_4 3) 1 0)))
 (= (+ ?x6532 ?x6534 ?x6536 ?x6538 ?x6540 ?x6542 ?x6544 ?x6546) 2))))))))))
(assert
 (let ((?x6564 (ite (= Per_7_4 4) 1 0)))
 (let ((?x6562 (ite (= Per_6_4 4) 1 0)))
 (let ((?x6560 (ite (= Per_5_4 4) 1 0)))
 (let ((?x6558 (ite (= Per_4_4 4) 1 0)))
 (let ((?x6556 (ite (= Per_3_4 4) 1 0)))
 (let ((?x6554 (ite (= Per_2_4 4) 1 0)))
 (let ((?x6552 (ite (= Per_1_4 4) 1 0)))
 (let ((?x6550 (ite (= Per_0_4 4) 1 0)))
 (= (+ ?x6550 ?x6552 ?x6554 ?x6556 ?x6558 ?x6560 ?x6562 ?x6564) 2))))))))))
(assert
 (let ((?x6582 (ite (= Per_7_5 1) 1 0)))
 (let ((?x6580 (ite (= Per_6_5 1) 1 0)))
 (let ((?x6578 (ite (= Per_5_5 1) 1 0)))
 (let ((?x6576 (ite (= Per_4_5 1) 1 0)))
 (let ((?x6574 (ite (= Per_3_5 1) 1 0)))
 (let ((?x6572 (ite (= Per_2_5 1) 1 0)))
 (let ((?x6570 (ite (= Per_1_5 1) 1 0)))
 (let ((?x6568 (ite (= Per_0_5 1) 1 0)))
 (= (+ ?x6568 ?x6570 ?x6572 ?x6574 ?x6576 ?x6578 ?x6580 ?x6582) 2))))))))))
(assert
 (let ((?x6600 (ite (= Per_7_5 2) 1 0)))
 (let ((?x6598 (ite (= Per_6_5 2) 1 0)))
 (let ((?x6596 (ite (= Per_5_5 2) 1 0)))
 (let ((?x6594 (ite (= Per_4_5 2) 1 0)))
 (let ((?x6592 (ite (= Per_3_5 2) 1 0)))
 (let ((?x6590 (ite (= Per_2_5 2) 1 0)))
 (let ((?x6588 (ite (= Per_1_5 2) 1 0)))
 (let ((?x6586 (ite (= Per_0_5 2) 1 0)))
 (= (+ ?x6586 ?x6588 ?x6590 ?x6592 ?x6594 ?x6596 ?x6598 ?x6600) 2))))))))))
(assert
 (let ((?x6618 (ite (= Per_7_5 3) 1 0)))
 (let ((?x6616 (ite (= Per_6_5 3) 1 0)))
 (let ((?x6614 (ite (= Per_5_5 3) 1 0)))
 (let ((?x6612 (ite (= Per_4_5 3) 1 0)))
 (let ((?x6610 (ite (= Per_3_5 3) 1 0)))
 (let ((?x6608 (ite (= Per_2_5 3) 1 0)))
 (let ((?x6606 (ite (= Per_1_5 3) 1 0)))
 (let ((?x6604 (ite (= Per_0_5 3) 1 0)))
 (= (+ ?x6604 ?x6606 ?x6608 ?x6610 ?x6612 ?x6614 ?x6616 ?x6618) 2))))))))))
(assert
 (let ((?x6636 (ite (= Per_7_5 4) 1 0)))
 (let ((?x6634 (ite (= Per_6_5 4) 1 0)))
 (let ((?x6632 (ite (= Per_5_5 4) 1 0)))
 (let ((?x6630 (ite (= Per_4_5 4) 1 0)))
 (let ((?x6628 (ite (= Per_3_5 4) 1 0)))
 (let ((?x6626 (ite (= Per_2_5 4) 1 0)))
 (let ((?x6624 (ite (= Per_1_5 4) 1 0)))
 (let ((?x6622 (ite (= Per_0_5 4) 1 0)))
 (= (+ ?x6622 ?x6624 ?x6626 ?x6628 ?x6630 ?x6632 ?x6634 ?x6636) 2))))))))))
(assert
 (let ((?x6654 (ite (= Per_7_6 1) 1 0)))
 (let ((?x6652 (ite (= Per_6_6 1) 1 0)))
 (let ((?x6650 (ite (= Per_5_6 1) 1 0)))
 (let ((?x6648 (ite (= Per_4_6 1) 1 0)))
 (let ((?x6646 (ite (= Per_3_6 1) 1 0)))
 (let ((?x6644 (ite (= Per_2_6 1) 1 0)))
 (let ((?x6642 (ite (= Per_1_6 1) 1 0)))
 (let ((?x6640 (ite (= Per_0_6 1) 1 0)))
 (= (+ ?x6640 ?x6642 ?x6644 ?x6646 ?x6648 ?x6650 ?x6652 ?x6654) 2))))))))))
(assert
 (let ((?x6672 (ite (= Per_7_6 2) 1 0)))
 (let ((?x6670 (ite (= Per_6_6 2) 1 0)))
 (let ((?x6668 (ite (= Per_5_6 2) 1 0)))
 (let ((?x6666 (ite (= Per_4_6 2) 1 0)))
 (let ((?x6664 (ite (= Per_3_6 2) 1 0)))
 (let ((?x6662 (ite (= Per_2_6 2) 1 0)))
 (let ((?x6660 (ite (= Per_1_6 2) 1 0)))
 (let ((?x6658 (ite (= Per_0_6 2) 1 0)))
 (= (+ ?x6658 ?x6660 ?x6662 ?x6664 ?x6666 ?x6668 ?x6670 ?x6672) 2))))))))))
(assert
 (let ((?x6690 (ite (= Per_7_6 3) 1 0)))
 (let ((?x6688 (ite (= Per_6_6 3) 1 0)))
 (let ((?x6686 (ite (= Per_5_6 3) 1 0)))
 (let ((?x6684 (ite (= Per_4_6 3) 1 0)))
 (let ((?x6682 (ite (= Per_3_6 3) 1 0)))
 (let ((?x6680 (ite (= Per_2_6 3) 1 0)))
 (let ((?x6678 (ite (= Per_1_6 3) 1 0)))
 (let ((?x6676 (ite (= Per_0_6 3) 1 0)))
 (= (+ ?x6676 ?x6678 ?x6680 ?x6682 ?x6684 ?x6686 ?x6688 ?x6690) 2))))))))))
(assert
 (let ((?x6708 (ite (= Per_7_6 4) 1 0)))
 (let ((?x6706 (ite (= Per_6_6 4) 1 0)))
 (let ((?x6704 (ite (= Per_5_6 4) 1 0)))
 (let ((?x6702 (ite (= Per_4_6 4) 1 0)))
 (let ((?x6700 (ite (= Per_3_6 4) 1 0)))
 (let ((?x6698 (ite (= Per_2_6 4) 1 0)))
 (let ((?x6696 (ite (= Per_1_6 4) 1 0)))
 (let ((?x6694 (ite (= Per_0_6 4) 1 0)))
 (= (+ ?x6694 ?x6696 ?x6698 ?x6700 ?x6702 ?x6704 ?x6706 ?x6708) 2))))))))))
(assert
 (let ((?x6640 (ite (= Per_0_6 1) 1 0)))
 (let ((?x6568 (ite (= Per_0_5 1) 1 0)))
 (let ((?x6496 (ite (= Per_0_4 1) 1 0)))
 (let ((?x6424 (ite (= Per_0_3 1) 1 0)))
 (let ((?x6352 (ite (= Per_0_2 1) 1 0)))
 (let ((?x6280 (ite (= Per_0_1 1) 1 0)))
 (let (($x6206 (= Per_0_0 1)))
 (let ((?x6208 (ite $x6206 1 0)))
 (<= (+ ?x6208 ?x6280 ?x6352 ?x6424 ?x6496 ?x6568 ?x6640) 2))))))))))
(assert
 (let ((?x6658 (ite (= Per_0_6 2) 1 0)))
 (let ((?x6586 (ite (= Per_0_5 2) 1 0)))
 (let ((?x6514 (ite (= Per_0_4 2) 1 0)))
 (let ((?x6442 (ite (= Per_0_3 2) 1 0)))
 (let ((?x6370 (ite (= Per_0_2 2) 1 0)))
 (let ((?x6298 (ite (= Per_0_1 2) 1 0)))
 (let ((?x6226 (ite (= Per_0_0 2) 1 0)))
 (<= (+ ?x6226 ?x6298 ?x6370 ?x6442 ?x6514 ?x6586 ?x6658) 2)))))))))
(assert
 (let ((?x6676 (ite (= Per_0_6 3) 1 0)))
 (let ((?x6604 (ite (= Per_0_5 3) 1 0)))
 (let ((?x6532 (ite (= Per_0_4 3) 1 0)))
 (let ((?x6460 (ite (= Per_0_3 3) 1 0)))
 (let ((?x6388 (ite (= Per_0_2 3) 1 0)))
 (let ((?x6316 (ite (= Per_0_1 3) 1 0)))
 (let ((?x6244 (ite (= Per_0_0 3) 1 0)))
 (<= (+ ?x6244 ?x6316 ?x6388 ?x6460 ?x6532 ?x6604 ?x6676) 2)))))))))
(assert
 (let ((?x6694 (ite (= Per_0_6 4) 1 0)))
 (let ((?x6622 (ite (= Per_0_5 4) 1 0)))
 (let ((?x6550 (ite (= Per_0_4 4) 1 0)))
 (let ((?x6478 (ite (= Per_0_3 4) 1 0)))
 (let ((?x6406 (ite (= Per_0_2 4) 1 0)))
 (let ((?x6334 (ite (= Per_0_1 4) 1 0)))
 (let ((?x6262 (ite (= Per_0_0 4) 1 0)))
 (<= (+ ?x6262 ?x6334 ?x6406 ?x6478 ?x6550 ?x6622 ?x6694) 2)))))))))
(assert
 (let ((?x6642 (ite (= Per_1_6 1) 1 0)))
 (let ((?x6570 (ite (= Per_1_5 1) 1 0)))
 (let ((?x6498 (ite (= Per_1_4 1) 1 0)))
 (let ((?x6426 (ite (= Per_1_3 1) 1 0)))
 (let ((?x6354 (ite (= Per_1_2 1) 1 0)))
 (let ((?x6282 (ite (= Per_1_1 1) 1 0)))
 (let ((?x6210 (ite (= Per_1_0 1) 1 0)))
 (<= (+ ?x6210 ?x6282 ?x6354 ?x6426 ?x6498 ?x6570 ?x6642) 2)))))))))
(assert
 (let ((?x6660 (ite (= Per_1_6 2) 1 0)))
 (let ((?x6588 (ite (= Per_1_5 2) 1 0)))
 (let ((?x6516 (ite (= Per_1_4 2) 1 0)))
 (let ((?x6444 (ite (= Per_1_3 2) 1 0)))
 (let ((?x6372 (ite (= Per_1_2 2) 1 0)))
 (let ((?x6300 (ite (= Per_1_1 2) 1 0)))
 (let (($x6227 (= Per_1_0 2)))
 (let ((?x6228 (ite $x6227 1 0)))
 (<= (+ ?x6228 ?x6300 ?x6372 ?x6444 ?x6516 ?x6588 ?x6660) 2))))))))))
(assert
 (let ((?x6678 (ite (= Per_1_6 3) 1 0)))
 (let ((?x6606 (ite (= Per_1_5 3) 1 0)))
 (let ((?x6534 (ite (= Per_1_4 3) 1 0)))
 (let ((?x6462 (ite (= Per_1_3 3) 1 0)))
 (let ((?x6390 (ite (= Per_1_2 3) 1 0)))
 (let ((?x6318 (ite (= Per_1_1 3) 1 0)))
 (let ((?x6246 (ite (= Per_1_0 3) 1 0)))
 (<= (+ ?x6246 ?x6318 ?x6390 ?x6462 ?x6534 ?x6606 ?x6678) 2)))))))))
(assert
 (let ((?x6696 (ite (= Per_1_6 4) 1 0)))
 (let ((?x6624 (ite (= Per_1_5 4) 1 0)))
 (let ((?x6552 (ite (= Per_1_4 4) 1 0)))
 (let ((?x6480 (ite (= Per_1_3 4) 1 0)))
 (let ((?x6408 (ite (= Per_1_2 4) 1 0)))
 (let ((?x6336 (ite (= Per_1_1 4) 1 0)))
 (let ((?x6264 (ite (= Per_1_0 4) 1 0)))
 (<= (+ ?x6264 ?x6336 ?x6408 ?x6480 ?x6552 ?x6624 ?x6696) 2)))))))))
(assert
 (let ((?x6644 (ite (= Per_2_6 1) 1 0)))
 (let ((?x6572 (ite (= Per_2_5 1) 1 0)))
 (let ((?x6500 (ite (= Per_2_4 1) 1 0)))
 (let ((?x6428 (ite (= Per_2_3 1) 1 0)))
 (let ((?x6356 (ite (= Per_2_2 1) 1 0)))
 (let ((?x6284 (ite (= Per_2_1 1) 1 0)))
 (let ((?x6212 (ite (= Per_2_0 1) 1 0)))
 (<= (+ ?x6212 ?x6284 ?x6356 ?x6428 ?x6500 ?x6572 ?x6644) 2)))))))))
(assert
 (let ((?x6662 (ite (= Per_2_6 2) 1 0)))
 (let ((?x6590 (ite (= Per_2_5 2) 1 0)))
 (let ((?x6518 (ite (= Per_2_4 2) 1 0)))
 (let ((?x6446 (ite (= Per_2_3 2) 1 0)))
 (let ((?x6374 (ite (= Per_2_2 2) 1 0)))
 (let ((?x6302 (ite (= Per_2_1 2) 1 0)))
 (let ((?x6230 (ite (= Per_2_0 2) 1 0)))
 (<= (+ ?x6230 ?x6302 ?x6374 ?x6446 ?x6518 ?x6590 ?x6662) 2)))))))))
(assert
 (let ((?x6680 (ite (= Per_2_6 3) 1 0)))
 (let ((?x6608 (ite (= Per_2_5 3) 1 0)))
 (let ((?x6536 (ite (= Per_2_4 3) 1 0)))
 (let ((?x6464 (ite (= Per_2_3 3) 1 0)))
 (let ((?x6392 (ite (= Per_2_2 3) 1 0)))
 (let ((?x6320 (ite (= Per_2_1 3) 1 0)))
 (let (($x6247 (= Per_2_0 3)))
 (let ((?x6248 (ite $x6247 1 0)))
 (<= (+ ?x6248 ?x6320 ?x6392 ?x6464 ?x6536 ?x6608 ?x6680) 2))))))))))
(assert
 (let ((?x6698 (ite (= Per_2_6 4) 1 0)))
 (let ((?x6626 (ite (= Per_2_5 4) 1 0)))
 (let ((?x6554 (ite (= Per_2_4 4) 1 0)))
 (let ((?x6482 (ite (= Per_2_3 4) 1 0)))
 (let ((?x6410 (ite (= Per_2_2 4) 1 0)))
 (let ((?x6338 (ite (= Per_2_1 4) 1 0)))
 (let ((?x6266 (ite (= Per_2_0 4) 1 0)))
 (<= (+ ?x6266 ?x6338 ?x6410 ?x6482 ?x6554 ?x6626 ?x6698) 2)))))))))
(assert
 (let ((?x6646 (ite (= Per_3_6 1) 1 0)))
 (let ((?x6574 (ite (= Per_3_5 1) 1 0)))
 (let ((?x6502 (ite (= Per_3_4 1) 1 0)))
 (let ((?x6430 (ite (= Per_3_3 1) 1 0)))
 (let ((?x6358 (ite (= Per_3_2 1) 1 0)))
 (let ((?x6286 (ite (= Per_3_1 1) 1 0)))
 (let ((?x6214 (ite (= Per_3_0 1) 1 0)))
 (<= (+ ?x6214 ?x6286 ?x6358 ?x6430 ?x6502 ?x6574 ?x6646) 2)))))))))
(assert
 (let ((?x6664 (ite (= Per_3_6 2) 1 0)))
 (let ((?x6592 (ite (= Per_3_5 2) 1 0)))
 (let ((?x6520 (ite (= Per_3_4 2) 1 0)))
 (let ((?x6448 (ite (= Per_3_3 2) 1 0)))
 (let ((?x6376 (ite (= Per_3_2 2) 1 0)))
 (let ((?x6304 (ite (= Per_3_1 2) 1 0)))
 (let ((?x6232 (ite (= Per_3_0 2) 1 0)))
 (<= (+ ?x6232 ?x6304 ?x6376 ?x6448 ?x6520 ?x6592 ?x6664) 2)))))))))
(assert
 (let ((?x6682 (ite (= Per_3_6 3) 1 0)))
 (let ((?x6610 (ite (= Per_3_5 3) 1 0)))
 (let ((?x6538 (ite (= Per_3_4 3) 1 0)))
 (let ((?x6466 (ite (= Per_3_3 3) 1 0)))
 (let ((?x6394 (ite (= Per_3_2 3) 1 0)))
 (let ((?x6322 (ite (= Per_3_1 3) 1 0)))
 (let ((?x6250 (ite (= Per_3_0 3) 1 0)))
 (<= (+ ?x6250 ?x6322 ?x6394 ?x6466 ?x6538 ?x6610 ?x6682) 2)))))))))
(assert
 (let ((?x6700 (ite (= Per_3_6 4) 1 0)))
 (let ((?x6628 (ite (= Per_3_5 4) 1 0)))
 (let ((?x6556 (ite (= Per_3_4 4) 1 0)))
 (let ((?x6484 (ite (= Per_3_3 4) 1 0)))
 (let ((?x6412 (ite (= Per_3_2 4) 1 0)))
 (let ((?x6340 (ite (= Per_3_1 4) 1 0)))
 (let (($x6267 (= Per_3_0 4)))
 (let ((?x6268 (ite $x6267 1 0)))
 (<= (+ ?x6268 ?x6340 ?x6412 ?x6484 ?x6556 ?x6628 ?x6700) 2))))))))))
(assert
 (let ((?x6648 (ite (= Per_4_6 1) 1 0)))
 (let ((?x6576 (ite (= Per_4_5 1) 1 0)))
 (let ((?x6504 (ite (= Per_4_4 1) 1 0)))
 (let ((?x6432 (ite (= Per_4_3 1) 1 0)))
 (let ((?x6360 (ite (= Per_4_2 1) 1 0)))
 (let ((?x6288 (ite (= Per_4_1 1) 1 0)))
 (let ((?x6216 (ite (= Per_4_0 1) 1 0)))
 (<= (+ ?x6216 ?x6288 ?x6360 ?x6432 ?x6504 ?x6576 ?x6648) 2)))))))))
(assert
 (let ((?x6666 (ite (= Per_4_6 2) 1 0)))
 (let ((?x6594 (ite (= Per_4_5 2) 1 0)))
 (let ((?x6522 (ite (= Per_4_4 2) 1 0)))
 (let ((?x6450 (ite (= Per_4_3 2) 1 0)))
 (let ((?x6378 (ite (= Per_4_2 2) 1 0)))
 (let ((?x6306 (ite (= Per_4_1 2) 1 0)))
 (let ((?x6234 (ite (= Per_4_0 2) 1 0)))
 (<= (+ ?x6234 ?x6306 ?x6378 ?x6450 ?x6522 ?x6594 ?x6666) 2)))))))))
(assert
 (let ((?x6684 (ite (= Per_4_6 3) 1 0)))
 (let ((?x6612 (ite (= Per_4_5 3) 1 0)))
 (let ((?x6540 (ite (= Per_4_4 3) 1 0)))
 (let ((?x6468 (ite (= Per_4_3 3) 1 0)))
 (let ((?x6396 (ite (= Per_4_2 3) 1 0)))
 (let ((?x6324 (ite (= Per_4_1 3) 1 0)))
 (let ((?x6252 (ite (= Per_4_0 3) 1 0)))
 (<= (+ ?x6252 ?x6324 ?x6396 ?x6468 ?x6540 ?x6612 ?x6684) 2)))))))))
(assert
 (let ((?x6702 (ite (= Per_4_6 4) 1 0)))
 (let ((?x6630 (ite (= Per_4_5 4) 1 0)))
 (let ((?x6558 (ite (= Per_4_4 4) 1 0)))
 (let ((?x6486 (ite (= Per_4_3 4) 1 0)))
 (let ((?x6414 (ite (= Per_4_2 4) 1 0)))
 (let ((?x6342 (ite (= Per_4_1 4) 1 0)))
 (let (($x6269 (= Per_4_0 4)))
 (let ((?x6270 (ite $x6269 1 0)))
 (<= (+ ?x6270 ?x6342 ?x6414 ?x6486 ?x6558 ?x6630 ?x6702) 2))))))))))
(assert
 (let ((?x6650 (ite (= Per_5_6 1) 1 0)))
 (let ((?x6578 (ite (= Per_5_5 1) 1 0)))
 (let ((?x6506 (ite (= Per_5_4 1) 1 0)))
 (let ((?x6434 (ite (= Per_5_3 1) 1 0)))
 (let ((?x6362 (ite (= Per_5_2 1) 1 0)))
 (let ((?x6290 (ite (= Per_5_1 1) 1 0)))
 (let ((?x6218 (ite (= Per_5_0 1) 1 0)))
 (<= (+ ?x6218 ?x6290 ?x6362 ?x6434 ?x6506 ?x6578 ?x6650) 2)))))))))
(assert
 (let ((?x6668 (ite (= Per_5_6 2) 1 0)))
 (let ((?x6596 (ite (= Per_5_5 2) 1 0)))
 (let ((?x6524 (ite (= Per_5_4 2) 1 0)))
 (let ((?x6452 (ite (= Per_5_3 2) 1 0)))
 (let ((?x6380 (ite (= Per_5_2 2) 1 0)))
 (let ((?x6308 (ite (= Per_5_1 2) 1 0)))
 (let ((?x6236 (ite (= Per_5_0 2) 1 0)))
 (<= (+ ?x6236 ?x6308 ?x6380 ?x6452 ?x6524 ?x6596 ?x6668) 2)))))))))
(assert
 (let ((?x6686 (ite (= Per_5_6 3) 1 0)))
 (let ((?x6614 (ite (= Per_5_5 3) 1 0)))
 (let ((?x6542 (ite (= Per_5_4 3) 1 0)))
 (let ((?x6470 (ite (= Per_5_3 3) 1 0)))
 (let ((?x6398 (ite (= Per_5_2 3) 1 0)))
 (let ((?x6326 (ite (= Per_5_1 3) 1 0)))
 (let (($x6253 (= Per_5_0 3)))
 (let ((?x6254 (ite $x6253 1 0)))
 (<= (+ ?x6254 ?x6326 ?x6398 ?x6470 ?x6542 ?x6614 ?x6686) 2))))))))))
(assert
 (let ((?x6704 (ite (= Per_5_6 4) 1 0)))
 (let ((?x6632 (ite (= Per_5_5 4) 1 0)))
 (let ((?x6560 (ite (= Per_5_4 4) 1 0)))
 (let ((?x6488 (ite (= Per_5_3 4) 1 0)))
 (let ((?x6416 (ite (= Per_5_2 4) 1 0)))
 (let ((?x6344 (ite (= Per_5_1 4) 1 0)))
 (let ((?x6272 (ite (= Per_5_0 4) 1 0)))
 (<= (+ ?x6272 ?x6344 ?x6416 ?x6488 ?x6560 ?x6632 ?x6704) 2)))))))))
(assert
 (let ((?x6652 (ite (= Per_6_6 1) 1 0)))
 (let ((?x6580 (ite (= Per_6_5 1) 1 0)))
 (let ((?x6508 (ite (= Per_6_4 1) 1 0)))
 (let ((?x6436 (ite (= Per_6_3 1) 1 0)))
 (let ((?x6364 (ite (= Per_6_2 1) 1 0)))
 (let ((?x6292 (ite (= Per_6_1 1) 1 0)))
 (let ((?x6220 (ite (= Per_6_0 1) 1 0)))
 (<= (+ ?x6220 ?x6292 ?x6364 ?x6436 ?x6508 ?x6580 ?x6652) 2)))))))))
(assert
 (let ((?x6670 (ite (= Per_6_6 2) 1 0)))
 (let ((?x6598 (ite (= Per_6_5 2) 1 0)))
 (let ((?x6526 (ite (= Per_6_4 2) 1 0)))
 (let ((?x6454 (ite (= Per_6_3 2) 1 0)))
 (let ((?x6382 (ite (= Per_6_2 2) 1 0)))
 (let ((?x6310 (ite (= Per_6_1 2) 1 0)))
 (let (($x6237 (= Per_6_0 2)))
 (let ((?x6238 (ite $x6237 1 0)))
 (<= (+ ?x6238 ?x6310 ?x6382 ?x6454 ?x6526 ?x6598 ?x6670) 2))))))))))
(assert
 (let ((?x6688 (ite (= Per_6_6 3) 1 0)))
 (let ((?x6616 (ite (= Per_6_5 3) 1 0)))
 (let ((?x6544 (ite (= Per_6_4 3) 1 0)))
 (let ((?x6472 (ite (= Per_6_3 3) 1 0)))
 (let ((?x6400 (ite (= Per_6_2 3) 1 0)))
 (let ((?x6328 (ite (= Per_6_1 3) 1 0)))
 (let ((?x6256 (ite (= Per_6_0 3) 1 0)))
 (<= (+ ?x6256 ?x6328 ?x6400 ?x6472 ?x6544 ?x6616 ?x6688) 2)))))))))
(assert
 (let ((?x6706 (ite (= Per_6_6 4) 1 0)))
 (let ((?x6634 (ite (= Per_6_5 4) 1 0)))
 (let ((?x6562 (ite (= Per_6_4 4) 1 0)))
 (let ((?x6490 (ite (= Per_6_3 4) 1 0)))
 (let ((?x6418 (ite (= Per_6_2 4) 1 0)))
 (let ((?x6346 (ite (= Per_6_1 4) 1 0)))
 (let ((?x6274 (ite (= Per_6_0 4) 1 0)))
 (<= (+ ?x6274 ?x6346 ?x6418 ?x6490 ?x6562 ?x6634 ?x6706) 2)))))))))
(assert
 (let ((?x6654 (ite (= Per_7_6 1) 1 0)))
 (let ((?x6582 (ite (= Per_7_5 1) 1 0)))
 (let ((?x6510 (ite (= Per_7_4 1) 1 0)))
 (let ((?x6438 (ite (= Per_7_3 1) 1 0)))
 (let ((?x6366 (ite (= Per_7_2 1) 1 0)))
 (let ((?x6294 (ite (= Per_7_1 1) 1 0)))
 (let (($x6221 (= Per_7_0 1)))
 (let ((?x6222 (ite $x6221 1 0)))
 (<= (+ ?x6222 ?x6294 ?x6366 ?x6438 ?x6510 ?x6582 ?x6654) 2))))))))))
(assert
 (let ((?x6672 (ite (= Per_7_6 2) 1 0)))
 (let ((?x6600 (ite (= Per_7_5 2) 1 0)))
 (let ((?x6528 (ite (= Per_7_4 2) 1 0)))
 (let ((?x6456 (ite (= Per_7_3 2) 1 0)))
 (let ((?x6384 (ite (= Per_7_2 2) 1 0)))
 (let ((?x6312 (ite (= Per_7_1 2) 1 0)))
 (let ((?x6240 (ite (= Per_7_0 2) 1 0)))
 (<= (+ ?x6240 ?x6312 ?x6384 ?x6456 ?x6528 ?x6600 ?x6672) 2)))))))))
(assert
 (let ((?x6690 (ite (= Per_7_6 3) 1 0)))
 (let ((?x6618 (ite (= Per_7_5 3) 1 0)))
 (let ((?x6546 (ite (= Per_7_4 3) 1 0)))
 (let ((?x6474 (ite (= Per_7_3 3) 1 0)))
 (let ((?x6402 (ite (= Per_7_2 3) 1 0)))
 (let ((?x6330 (ite (= Per_7_1 3) 1 0)))
 (let ((?x6258 (ite (= Per_7_0 3) 1 0)))
 (<= (+ ?x6258 ?x6330 ?x6402 ?x6474 ?x6546 ?x6618 ?x6690) 2)))))))))
(assert
 (let ((?x6708 (ite (= Per_7_6 4) 1 0)))
 (let ((?x6636 (ite (= Per_7_5 4) 1 0)))
 (let ((?x6564 (ite (= Per_7_4 4) 1 0)))
 (let ((?x6492 (ite (= Per_7_3 4) 1 0)))
 (let ((?x6420 (ite (= Per_7_2 4) 1 0)))
 (let ((?x6348 (ite (= Per_7_1 4) 1 0)))
 (let ((?x6276 (ite (= Per_7_0 4) 1 0)))
 (<= (+ ?x6276 ?x6348 ?x6420 ?x6492 ?x6564 ?x6636 ?x6708) 2)))))))))
(assert
 (let ((?x6781 (ite Home_0_6 1 0)))
 (let ((?x6780 (ite Home_0_5 1 0)))
 (let ((?x6779 (ite Home_0_4 1 0)))
 (let ((?x6778 (ite Home_0_3 1 0)))
 (let ((?x6777 (ite Home_0_2 1 0)))
 (let ((?x6776 (ite Home_0_1 1 0)))
 (let ((?x6775 (ite Home_0_0 1 0)))
 (let ((?x6782 (+ ?x6775 ?x6776 ?x6777 ?x6778 ?x6779 ?x6780 ?x6781)))
 (= ?x6782 (+ 3 (ite High_0 1 0))))))))))))
(assert
 (let ((?x6789 (ite Home_1_6 1 0)))
 (let ((?x6788 (ite Home_1_5 1 0)))
 (let ((?x6787 (ite Home_1_4 1 0)))
 (let ((?x6786 (ite Home_1_3 1 0)))
 (let ((?x6785 (ite Home_1_2 1 0)))
 (let ((?x6784 (ite Home_1_1 1 0)))
 (let ((?x6783 (ite Home_1_0 1 0)))
 (let ((?x6790 (+ ?x6783 ?x6784 ?x6785 ?x6786 ?x6787 ?x6788 ?x6789)))
 (= ?x6790 (+ 3 (ite High_1 1 0))))))))))))
(assert
 (let ((?x6797 (ite Home_2_6 1 0)))
 (let ((?x6796 (ite Home_2_5 1 0)))
 (let ((?x6795 (ite Home_2_4 1 0)))
 (let ((?x6794 (ite Home_2_3 1 0)))
 (let ((?x6793 (ite Home_2_2 1 0)))
 (let ((?x6792 (ite Home_2_1 1 0)))
 (let ((?x6791 (ite Home_2_0 1 0)))
 (let ((?x6798 (+ ?x6791 ?x6792 ?x6793 ?x6794 ?x6795 ?x6796 ?x6797)))
 (= ?x6798 (+ 3 (ite High_2 1 0))))))))))))
(assert
 (let ((?x6805 (ite Home_3_6 1 0)))
 (let ((?x6804 (ite Home_3_5 1 0)))
 (let ((?x6803 (ite Home_3_4 1 0)))
 (let ((?x6802 (ite Home_3_3 1 0)))
 (let ((?x6801 (ite Home_3_2 1 0)))
 (let ((?x6800 (ite Home_3_1 1 0)))
 (let ((?x6799 (ite Home_3_0 1 0)))
 (let ((?x6806 (+ ?x6799 ?x6800 ?x6801 ?x6802 ?x6803 ?x6804 ?x6805)))
 (= ?x6806 (+ 3 (ite High_3 1 0))))))))))))
(assert
 (let ((?x6813 (ite Home_4_6 1 0)))
 (let ((?x6812 (ite Home_4_5 1 0)))
 (let ((?x6811 (ite Home_4_4 1 0)))
 (let ((?x6810 (ite Home_4_3 1 0)))
 (let ((?x6809 (ite Home_4_2 1 0)))
 (let ((?x6808 (ite Home_4_1 1 0)))
 (let ((?x6807 (ite Home_4_0 1 0)))
 (let ((?x6814 (+ ?x6807 ?x6808 ?x6809 ?x6810 ?x6811 ?x6812 ?x6813)))
 (= ?x6814 (+ 3 (ite High_4 1 0))))))))))))
(assert
 (let ((?x6821 (ite Home_5_6 1 0)))
 (let ((?x6820 (ite Home_5_5 1 0)))
 (let ((?x6819 (ite Home_5_4 1 0)))
 (let ((?x6818 (ite Home_5_3 1 0)))
 (let ((?x6817 (ite Home_5_2 1 0)))
 (let ((?x6816 (ite Home_5_1 1 0)))
 (let ((?x6815 (ite Home_5_0 1 0)))
 (let ((?x6822 (+ ?x6815 ?x6816 ?x6817 ?x6818 ?x6819 ?x6820 ?x6821)))
 (= ?x6822 (+ 3 (ite High_5 1 0))))))))))))
(assert
 (let ((?x6829 (ite Home_6_6 1 0)))
 (let ((?x6828 (ite Home_6_5 1 0)))
 (let ((?x6827 (ite Home_6_4 1 0)))
 (let ((?x6826 (ite Home_6_3 1 0)))
 (let ((?x6825 (ite Home_6_2 1 0)))
 (let ((?x6824 (ite Home_6_1 1 0)))
 (let ((?x6823 (ite Home_6_0 1 0)))
 (let ((?x6830 (+ ?x6823 ?x6824 ?x6825 ?x6826 ?x6827 ?x6828 ?x6829)))
 (= ?x6830 (+ 3 (ite High_6 1 0))))))))))))
(assert
 (let ((?x6837 (ite Home_7_6 1 0)))
 (let ((?x6836 (ite Home_7_5 1 0)))
 (let ((?x6835 (ite Home_7_4 1 0)))
 (let ((?x6834 (ite Home_7_3 1 0)))
 (let ((?x6833 (ite Home_7_2 1 0)))
 (let ((?x6832 (ite Home_7_1 1 0)))
 (let ((?x6831 (ite Home_7_0 1 0)))
 (let ((?x6838 (+ ?x6831 ?x6832 ?x6833 ?x6834 ?x6835 ?x6836 ?x6837)))
 (= ?x6838 (+ 3 (ite High_7 1 0))))))))))))
(assert
 (let ((?x6882 (ite High_7 1 0)))
 (let ((?x6876 (ite High_6 1 0)))
 (let ((?x6870 (ite High_5 1 0)))
 (let ((?x6864 (ite High_4 1 0)))
 (let ((?x6858 (ite High_3 1 0)))
 (let ((?x6852 (ite High_2 1 0)))
 (let ((?x6846 (ite High_1 1 0)))
 (let ((?x6839 (ite High_0 1 0)))
 (= (+ ?x6839 ?x6846 ?x6852 ?x6858 ?x6864 ?x6870 ?x6876 ?x6882) 4))))))))))
(assert
 (= Home_0_0 true))
(assert
 (= Per_0_0 1))
(assert
 (= Per_7_0 1))
(assert
 (= Per_1_0 2))
(assert
 (= Per_6_0 2))
(assert
 (= Per_2_0 3))
(assert
 (= Per_5_0 3))
(assert
 (= Per_3_0 4))
(assert
 (= Per_4_0 4))
(assert
 (> Opp_0_0 Opp_0_1))
(assert
 (> Opp_0_1 Opp_0_2))
(assert
 (> Opp_0_2 Opp_0_3))
(assert
 (> Opp_0_3 Opp_0_4))
(assert
 (> Opp_0_4 Opp_0_5))
(assert
 (> Opp_0_5 Opp_0_6))
(check-sat)
(get-model)
