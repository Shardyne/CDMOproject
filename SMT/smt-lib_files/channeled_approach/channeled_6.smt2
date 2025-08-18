(set-logic QF_LIA)
(set-option :produce-models true)
(declare-fun Per_0_0 () Int)
(declare-fun Home_0_0 () Int)
(declare-fun Opp_0_0 () Int)
(declare-fun Per_0_1 () Int)
(declare-fun Home_0_1 () Int)
(declare-fun Opp_0_1 () Int)
(declare-fun Per_0_2 () Int)
(declare-fun Home_0_2 () Int)
(declare-fun Opp_0_2 () Int)
(declare-fun Per_0_3 () Int)
(declare-fun Home_0_3 () Int)
(declare-fun Opp_0_3 () Int)
(declare-fun Per_0_4 () Int)
(declare-fun Home_0_4 () Int)
(declare-fun Opp_0_4 () Int)
(declare-fun Per_1_0 () Int)
(declare-fun Home_1_0 () Int)
(declare-fun Opp_1_0 () Int)
(declare-fun Per_1_1 () Int)
(declare-fun Home_1_1 () Int)
(declare-fun Opp_1_1 () Int)
(declare-fun Per_1_2 () Int)
(declare-fun Home_1_2 () Int)
(declare-fun Opp_1_2 () Int)
(declare-fun Per_1_3 () Int)
(declare-fun Home_1_3 () Int)
(declare-fun Opp_1_3 () Int)
(declare-fun Per_1_4 () Int)
(declare-fun Home_1_4 () Int)
(declare-fun Opp_1_4 () Int)
(declare-fun Per_2_0 () Int)
(declare-fun Home_2_0 () Int)
(declare-fun Opp_2_0 () Int)
(declare-fun Per_2_1 () Int)
(declare-fun Home_2_1 () Int)
(declare-fun Opp_2_1 () Int)
(declare-fun Per_2_2 () Int)
(declare-fun Home_2_2 () Int)
(declare-fun Opp_2_2 () Int)
(declare-fun Per_2_3 () Int)
(declare-fun Home_2_3 () Int)
(declare-fun Opp_2_3 () Int)
(declare-fun Per_2_4 () Int)
(declare-fun Home_2_4 () Int)
(declare-fun Opp_2_4 () Int)
(declare-fun Per_3_0 () Int)
(declare-fun Home_3_0 () Int)
(declare-fun Opp_3_0 () Int)
(declare-fun Per_3_1 () Int)
(declare-fun Home_3_1 () Int)
(declare-fun Opp_3_1 () Int)
(declare-fun Per_3_2 () Int)
(declare-fun Home_3_2 () Int)
(declare-fun Opp_3_2 () Int)
(declare-fun Per_3_3 () Int)
(declare-fun Home_3_3 () Int)
(declare-fun Opp_3_3 () Int)
(declare-fun Per_3_4 () Int)
(declare-fun Home_3_4 () Int)
(declare-fun Opp_3_4 () Int)
(declare-fun Per_4_0 () Int)
(declare-fun Home_4_0 () Int)
(declare-fun Opp_4_0 () Int)
(declare-fun Per_4_1 () Int)
(declare-fun Home_4_1 () Int)
(declare-fun Opp_4_1 () Int)
(declare-fun Per_4_2 () Int)
(declare-fun Home_4_2 () Int)
(declare-fun Opp_4_2 () Int)
(declare-fun Per_4_3 () Int)
(declare-fun Home_4_3 () Int)
(declare-fun Opp_4_3 () Int)
(declare-fun Per_4_4 () Int)
(declare-fun Home_4_4 () Int)
(declare-fun Opp_4_4 () Int)
(declare-fun Per_5_0 () Int)
(declare-fun Home_5_0 () Int)
(declare-fun Opp_5_0 () Int)
(declare-fun Per_5_1 () Int)
(declare-fun Home_5_1 () Int)
(declare-fun Opp_5_1 () Int)
(declare-fun Per_5_2 () Int)
(declare-fun Home_5_2 () Int)
(declare-fun Opp_5_2 () Int)
(declare-fun Per_5_3 () Int)
(declare-fun Home_5_3 () Int)
(declare-fun Opp_5_3 () Int)
(declare-fun Per_5_4 () Int)
(declare-fun Home_5_4 () Int)
(declare-fun Opp_5_4 () Int)
(declare-fun High_0 () Bool)
(declare-fun High_1 () Bool)
(declare-fun High_2 () Bool)
(declare-fun High_3 () Bool)
(declare-fun High_4 () Bool)
(declare-fun High_5 () Bool)
(assert
 (let (($x98 (<= Per_0_0 3)))
 (let (($x96 (>= Per_0_0 1)))
 (and $x96 $x98))))
(assert
 (let (($x119 (= Home_0_0 1)))
 (or (= Home_0_0 0) $x119)))
(assert
 (let (($x123 (<= Opp_0_0 6)))
 (let (($x121 (>= Opp_0_0 1)))
 (and $x121 $x123))))
(assert
 (and (distinct Opp_0_0 1) true))
(assert
 (let (($x129 (<= Per_0_1 3)))
 (let (($x128 (>= Per_0_1 1)))
 (and $x128 $x129))))
(assert
 (or (= Home_0_1 0) (= Home_0_1 1)))
(assert
 (let (($x135 (<= Opp_0_1 6)))
 (let (($x134 (>= Opp_0_1 1)))
 (and $x134 $x135))))
(assert
 (and (distinct Opp_0_1 1) true))
(assert
 (let (($x141 (<= Per_0_2 3)))
 (let (($x140 (>= Per_0_2 1)))
 (and $x140 $x141))))
(assert
 (or (= Home_0_2 0) (= Home_0_2 1)))
(assert
 (let (($x147 (<= Opp_0_2 6)))
 (let (($x146 (>= Opp_0_2 1)))
 (and $x146 $x147))))
(assert
 (and (distinct Opp_0_2 1) true))
(assert
 (let (($x153 (<= Per_0_3 3)))
 (let (($x152 (>= Per_0_3 1)))
 (and $x152 $x153))))
(assert
 (or (= Home_0_3 0) (= Home_0_3 1)))
(assert
 (let (($x159 (<= Opp_0_3 6)))
 (let (($x158 (>= Opp_0_3 1)))
 (and $x158 $x159))))
(assert
 (and (distinct Opp_0_3 1) true))
(assert
 (let (($x165 (<= Per_0_4 3)))
 (let (($x164 (>= Per_0_4 1)))
 (and $x164 $x165))))
(assert
 (or (= Home_0_4 0) (= Home_0_4 1)))
(assert
 (let (($x171 (<= Opp_0_4 6)))
 (let (($x170 (>= Opp_0_4 1)))
 (and $x170 $x171))))
(assert
 (and (distinct Opp_0_4 1) true))
(assert
 (let (($x177 (<= Per_1_0 3)))
 (let (($x176 (>= Per_1_0 1)))
 (and $x176 $x177))))
(assert
 (or (= Home_1_0 0) (= Home_1_0 1)))
(assert
 (let (($x183 (<= Opp_1_0 6)))
 (let (($x182 (>= Opp_1_0 1)))
 (and $x182 $x183))))
(assert
 (and (distinct Opp_1_0 2) true))
(assert
 (let (($x190 (<= Per_1_1 3)))
 (let (($x189 (>= Per_1_1 1)))
 (and $x189 $x190))))
(assert
 (or (= Home_1_1 0) (= Home_1_1 1)))
(assert
 (let (($x196 (<= Opp_1_1 6)))
 (let (($x195 (>= Opp_1_1 1)))
 (and $x195 $x196))))
(assert
 (and (distinct Opp_1_1 2) true))
(assert
 (let (($x202 (<= Per_1_2 3)))
 (let (($x201 (>= Per_1_2 1)))
 (and $x201 $x202))))
(assert
 (or (= Home_1_2 0) (= Home_1_2 1)))
(assert
 (let (($x208 (<= Opp_1_2 6)))
 (let (($x207 (>= Opp_1_2 1)))
 (and $x207 $x208))))
(assert
 (and (distinct Opp_1_2 2) true))
(assert
 (let (($x214 (<= Per_1_3 3)))
 (let (($x213 (>= Per_1_3 1)))
 (and $x213 $x214))))
(assert
 (or (= Home_1_3 0) (= Home_1_3 1)))
(assert
 (let (($x220 (<= Opp_1_3 6)))
 (let (($x219 (>= Opp_1_3 1)))
 (and $x219 $x220))))
(assert
 (and (distinct Opp_1_3 2) true))
(assert
 (let (($x226 (<= Per_1_4 3)))
 (let (($x225 (>= Per_1_4 1)))
 (and $x225 $x226))))
(assert
 (or (= Home_1_4 0) (= Home_1_4 1)))
(assert
 (let (($x232 (<= Opp_1_4 6)))
 (let (($x231 (>= Opp_1_4 1)))
 (and $x231 $x232))))
(assert
 (and (distinct Opp_1_4 2) true))
(assert
 (let (($x238 (<= Per_2_0 3)))
 (let (($x237 (>= Per_2_0 1)))
 (and $x237 $x238))))
(assert
 (or (= Home_2_0 0) (= Home_2_0 1)))
(assert
 (let (($x244 (<= Opp_2_0 6)))
 (let (($x243 (>= Opp_2_0 1)))
 (and $x243 $x244))))
(assert
 (and (distinct Opp_2_0 3) true))
(assert
 (let (($x250 (<= Per_2_1 3)))
 (let (($x249 (>= Per_2_1 1)))
 (and $x249 $x250))))
(assert
 (or (= Home_2_1 0) (= Home_2_1 1)))
(assert
 (let (($x256 (<= Opp_2_1 6)))
 (let (($x255 (>= Opp_2_1 1)))
 (and $x255 $x256))))
(assert
 (and (distinct Opp_2_1 3) true))
(assert
 (let (($x262 (<= Per_2_2 3)))
 (let (($x261 (>= Per_2_2 1)))
 (and $x261 $x262))))
(assert
 (or (= Home_2_2 0) (= Home_2_2 1)))
(assert
 (let (($x268 (<= Opp_2_2 6)))
 (let (($x267 (>= Opp_2_2 1)))
 (and $x267 $x268))))
(assert
 (and (distinct Opp_2_2 3) true))
(assert
 (let (($x274 (<= Per_2_3 3)))
 (let (($x273 (>= Per_2_3 1)))
 (and $x273 $x274))))
(assert
 (or (= Home_2_3 0) (= Home_2_3 1)))
(assert
 (let (($x280 (<= Opp_2_3 6)))
 (let (($x279 (>= Opp_2_3 1)))
 (and $x279 $x280))))
(assert
 (and (distinct Opp_2_3 3) true))
(assert
 (let (($x286 (<= Per_2_4 3)))
 (let (($x285 (>= Per_2_4 1)))
 (and $x285 $x286))))
(assert
 (or (= Home_2_4 0) (= Home_2_4 1)))
(assert
 (let (($x292 (<= Opp_2_4 6)))
 (let (($x291 (>= Opp_2_4 1)))
 (and $x291 $x292))))
(assert
 (and (distinct Opp_2_4 3) true))
(assert
 (let (($x298 (<= Per_3_0 3)))
 (let (($x297 (>= Per_3_0 1)))
 (and $x297 $x298))))
(assert
 (or (= Home_3_0 0) (= Home_3_0 1)))
(assert
 (let (($x304 (<= Opp_3_0 6)))
 (let (($x303 (>= Opp_3_0 1)))
 (and $x303 $x304))))
(assert
 (and (distinct Opp_3_0 4) true))
(assert
 (let (($x311 (<= Per_3_1 3)))
 (let (($x310 (>= Per_3_1 1)))
 (and $x310 $x311))))
(assert
 (or (= Home_3_1 0) (= Home_3_1 1)))
(assert
 (let (($x317 (<= Opp_3_1 6)))
 (let (($x316 (>= Opp_3_1 1)))
 (and $x316 $x317))))
(assert
 (and (distinct Opp_3_1 4) true))
(assert
 (let (($x323 (<= Per_3_2 3)))
 (let (($x322 (>= Per_3_2 1)))
 (and $x322 $x323))))
(assert
 (or (= Home_3_2 0) (= Home_3_2 1)))
(assert
 (let (($x329 (<= Opp_3_2 6)))
 (let (($x328 (>= Opp_3_2 1)))
 (and $x328 $x329))))
(assert
 (and (distinct Opp_3_2 4) true))
(assert
 (let (($x335 (<= Per_3_3 3)))
 (let (($x334 (>= Per_3_3 1)))
 (and $x334 $x335))))
(assert
 (or (= Home_3_3 0) (= Home_3_3 1)))
(assert
 (let (($x341 (<= Opp_3_3 6)))
 (let (($x340 (>= Opp_3_3 1)))
 (and $x340 $x341))))
(assert
 (and (distinct Opp_3_3 4) true))
(assert
 (let (($x347 (<= Per_3_4 3)))
 (let (($x346 (>= Per_3_4 1)))
 (and $x346 $x347))))
(assert
 (or (= Home_3_4 0) (= Home_3_4 1)))
(assert
 (let (($x353 (<= Opp_3_4 6)))
 (let (($x352 (>= Opp_3_4 1)))
 (and $x352 $x353))))
(assert
 (and (distinct Opp_3_4 4) true))
(assert
 (let (($x359 (<= Per_4_0 3)))
 (let (($x358 (>= Per_4_0 1)))
 (and $x358 $x359))))
(assert
 (or (= Home_4_0 0) (= Home_4_0 1)))
(assert
 (let (($x365 (<= Opp_4_0 6)))
 (let (($x364 (>= Opp_4_0 1)))
 (and $x364 $x365))))
(assert
 (and (distinct Opp_4_0 5) true))
(assert
 (let (($x372 (<= Per_4_1 3)))
 (let (($x371 (>= Per_4_1 1)))
 (and $x371 $x372))))
(assert
 (or (= Home_4_1 0) (= Home_4_1 1)))
(assert
 (let (($x378 (<= Opp_4_1 6)))
 (let (($x377 (>= Opp_4_1 1)))
 (and $x377 $x378))))
(assert
 (and (distinct Opp_4_1 5) true))
(assert
 (let (($x384 (<= Per_4_2 3)))
 (let (($x383 (>= Per_4_2 1)))
 (and $x383 $x384))))
(assert
 (or (= Home_4_2 0) (= Home_4_2 1)))
(assert
 (let (($x390 (<= Opp_4_2 6)))
 (let (($x389 (>= Opp_4_2 1)))
 (and $x389 $x390))))
(assert
 (and (distinct Opp_4_2 5) true))
(assert
 (let (($x396 (<= Per_4_3 3)))
 (let (($x395 (>= Per_4_3 1)))
 (and $x395 $x396))))
(assert
 (or (= Home_4_3 0) (= Home_4_3 1)))
(assert
 (let (($x402 (<= Opp_4_3 6)))
 (let (($x401 (>= Opp_4_3 1)))
 (and $x401 $x402))))
(assert
 (and (distinct Opp_4_3 5) true))
(assert
 (let (($x408 (<= Per_4_4 3)))
 (let (($x407 (>= Per_4_4 1)))
 (and $x407 $x408))))
(assert
 (or (= Home_4_4 0) (= Home_4_4 1)))
(assert
 (let (($x414 (<= Opp_4_4 6)))
 (let (($x413 (>= Opp_4_4 1)))
 (and $x413 $x414))))
(assert
 (and (distinct Opp_4_4 5) true))
(assert
 (let (($x420 (<= Per_5_0 3)))
 (let (($x419 (>= Per_5_0 1)))
 (and $x419 $x420))))
(assert
 (or (= Home_5_0 0) (= Home_5_0 1)))
(assert
 (let (($x426 (<= Opp_5_0 6)))
 (let (($x425 (>= Opp_5_0 1)))
 (and $x425 $x426))))
(assert
 (and (distinct Opp_5_0 6) true))
(assert
 (let (($x432 (<= Per_5_1 3)))
 (let (($x431 (>= Per_5_1 1)))
 (and $x431 $x432))))
(assert
 (or (= Home_5_1 0) (= Home_5_1 1)))
(assert
 (let (($x438 (<= Opp_5_1 6)))
 (let (($x437 (>= Opp_5_1 1)))
 (and $x437 $x438))))
(assert
 (and (distinct Opp_5_1 6) true))
(assert
 (let (($x444 (<= Per_5_2 3)))
 (let (($x443 (>= Per_5_2 1)))
 (and $x443 $x444))))
(assert
 (or (= Home_5_2 0) (= Home_5_2 1)))
(assert
 (let (($x450 (<= Opp_5_2 6)))
 (let (($x449 (>= Opp_5_2 1)))
 (and $x449 $x450))))
(assert
 (and (distinct Opp_5_2 6) true))
(assert
 (let (($x456 (<= Per_5_3 3)))
 (let (($x455 (>= Per_5_3 1)))
 (and $x455 $x456))))
(assert
 (or (= Home_5_3 0) (= Home_5_3 1)))
(assert
 (let (($x462 (<= Opp_5_3 6)))
 (let (($x461 (>= Opp_5_3 1)))
 (and $x461 $x462))))
(assert
 (and (distinct Opp_5_3 6) true))
(assert
 (let (($x468 (<= Per_5_4 3)))
 (let (($x467 (>= Per_5_4 1)))
 (and $x467 $x468))))
(assert
 (or (= Home_5_4 0) (= Home_5_4 1)))
(assert
 (let (($x474 (<= Opp_5_4 6)))
 (let (($x473 (>= Opp_5_4 1)))
 (and $x473 $x474))))
(assert
 (and (distinct Opp_5_4 6) true))
(assert
 (let (($x483 (= Opp_0_0 6)))
 (let (($x482 (= Opp_0_0 5)))
 (let (($x481 (= Opp_0_0 4)))
 (let (($x480 (= Opp_0_0 3)))
 (let (($x479 (= Opp_0_0 2)))
 (or $x479 $x480 $x481 $x482 $x483)))))))
(assert
 (let (($x489 (= Opp_0_1 6)))
 (let (($x488 (= Opp_0_1 5)))
 (let (($x487 (= Opp_0_1 4)))
 (let (($x486 (= Opp_0_1 3)))
 (let (($x485 (= Opp_0_1 2)))
 (or $x485 $x486 $x487 $x488 $x489)))))))
(assert
 (let (($x495 (= Opp_0_2 6)))
 (let (($x494 (= Opp_0_2 5)))
 (let (($x493 (= Opp_0_2 4)))
 (let (($x492 (= Opp_0_2 3)))
 (let (($x491 (= Opp_0_2 2)))
 (or $x491 $x492 $x493 $x494 $x495)))))))
(assert
 (let (($x501 (= Opp_0_3 6)))
 (let (($x500 (= Opp_0_3 5)))
 (let (($x499 (= Opp_0_3 4)))
 (let (($x498 (= Opp_0_3 3)))
 (let (($x497 (= Opp_0_3 2)))
 (or $x497 $x498 $x499 $x500 $x501)))))))
(assert
 (let (($x507 (= Opp_0_4 6)))
 (let (($x506 (= Opp_0_4 5)))
 (let (($x505 (= Opp_0_4 4)))
 (let (($x504 (= Opp_0_4 3)))
 (let (($x503 (= Opp_0_4 2)))
 (or $x503 $x504 $x505 $x506 $x507)))))))
(assert
 (let (($x513 (= Opp_1_0 6)))
 (let (($x512 (= Opp_1_0 5)))
 (let (($x511 (= Opp_1_0 4)))
 (let (($x510 (= Opp_1_0 3)))
 (let (($x509 (= Opp_1_0 1)))
 (or $x509 $x510 $x511 $x512 $x513)))))))
(assert
 (let (($x519 (= Opp_1_1 6)))
 (let (($x518 (= Opp_1_1 5)))
 (let (($x517 (= Opp_1_1 4)))
 (let (($x516 (= Opp_1_1 3)))
 (let (($x515 (= Opp_1_1 1)))
 (or $x515 $x516 $x517 $x518 $x519)))))))
(assert
 (let (($x525 (= Opp_1_2 6)))
 (let (($x524 (= Opp_1_2 5)))
 (let (($x523 (= Opp_1_2 4)))
 (let (($x522 (= Opp_1_2 3)))
 (let (($x521 (= Opp_1_2 1)))
 (or $x521 $x522 $x523 $x524 $x525)))))))
(assert
 (let (($x531 (= Opp_1_3 6)))
 (let (($x530 (= Opp_1_3 5)))
 (let (($x529 (= Opp_1_3 4)))
 (let (($x528 (= Opp_1_3 3)))
 (let (($x527 (= Opp_1_3 1)))
 (or $x527 $x528 $x529 $x530 $x531)))))))
(assert
 (let (($x537 (= Opp_1_4 6)))
 (let (($x536 (= Opp_1_4 5)))
 (let (($x535 (= Opp_1_4 4)))
 (let (($x534 (= Opp_1_4 3)))
 (let (($x533 (= Opp_1_4 1)))
 (or $x533 $x534 $x535 $x536 $x537)))))))
(assert
 (let (($x543 (= Opp_2_0 6)))
 (let (($x542 (= Opp_2_0 5)))
 (let (($x541 (= Opp_2_0 4)))
 (let (($x540 (= Opp_2_0 2)))
 (let (($x539 (= Opp_2_0 1)))
 (or $x539 $x540 $x541 $x542 $x543)))))))
(assert
 (let (($x549 (= Opp_2_1 6)))
 (let (($x548 (= Opp_2_1 5)))
 (let (($x547 (= Opp_2_1 4)))
 (let (($x546 (= Opp_2_1 2)))
 (let (($x545 (= Opp_2_1 1)))
 (or $x545 $x546 $x547 $x548 $x549)))))))
(assert
 (let (($x555 (= Opp_2_2 6)))
 (let (($x554 (= Opp_2_2 5)))
 (let (($x553 (= Opp_2_2 4)))
 (let (($x552 (= Opp_2_2 2)))
 (let (($x551 (= Opp_2_2 1)))
 (or $x551 $x552 $x553 $x554 $x555)))))))
(assert
 (let (($x561 (= Opp_2_3 6)))
 (let (($x560 (= Opp_2_3 5)))
 (let (($x559 (= Opp_2_3 4)))
 (let (($x558 (= Opp_2_3 2)))
 (let (($x557 (= Opp_2_3 1)))
 (or $x557 $x558 $x559 $x560 $x561)))))))
(assert
 (let (($x567 (= Opp_2_4 6)))
 (let (($x566 (= Opp_2_4 5)))
 (let (($x565 (= Opp_2_4 4)))
 (let (($x564 (= Opp_2_4 2)))
 (let (($x563 (= Opp_2_4 1)))
 (or $x563 $x564 $x565 $x566 $x567)))))))
(assert
 (let (($x573 (= Opp_3_0 6)))
 (let (($x572 (= Opp_3_0 5)))
 (let (($x571 (= Opp_3_0 3)))
 (let (($x570 (= Opp_3_0 2)))
 (let (($x569 (= Opp_3_0 1)))
 (or $x569 $x570 $x571 $x572 $x573)))))))
(assert
 (let (($x579 (= Opp_3_1 6)))
 (let (($x578 (= Opp_3_1 5)))
 (let (($x577 (= Opp_3_1 3)))
 (let (($x576 (= Opp_3_1 2)))
 (let (($x575 (= Opp_3_1 1)))
 (or $x575 $x576 $x577 $x578 $x579)))))))
(assert
 (let (($x585 (= Opp_3_2 6)))
 (let (($x584 (= Opp_3_2 5)))
 (let (($x583 (= Opp_3_2 3)))
 (let (($x582 (= Opp_3_2 2)))
 (let (($x581 (= Opp_3_2 1)))
 (or $x581 $x582 $x583 $x584 $x585)))))))
(assert
 (let (($x591 (= Opp_3_3 6)))
 (let (($x590 (= Opp_3_3 5)))
 (let (($x589 (= Opp_3_3 3)))
 (let (($x588 (= Opp_3_3 2)))
 (let (($x587 (= Opp_3_3 1)))
 (or $x587 $x588 $x589 $x590 $x591)))))))
(assert
 (let (($x597 (= Opp_3_4 6)))
 (let (($x596 (= Opp_3_4 5)))
 (let (($x595 (= Opp_3_4 3)))
 (let (($x594 (= Opp_3_4 2)))
 (let (($x593 (= Opp_3_4 1)))
 (or $x593 $x594 $x595 $x596 $x597)))))))
(assert
 (let (($x603 (= Opp_4_0 6)))
 (let (($x602 (= Opp_4_0 4)))
 (let (($x601 (= Opp_4_0 3)))
 (let (($x600 (= Opp_4_0 2)))
 (let (($x599 (= Opp_4_0 1)))
 (or $x599 $x600 $x601 $x602 $x603)))))))
(assert
 (let (($x609 (= Opp_4_1 6)))
 (let (($x608 (= Opp_4_1 4)))
 (let (($x607 (= Opp_4_1 3)))
 (let (($x606 (= Opp_4_1 2)))
 (let (($x605 (= Opp_4_1 1)))
 (or $x605 $x606 $x607 $x608 $x609)))))))
(assert
 (let (($x615 (= Opp_4_2 6)))
 (let (($x614 (= Opp_4_2 4)))
 (let (($x613 (= Opp_4_2 3)))
 (let (($x612 (= Opp_4_2 2)))
 (let (($x611 (= Opp_4_2 1)))
 (or $x611 $x612 $x613 $x614 $x615)))))))
(assert
 (let (($x621 (= Opp_4_3 6)))
 (let (($x620 (= Opp_4_3 4)))
 (let (($x619 (= Opp_4_3 3)))
 (let (($x618 (= Opp_4_3 2)))
 (let (($x617 (= Opp_4_3 1)))
 (or $x617 $x618 $x619 $x620 $x621)))))))
(assert
 (let (($x627 (= Opp_4_4 6)))
 (let (($x626 (= Opp_4_4 4)))
 (let (($x625 (= Opp_4_4 3)))
 (let (($x624 (= Opp_4_4 2)))
 (let (($x623 (= Opp_4_4 1)))
 (or $x623 $x624 $x625 $x626 $x627)))))))
(assert
 (let (($x633 (= Opp_5_0 5)))
 (let (($x632 (= Opp_5_0 4)))
 (let (($x631 (= Opp_5_0 3)))
 (let (($x630 (= Opp_5_0 2)))
 (let (($x629 (= Opp_5_0 1)))
 (or $x629 $x630 $x631 $x632 $x633)))))))
(assert
 (let (($x639 (= Opp_5_1 5)))
 (let (($x638 (= Opp_5_1 4)))
 (let (($x637 (= Opp_5_1 3)))
 (let (($x636 (= Opp_5_1 2)))
 (let (($x635 (= Opp_5_1 1)))
 (or $x635 $x636 $x637 $x638 $x639)))))))
(assert
 (let (($x645 (= Opp_5_2 5)))
 (let (($x644 (= Opp_5_2 4)))
 (let (($x643 (= Opp_5_2 3)))
 (let (($x642 (= Opp_5_2 2)))
 (let (($x641 (= Opp_5_2 1)))
 (or $x641 $x642 $x643 $x644 $x645)))))))
(assert
 (let (($x651 (= Opp_5_3 5)))
 (let (($x650 (= Opp_5_3 4)))
 (let (($x649 (= Opp_5_3 3)))
 (let (($x648 (= Opp_5_3 2)))
 (let (($x647 (= Opp_5_3 1)))
 (or $x647 $x648 $x649 $x650 $x651)))))))
(assert
 (let (($x657 (= Opp_5_4 5)))
 (let (($x656 (= Opp_5_4 4)))
 (let (($x655 (= Opp_5_4 3)))
 (let (($x654 (= Opp_5_4 2)))
 (let (($x653 (= Opp_5_4 1)))
 (or $x653 $x654 $x655 $x656 $x657)))))))
(assert
 (let (($x479 (= Opp_0_0 2)))
 (= $x479 (and (= Per_0_0 Per_1_0) (= Opp_1_0 1)))))
(assert
 (let (($x663 (= (+ Home_0_0 Home_1_0) 1)))
 (let (($x479 (= Opp_0_0 2)))
 (=> $x479 $x663))))
(assert
 (let (($x485 (= Opp_0_1 2)))
 (= $x485 (and (= Per_0_1 Per_1_1) (= Opp_1_1 1)))))
(assert
 (let (($x671 (= (+ Home_0_1 Home_1_1) 1)))
 (let (($x485 (= Opp_0_1 2)))
 (=> $x485 $x671))))
(assert
 (let (($x491 (= Opp_0_2 2)))
 (= $x491 (and (= Per_0_2 Per_1_2) (= Opp_1_2 1)))))
(assert
 (let (($x679 (= (+ Home_0_2 Home_1_2) 1)))
 (let (($x491 (= Opp_0_2 2)))
 (=> $x491 $x679))))
(assert
 (let (($x497 (= Opp_0_3 2)))
 (= $x497 (and (= Per_0_3 Per_1_3) (= Opp_1_3 1)))))
(assert
 (let (($x687 (= (+ Home_0_3 Home_1_3) 1)))
 (let (($x497 (= Opp_0_3 2)))
 (=> $x497 $x687))))
(assert
 (let (($x503 (= Opp_0_4 2)))
 (= $x503 (and (= Per_0_4 Per_1_4) (= Opp_1_4 1)))))
(assert
 (let (($x695 (= (+ Home_0_4 Home_1_4) 1)))
 (let (($x503 (= Opp_0_4 2)))
 (=> $x503 $x695))))
(assert
 (let (($x480 (= Opp_0_0 3)))
 (= $x480 (and (= Per_0_0 Per_2_0) (= Opp_2_0 1)))))
(assert
 (let (($x703 (= (+ Home_0_0 Home_2_0) 1)))
 (let (($x480 (= Opp_0_0 3)))
 (=> $x480 $x703))))
(assert
 (let (($x486 (= Opp_0_1 3)))
 (= $x486 (and (= Per_0_1 Per_2_1) (= Opp_2_1 1)))))
(assert
 (let (($x711 (= (+ Home_0_1 Home_2_1) 1)))
 (let (($x486 (= Opp_0_1 3)))
 (=> $x486 $x711))))
(assert
 (let (($x492 (= Opp_0_2 3)))
 (= $x492 (and (= Per_0_2 Per_2_2) (= Opp_2_2 1)))))
(assert
 (let (($x719 (= (+ Home_0_2 Home_2_2) 1)))
 (let (($x492 (= Opp_0_2 3)))
 (=> $x492 $x719))))
(assert
 (let (($x498 (= Opp_0_3 3)))
 (= $x498 (and (= Per_0_3 Per_2_3) (= Opp_2_3 1)))))
(assert
 (let (($x727 (= (+ Home_0_3 Home_2_3) 1)))
 (let (($x498 (= Opp_0_3 3)))
 (=> $x498 $x727))))
(assert
 (let (($x504 (= Opp_0_4 3)))
 (= $x504 (and (= Per_0_4 Per_2_4) (= Opp_2_4 1)))))
(assert
 (let (($x735 (= (+ Home_0_4 Home_2_4) 1)))
 (let (($x504 (= Opp_0_4 3)))
 (=> $x504 $x735))))
(assert
 (let (($x481 (= Opp_0_0 4)))
 (= $x481 (and (= Per_0_0 Per_3_0) (= Opp_3_0 1)))))
(assert
 (let (($x743 (= (+ Home_0_0 Home_3_0) 1)))
 (let (($x481 (= Opp_0_0 4)))
 (=> $x481 $x743))))
(assert
 (let (($x487 (= Opp_0_1 4)))
 (= $x487 (and (= Per_0_1 Per_3_1) (= Opp_3_1 1)))))
(assert
 (let (($x751 (= (+ Home_0_1 Home_3_1) 1)))
 (let (($x487 (= Opp_0_1 4)))
 (=> $x487 $x751))))
(assert
 (let (($x493 (= Opp_0_2 4)))
 (= $x493 (and (= Per_0_2 Per_3_2) (= Opp_3_2 1)))))
(assert
 (let (($x759 (= (+ Home_0_2 Home_3_2) 1)))
 (let (($x493 (= Opp_0_2 4)))
 (=> $x493 $x759))))
(assert
 (let (($x499 (= Opp_0_3 4)))
 (= $x499 (and (= Per_0_3 Per_3_3) (= Opp_3_3 1)))))
(assert
 (let (($x767 (= (+ Home_0_3 Home_3_3) 1)))
 (let (($x499 (= Opp_0_3 4)))
 (=> $x499 $x767))))
(assert
 (let (($x505 (= Opp_0_4 4)))
 (= $x505 (and (= Per_0_4 Per_3_4) (= Opp_3_4 1)))))
(assert
 (let (($x775 (= (+ Home_0_4 Home_3_4) 1)))
 (let (($x505 (= Opp_0_4 4)))
 (=> $x505 $x775))))
(assert
 (let (($x482 (= Opp_0_0 5)))
 (= $x482 (and (= Per_0_0 Per_4_0) (= Opp_4_0 1)))))
(assert
 (let (($x783 (= (+ Home_0_0 Home_4_0) 1)))
 (let (($x482 (= Opp_0_0 5)))
 (=> $x482 $x783))))
(assert
 (let (($x488 (= Opp_0_1 5)))
 (= $x488 (and (= Per_0_1 Per_4_1) (= Opp_4_1 1)))))
(assert
 (let (($x791 (= (+ Home_0_1 Home_4_1) 1)))
 (let (($x488 (= Opp_0_1 5)))
 (=> $x488 $x791))))
(assert
 (let (($x494 (= Opp_0_2 5)))
 (= $x494 (and (= Per_0_2 Per_4_2) (= Opp_4_2 1)))))
(assert
 (let (($x799 (= (+ Home_0_2 Home_4_2) 1)))
 (let (($x494 (= Opp_0_2 5)))
 (=> $x494 $x799))))
(assert
 (let (($x500 (= Opp_0_3 5)))
 (= $x500 (and (= Per_0_3 Per_4_3) (= Opp_4_3 1)))))
(assert
 (let (($x807 (= (+ Home_0_3 Home_4_3) 1)))
 (let (($x500 (= Opp_0_3 5)))
 (=> $x500 $x807))))
(assert
 (let (($x506 (= Opp_0_4 5)))
 (= $x506 (and (= Per_0_4 Per_4_4) (= Opp_4_4 1)))))
(assert
 (let (($x815 (= (+ Home_0_4 Home_4_4) 1)))
 (let (($x506 (= Opp_0_4 5)))
 (=> $x506 $x815))))
(assert
 (let (($x483 (= Opp_0_0 6)))
 (= $x483 (and (= Per_0_0 Per_5_0) (= Opp_5_0 1)))))
(assert
 (let (($x823 (= (+ Home_0_0 Home_5_0) 1)))
 (let (($x483 (= Opp_0_0 6)))
 (=> $x483 $x823))))
(assert
 (let (($x489 (= Opp_0_1 6)))
 (= $x489 (and (= Per_0_1 Per_5_1) (= Opp_5_1 1)))))
(assert
 (let (($x831 (= (+ Home_0_1 Home_5_1) 1)))
 (let (($x489 (= Opp_0_1 6)))
 (=> $x489 $x831))))
(assert
 (let (($x495 (= Opp_0_2 6)))
 (= $x495 (and (= Per_0_2 Per_5_2) (= Opp_5_2 1)))))
(assert
 (let (($x839 (= (+ Home_0_2 Home_5_2) 1)))
 (let (($x495 (= Opp_0_2 6)))
 (=> $x495 $x839))))
(assert
 (let (($x501 (= Opp_0_3 6)))
 (= $x501 (and (= Per_0_3 Per_5_3) (= Opp_5_3 1)))))
(assert
 (let (($x847 (= (+ Home_0_3 Home_5_3) 1)))
 (let (($x501 (= Opp_0_3 6)))
 (=> $x501 $x847))))
(assert
 (let (($x507 (= Opp_0_4 6)))
 (= $x507 (and (= Per_0_4 Per_5_4) (= Opp_5_4 1)))))
(assert
 (let (($x855 (= (+ Home_0_4 Home_5_4) 1)))
 (let (($x507 (= Opp_0_4 6)))
 (=> $x507 $x855))))
(assert
 (let (($x509 (= Opp_1_0 1)))
 (= $x509 (and (= Per_1_0 Per_0_0) (= Opp_0_0 2)))))
(assert
 (let (($x509 (= Opp_1_0 1)))
 (=> $x509 (= (+ Home_1_0 Home_0_0) 1))))
(assert
 (let (($x515 (= Opp_1_1 1)))
 (= $x515 (and (= Per_1_1 Per_0_1) (= Opp_0_1 2)))))
(assert
 (let (($x515 (= Opp_1_1 1)))
 (=> $x515 (= (+ Home_1_1 Home_0_1) 1))))
(assert
 (let (($x521 (= Opp_1_2 1)))
 (= $x521 (and (= Per_1_2 Per_0_2) (= Opp_0_2 2)))))
(assert
 (let (($x521 (= Opp_1_2 1)))
 (=> $x521 (= (+ Home_1_2 Home_0_2) 1))))
(assert
 (let (($x527 (= Opp_1_3 1)))
 (= $x527 (and (= Per_1_3 Per_0_3) (= Opp_0_3 2)))))
(assert
 (let (($x527 (= Opp_1_3 1)))
 (=> $x527 (= (+ Home_1_3 Home_0_3) 1))))
(assert
 (let (($x533 (= Opp_1_4 1)))
 (= $x533 (and (= Per_1_4 Per_0_4) (= Opp_0_4 2)))))
(assert
 (let (($x533 (= Opp_1_4 1)))
 (=> $x533 (= (+ Home_1_4 Home_0_4) 1))))
(assert
 (let (($x510 (= Opp_1_0 3)))
 (= $x510 (and (= Per_1_0 Per_2_0) (= Opp_2_0 2)))))
(assert
 (let (($x903 (= (+ Home_1_0 Home_2_0) 1)))
 (let (($x510 (= Opp_1_0 3)))
 (=> $x510 $x903))))
(assert
 (let (($x516 (= Opp_1_1 3)))
 (= $x516 (and (= Per_1_1 Per_2_1) (= Opp_2_1 2)))))
(assert
 (let (($x911 (= (+ Home_1_1 Home_2_1) 1)))
 (let (($x516 (= Opp_1_1 3)))
 (=> $x516 $x911))))
(assert
 (let (($x522 (= Opp_1_2 3)))
 (= $x522 (and (= Per_1_2 Per_2_2) (= Opp_2_2 2)))))
(assert
 (let (($x919 (= (+ Home_1_2 Home_2_2) 1)))
 (let (($x522 (= Opp_1_2 3)))
 (=> $x522 $x919))))
(assert
 (let (($x528 (= Opp_1_3 3)))
 (= $x528 (and (= Per_1_3 Per_2_3) (= Opp_2_3 2)))))
(assert
 (let (($x927 (= (+ Home_1_3 Home_2_3) 1)))
 (let (($x528 (= Opp_1_3 3)))
 (=> $x528 $x927))))
(assert
 (let (($x534 (= Opp_1_4 3)))
 (= $x534 (and (= Per_1_4 Per_2_4) (= Opp_2_4 2)))))
(assert
 (let (($x935 (= (+ Home_1_4 Home_2_4) 1)))
 (let (($x534 (= Opp_1_4 3)))
 (=> $x534 $x935))))
(assert
 (let (($x511 (= Opp_1_0 4)))
 (= $x511 (and (= Per_1_0 Per_3_0) (= Opp_3_0 2)))))
(assert
 (let (($x943 (= (+ Home_1_0 Home_3_0) 1)))
 (let (($x511 (= Opp_1_0 4)))
 (=> $x511 $x943))))
(assert
 (let (($x517 (= Opp_1_1 4)))
 (= $x517 (and (= Per_1_1 Per_3_1) (= Opp_3_1 2)))))
(assert
 (let (($x951 (= (+ Home_1_1 Home_3_1) 1)))
 (let (($x517 (= Opp_1_1 4)))
 (=> $x517 $x951))))
(assert
 (let (($x523 (= Opp_1_2 4)))
 (= $x523 (and (= Per_1_2 Per_3_2) (= Opp_3_2 2)))))
(assert
 (let (($x959 (= (+ Home_1_2 Home_3_2) 1)))
 (let (($x523 (= Opp_1_2 4)))
 (=> $x523 $x959))))
(assert
 (let (($x529 (= Opp_1_3 4)))
 (= $x529 (and (= Per_1_3 Per_3_3) (= Opp_3_3 2)))))
(assert
 (let (($x967 (= (+ Home_1_3 Home_3_3) 1)))
 (let (($x529 (= Opp_1_3 4)))
 (=> $x529 $x967))))
(assert
 (let (($x535 (= Opp_1_4 4)))
 (= $x535 (and (= Per_1_4 Per_3_4) (= Opp_3_4 2)))))
(assert
 (let (($x975 (= (+ Home_1_4 Home_3_4) 1)))
 (let (($x535 (= Opp_1_4 4)))
 (=> $x535 $x975))))
(assert
 (let (($x512 (= Opp_1_0 5)))
 (= $x512 (and (= Per_1_0 Per_4_0) (= Opp_4_0 2)))))
(assert
 (let (($x983 (= (+ Home_1_0 Home_4_0) 1)))
 (let (($x512 (= Opp_1_0 5)))
 (=> $x512 $x983))))
(assert
 (let (($x518 (= Opp_1_1 5)))
 (= $x518 (and (= Per_1_1 Per_4_1) (= Opp_4_1 2)))))
(assert
 (let (($x991 (= (+ Home_1_1 Home_4_1) 1)))
 (let (($x518 (= Opp_1_1 5)))
 (=> $x518 $x991))))
(assert
 (let (($x524 (= Opp_1_2 5)))
 (= $x524 (and (= Per_1_2 Per_4_2) (= Opp_4_2 2)))))
(assert
 (let (($x999 (= (+ Home_1_2 Home_4_2) 1)))
 (let (($x524 (= Opp_1_2 5)))
 (=> $x524 $x999))))
(assert
 (let (($x530 (= Opp_1_3 5)))
 (= $x530 (and (= Per_1_3 Per_4_3) (= Opp_4_3 2)))))
(assert
 (let (($x1007 (= (+ Home_1_3 Home_4_3) 1)))
 (let (($x530 (= Opp_1_3 5)))
 (=> $x530 $x1007))))
(assert
 (let (($x536 (= Opp_1_4 5)))
 (= $x536 (and (= Per_1_4 Per_4_4) (= Opp_4_4 2)))))
(assert
 (let (($x1015 (= (+ Home_1_4 Home_4_4) 1)))
 (let (($x536 (= Opp_1_4 5)))
 (=> $x536 $x1015))))
(assert
 (let (($x513 (= Opp_1_0 6)))
 (= $x513 (and (= Per_1_0 Per_5_0) (= Opp_5_0 2)))))
(assert
 (let (($x1023 (= (+ Home_1_0 Home_5_0) 1)))
 (let (($x513 (= Opp_1_0 6)))
 (=> $x513 $x1023))))
(assert
 (let (($x519 (= Opp_1_1 6)))
 (= $x519 (and (= Per_1_1 Per_5_1) (= Opp_5_1 2)))))
(assert
 (let (($x1031 (= (+ Home_1_1 Home_5_1) 1)))
 (let (($x519 (= Opp_1_1 6)))
 (=> $x519 $x1031))))
(assert
 (let (($x525 (= Opp_1_2 6)))
 (= $x525 (and (= Per_1_2 Per_5_2) (= Opp_5_2 2)))))
(assert
 (let (($x1039 (= (+ Home_1_2 Home_5_2) 1)))
 (let (($x525 (= Opp_1_2 6)))
 (=> $x525 $x1039))))
(assert
 (let (($x531 (= Opp_1_3 6)))
 (= $x531 (and (= Per_1_3 Per_5_3) (= Opp_5_3 2)))))
(assert
 (let (($x1047 (= (+ Home_1_3 Home_5_3) 1)))
 (let (($x531 (= Opp_1_3 6)))
 (=> $x531 $x1047))))
(assert
 (let (($x537 (= Opp_1_4 6)))
 (= $x537 (and (= Per_1_4 Per_5_4) (= Opp_5_4 2)))))
(assert
 (let (($x1055 (= (+ Home_1_4 Home_5_4) 1)))
 (let (($x537 (= Opp_1_4 6)))
 (=> $x537 $x1055))))
(assert
 (let (($x539 (= Opp_2_0 1)))
 (= $x539 (and (= Per_2_0 Per_0_0) (= Opp_0_0 3)))))
(assert
 (let (($x539 (= Opp_2_0 1)))
 (=> $x539 (= (+ Home_2_0 Home_0_0) 1))))
(assert
 (let (($x545 (= Opp_2_1 1)))
 (= $x545 (and (= Per_2_1 Per_0_1) (= Opp_0_1 3)))))
(assert
 (let (($x545 (= Opp_2_1 1)))
 (=> $x545 (= (+ Home_2_1 Home_0_1) 1))))
(assert
 (let (($x551 (= Opp_2_2 1)))
 (= $x551 (and (= Per_2_2 Per_0_2) (= Opp_0_2 3)))))
(assert
 (let (($x551 (= Opp_2_2 1)))
 (=> $x551 (= (+ Home_2_2 Home_0_2) 1))))
(assert
 (let (($x557 (= Opp_2_3 1)))
 (= $x557 (and (= Per_2_3 Per_0_3) (= Opp_0_3 3)))))
(assert
 (let (($x557 (= Opp_2_3 1)))
 (=> $x557 (= (+ Home_2_3 Home_0_3) 1))))
(assert
 (let (($x563 (= Opp_2_4 1)))
 (= $x563 (and (= Per_2_4 Per_0_4) (= Opp_0_4 3)))))
(assert
 (let (($x563 (= Opp_2_4 1)))
 (=> $x563 (= (+ Home_2_4 Home_0_4) 1))))
(assert
 (let (($x540 (= Opp_2_0 2)))
 (= $x540 (and (= Per_2_0 Per_1_0) (= Opp_1_0 3)))))
(assert
 (let (($x540 (= Opp_2_0 2)))
 (=> $x540 (= (+ Home_2_0 Home_1_0) 1))))
(assert
 (let (($x546 (= Opp_2_1 2)))
 (= $x546 (and (= Per_2_1 Per_1_1) (= Opp_1_1 3)))))
(assert
 (let (($x546 (= Opp_2_1 2)))
 (=> $x546 (= (+ Home_2_1 Home_1_1) 1))))
(assert
 (let (($x552 (= Opp_2_2 2)))
 (= $x552 (and (= Per_2_2 Per_1_2) (= Opp_1_2 3)))))
(assert
 (let (($x552 (= Opp_2_2 2)))
 (=> $x552 (= (+ Home_2_2 Home_1_2) 1))))
(assert
 (let (($x558 (= Opp_2_3 2)))
 (= $x558 (and (= Per_2_3 Per_1_3) (= Opp_1_3 3)))))
(assert
 (let (($x558 (= Opp_2_3 2)))
 (=> $x558 (= (+ Home_2_3 Home_1_3) 1))))
(assert
 (let (($x564 (= Opp_2_4 2)))
 (= $x564 (and (= Per_2_4 Per_1_4) (= Opp_1_4 3)))))
(assert
 (let (($x564 (= Opp_2_4 2)))
 (=> $x564 (= (+ Home_2_4 Home_1_4) 1))))
(assert
 (let (($x541 (= Opp_2_0 4)))
 (= $x541 (and (= Per_2_0 Per_3_0) (= Opp_3_0 3)))))
(assert
 (let (($x1143 (= (+ Home_2_0 Home_3_0) 1)))
 (let (($x541 (= Opp_2_0 4)))
 (=> $x541 $x1143))))
(assert
 (let (($x547 (= Opp_2_1 4)))
 (= $x547 (and (= Per_2_1 Per_3_1) (= Opp_3_1 3)))))
(assert
 (let (($x1151 (= (+ Home_2_1 Home_3_1) 1)))
 (let (($x547 (= Opp_2_1 4)))
 (=> $x547 $x1151))))
(assert
 (let (($x553 (= Opp_2_2 4)))
 (= $x553 (and (= Per_2_2 Per_3_2) (= Opp_3_2 3)))))
(assert
 (let (($x1159 (= (+ Home_2_2 Home_3_2) 1)))
 (let (($x553 (= Opp_2_2 4)))
 (=> $x553 $x1159))))
(assert
 (let (($x559 (= Opp_2_3 4)))
 (= $x559 (and (= Per_2_3 Per_3_3) (= Opp_3_3 3)))))
(assert
 (let (($x1167 (= (+ Home_2_3 Home_3_3) 1)))
 (let (($x559 (= Opp_2_3 4)))
 (=> $x559 $x1167))))
(assert
 (let (($x565 (= Opp_2_4 4)))
 (= $x565 (and (= Per_2_4 Per_3_4) (= Opp_3_4 3)))))
(assert
 (let (($x1175 (= (+ Home_2_4 Home_3_4) 1)))
 (let (($x565 (= Opp_2_4 4)))
 (=> $x565 $x1175))))
(assert
 (let (($x542 (= Opp_2_0 5)))
 (= $x542 (and (= Per_2_0 Per_4_0) (= Opp_4_0 3)))))
(assert
 (let (($x1183 (= (+ Home_2_0 Home_4_0) 1)))
 (let (($x542 (= Opp_2_0 5)))
 (=> $x542 $x1183))))
(assert
 (let (($x548 (= Opp_2_1 5)))
 (= $x548 (and (= Per_2_1 Per_4_1) (= Opp_4_1 3)))))
(assert
 (let (($x1191 (= (+ Home_2_1 Home_4_1) 1)))
 (let (($x548 (= Opp_2_1 5)))
 (=> $x548 $x1191))))
(assert
 (let (($x554 (= Opp_2_2 5)))
 (= $x554 (and (= Per_2_2 Per_4_2) (= Opp_4_2 3)))))
(assert
 (let (($x1199 (= (+ Home_2_2 Home_4_2) 1)))
 (let (($x554 (= Opp_2_2 5)))
 (=> $x554 $x1199))))
(assert
 (let (($x560 (= Opp_2_3 5)))
 (= $x560 (and (= Per_2_3 Per_4_3) (= Opp_4_3 3)))))
(assert
 (let (($x1207 (= (+ Home_2_3 Home_4_3) 1)))
 (let (($x560 (= Opp_2_3 5)))
 (=> $x560 $x1207))))
(assert
 (let (($x566 (= Opp_2_4 5)))
 (= $x566 (and (= Per_2_4 Per_4_4) (= Opp_4_4 3)))))
(assert
 (let (($x1215 (= (+ Home_2_4 Home_4_4) 1)))
 (let (($x566 (= Opp_2_4 5)))
 (=> $x566 $x1215))))
(assert
 (let (($x543 (= Opp_2_0 6)))
 (= $x543 (and (= Per_2_0 Per_5_0) (= Opp_5_0 3)))))
(assert
 (let (($x1223 (= (+ Home_2_0 Home_5_0) 1)))
 (let (($x543 (= Opp_2_0 6)))
 (=> $x543 $x1223))))
(assert
 (let (($x549 (= Opp_2_1 6)))
 (= $x549 (and (= Per_2_1 Per_5_1) (= Opp_5_1 3)))))
(assert
 (let (($x1231 (= (+ Home_2_1 Home_5_1) 1)))
 (let (($x549 (= Opp_2_1 6)))
 (=> $x549 $x1231))))
(assert
 (let (($x555 (= Opp_2_2 6)))
 (= $x555 (and (= Per_2_2 Per_5_2) (= Opp_5_2 3)))))
(assert
 (let (($x1239 (= (+ Home_2_2 Home_5_2) 1)))
 (let (($x555 (= Opp_2_2 6)))
 (=> $x555 $x1239))))
(assert
 (let (($x561 (= Opp_2_3 6)))
 (= $x561 (and (= Per_2_3 Per_5_3) (= Opp_5_3 3)))))
(assert
 (let (($x1247 (= (+ Home_2_3 Home_5_3) 1)))
 (let (($x561 (= Opp_2_3 6)))
 (=> $x561 $x1247))))
(assert
 (let (($x567 (= Opp_2_4 6)))
 (= $x567 (and (= Per_2_4 Per_5_4) (= Opp_5_4 3)))))
(assert
 (let (($x1255 (= (+ Home_2_4 Home_5_4) 1)))
 (let (($x567 (= Opp_2_4 6)))
 (=> $x567 $x1255))))
(assert
 (let (($x569 (= Opp_3_0 1)))
 (= $x569 (and (= Per_3_0 Per_0_0) (= Opp_0_0 4)))))
(assert
 (let (($x569 (= Opp_3_0 1)))
 (=> $x569 (= (+ Home_3_0 Home_0_0) 1))))
(assert
 (let (($x575 (= Opp_3_1 1)))
 (= $x575 (and (= Per_3_1 Per_0_1) (= Opp_0_1 4)))))
(assert
 (let (($x575 (= Opp_3_1 1)))
 (=> $x575 (= (+ Home_3_1 Home_0_1) 1))))
(assert
 (let (($x581 (= Opp_3_2 1)))
 (= $x581 (and (= Per_3_2 Per_0_2) (= Opp_0_2 4)))))
(assert
 (let (($x581 (= Opp_3_2 1)))
 (=> $x581 (= (+ Home_3_2 Home_0_2) 1))))
(assert
 (let (($x587 (= Opp_3_3 1)))
 (= $x587 (and (= Per_3_3 Per_0_3) (= Opp_0_3 4)))))
(assert
 (let (($x587 (= Opp_3_3 1)))
 (=> $x587 (= (+ Home_3_3 Home_0_3) 1))))
(assert
 (let (($x593 (= Opp_3_4 1)))
 (= $x593 (and (= Per_3_4 Per_0_4) (= Opp_0_4 4)))))
(assert
 (let (($x593 (= Opp_3_4 1)))
 (=> $x593 (= (+ Home_3_4 Home_0_4) 1))))
(assert
 (let (($x570 (= Opp_3_0 2)))
 (= $x570 (and (= Per_3_0 Per_1_0) (= Opp_1_0 4)))))
(assert
 (let (($x570 (= Opp_3_0 2)))
 (=> $x570 (= (+ Home_3_0 Home_1_0) 1))))
(assert
 (let (($x576 (= Opp_3_1 2)))
 (= $x576 (and (= Per_3_1 Per_1_1) (= Opp_1_1 4)))))
(assert
 (let (($x576 (= Opp_3_1 2)))
 (=> $x576 (= (+ Home_3_1 Home_1_1) 1))))
(assert
 (let (($x582 (= Opp_3_2 2)))
 (= $x582 (and (= Per_3_2 Per_1_2) (= Opp_1_2 4)))))
(assert
 (let (($x582 (= Opp_3_2 2)))
 (=> $x582 (= (+ Home_3_2 Home_1_2) 1))))
(assert
 (let (($x588 (= Opp_3_3 2)))
 (= $x588 (and (= Per_3_3 Per_1_3) (= Opp_1_3 4)))))
(assert
 (let (($x588 (= Opp_3_3 2)))
 (=> $x588 (= (+ Home_3_3 Home_1_3) 1))))
(assert
 (let (($x594 (= Opp_3_4 2)))
 (= $x594 (and (= Per_3_4 Per_1_4) (= Opp_1_4 4)))))
(assert
 (let (($x594 (= Opp_3_4 2)))
 (=> $x594 (= (+ Home_3_4 Home_1_4) 1))))
(assert
 (let (($x571 (= Opp_3_0 3)))
 (= $x571 (and (= Per_3_0 Per_2_0) (= Opp_2_0 4)))))
(assert
 (let (($x571 (= Opp_3_0 3)))
 (=> $x571 (= (+ Home_3_0 Home_2_0) 1))))
(assert
 (let (($x577 (= Opp_3_1 3)))
 (= $x577 (and (= Per_3_1 Per_2_1) (= Opp_2_1 4)))))
(assert
 (let (($x577 (= Opp_3_1 3)))
 (=> $x577 (= (+ Home_3_1 Home_2_1) 1))))
(assert
 (let (($x583 (= Opp_3_2 3)))
 (= $x583 (and (= Per_3_2 Per_2_2) (= Opp_2_2 4)))))
(assert
 (let (($x583 (= Opp_3_2 3)))
 (=> $x583 (= (+ Home_3_2 Home_2_2) 1))))
(assert
 (let (($x589 (= Opp_3_3 3)))
 (= $x589 (and (= Per_3_3 Per_2_3) (= Opp_2_3 4)))))
(assert
 (let (($x589 (= Opp_3_3 3)))
 (=> $x589 (= (+ Home_3_3 Home_2_3) 1))))
(assert
 (let (($x595 (= Opp_3_4 3)))
 (= $x595 (and (= Per_3_4 Per_2_4) (= Opp_2_4 4)))))
(assert
 (let (($x595 (= Opp_3_4 3)))
 (=> $x595 (= (+ Home_3_4 Home_2_4) 1))))
(assert
 (let (($x572 (= Opp_3_0 5)))
 (= $x572 (and (= Per_3_0 Per_4_0) (= Opp_4_0 4)))))
(assert
 (let (($x1383 (= (+ Home_3_0 Home_4_0) 1)))
 (let (($x572 (= Opp_3_0 5)))
 (=> $x572 $x1383))))
(assert
 (let (($x578 (= Opp_3_1 5)))
 (= $x578 (and (= Per_3_1 Per_4_1) (= Opp_4_1 4)))))
(assert
 (let (($x1391 (= (+ Home_3_1 Home_4_1) 1)))
 (let (($x578 (= Opp_3_1 5)))
 (=> $x578 $x1391))))
(assert
 (let (($x584 (= Opp_3_2 5)))
 (= $x584 (and (= Per_3_2 Per_4_2) (= Opp_4_2 4)))))
(assert
 (let (($x1399 (= (+ Home_3_2 Home_4_2) 1)))
 (let (($x584 (= Opp_3_2 5)))
 (=> $x584 $x1399))))
(assert
 (let (($x590 (= Opp_3_3 5)))
 (= $x590 (and (= Per_3_3 Per_4_3) (= Opp_4_3 4)))))
(assert
 (let (($x1407 (= (+ Home_3_3 Home_4_3) 1)))
 (let (($x590 (= Opp_3_3 5)))
 (=> $x590 $x1407))))
(assert
 (let (($x596 (= Opp_3_4 5)))
 (= $x596 (and (= Per_3_4 Per_4_4) (= Opp_4_4 4)))))
(assert
 (let (($x1415 (= (+ Home_3_4 Home_4_4) 1)))
 (let (($x596 (= Opp_3_4 5)))
 (=> $x596 $x1415))))
(assert
 (let (($x573 (= Opp_3_0 6)))
 (= $x573 (and (= Per_3_0 Per_5_0) (= Opp_5_0 4)))))
(assert
 (let (($x1423 (= (+ Home_3_0 Home_5_0) 1)))
 (let (($x573 (= Opp_3_0 6)))
 (=> $x573 $x1423))))
(assert
 (let (($x579 (= Opp_3_1 6)))
 (= $x579 (and (= Per_3_1 Per_5_1) (= Opp_5_1 4)))))
(assert
 (let (($x1431 (= (+ Home_3_1 Home_5_1) 1)))
 (let (($x579 (= Opp_3_1 6)))
 (=> $x579 $x1431))))
(assert
 (let (($x585 (= Opp_3_2 6)))
 (= $x585 (and (= Per_3_2 Per_5_2) (= Opp_5_2 4)))))
(assert
 (let (($x1439 (= (+ Home_3_2 Home_5_2) 1)))
 (let (($x585 (= Opp_3_2 6)))
 (=> $x585 $x1439))))
(assert
 (let (($x591 (= Opp_3_3 6)))
 (= $x591 (and (= Per_3_3 Per_5_3) (= Opp_5_3 4)))))
(assert
 (let (($x1447 (= (+ Home_3_3 Home_5_3) 1)))
 (let (($x591 (= Opp_3_3 6)))
 (=> $x591 $x1447))))
(assert
 (let (($x597 (= Opp_3_4 6)))
 (= $x597 (and (= Per_3_4 Per_5_4) (= Opp_5_4 4)))))
(assert
 (let (($x1455 (= (+ Home_3_4 Home_5_4) 1)))
 (let (($x597 (= Opp_3_4 6)))
 (=> $x597 $x1455))))
(assert
 (let (($x599 (= Opp_4_0 1)))
 (= $x599 (and (= Per_4_0 Per_0_0) (= Opp_0_0 5)))))
(assert
 (let (($x599 (= Opp_4_0 1)))
 (=> $x599 (= (+ Home_4_0 Home_0_0) 1))))
(assert
 (let (($x605 (= Opp_4_1 1)))
 (= $x605 (and (= Per_4_1 Per_0_1) (= Opp_0_1 5)))))
(assert
 (let (($x605 (= Opp_4_1 1)))
 (=> $x605 (= (+ Home_4_1 Home_0_1) 1))))
(assert
 (let (($x611 (= Opp_4_2 1)))
 (= $x611 (and (= Per_4_2 Per_0_2) (= Opp_0_2 5)))))
(assert
 (let (($x611 (= Opp_4_2 1)))
 (=> $x611 (= (+ Home_4_2 Home_0_2) 1))))
(assert
 (let (($x617 (= Opp_4_3 1)))
 (= $x617 (and (= Per_4_3 Per_0_3) (= Opp_0_3 5)))))
(assert
 (let (($x617 (= Opp_4_3 1)))
 (=> $x617 (= (+ Home_4_3 Home_0_3) 1))))
(assert
 (let (($x623 (= Opp_4_4 1)))
 (= $x623 (and (= Per_4_4 Per_0_4) (= Opp_0_4 5)))))
(assert
 (let (($x623 (= Opp_4_4 1)))
 (=> $x623 (= (+ Home_4_4 Home_0_4) 1))))
(assert
 (let (($x600 (= Opp_4_0 2)))
 (= $x600 (and (= Per_4_0 Per_1_0) (= Opp_1_0 5)))))
(assert
 (let (($x600 (= Opp_4_0 2)))
 (=> $x600 (= (+ Home_4_0 Home_1_0) 1))))
(assert
 (let (($x606 (= Opp_4_1 2)))
 (= $x606 (and (= Per_4_1 Per_1_1) (= Opp_1_1 5)))))
(assert
 (let (($x606 (= Opp_4_1 2)))
 (=> $x606 (= (+ Home_4_1 Home_1_1) 1))))
(assert
 (let (($x612 (= Opp_4_2 2)))
 (= $x612 (and (= Per_4_2 Per_1_2) (= Opp_1_2 5)))))
(assert
 (let (($x612 (= Opp_4_2 2)))
 (=> $x612 (= (+ Home_4_2 Home_1_2) 1))))
(assert
 (let (($x618 (= Opp_4_3 2)))
 (= $x618 (and (= Per_4_3 Per_1_3) (= Opp_1_3 5)))))
(assert
 (let (($x618 (= Opp_4_3 2)))
 (=> $x618 (= (+ Home_4_3 Home_1_3) 1))))
(assert
 (let (($x624 (= Opp_4_4 2)))
 (= $x624 (and (= Per_4_4 Per_1_4) (= Opp_1_4 5)))))
(assert
 (let (($x624 (= Opp_4_4 2)))
 (=> $x624 (= (+ Home_4_4 Home_1_4) 1))))
(assert
 (let (($x601 (= Opp_4_0 3)))
 (= $x601 (and (= Per_4_0 Per_2_0) (= Opp_2_0 5)))))
(assert
 (let (($x601 (= Opp_4_0 3)))
 (=> $x601 (= (+ Home_4_0 Home_2_0) 1))))
(assert
 (let (($x607 (= Opp_4_1 3)))
 (= $x607 (and (= Per_4_1 Per_2_1) (= Opp_2_1 5)))))
(assert
 (let (($x607 (= Opp_4_1 3)))
 (=> $x607 (= (+ Home_4_1 Home_2_1) 1))))
(assert
 (let (($x613 (= Opp_4_2 3)))
 (= $x613 (and (= Per_4_2 Per_2_2) (= Opp_2_2 5)))))
(assert
 (let (($x613 (= Opp_4_2 3)))
 (=> $x613 (= (+ Home_4_2 Home_2_2) 1))))
(assert
 (let (($x619 (= Opp_4_3 3)))
 (= $x619 (and (= Per_4_3 Per_2_3) (= Opp_2_3 5)))))
(assert
 (let (($x619 (= Opp_4_3 3)))
 (=> $x619 (= (+ Home_4_3 Home_2_3) 1))))
(assert
 (let (($x625 (= Opp_4_4 3)))
 (= $x625 (and (= Per_4_4 Per_2_4) (= Opp_2_4 5)))))
(assert
 (let (($x625 (= Opp_4_4 3)))
 (=> $x625 (= (+ Home_4_4 Home_2_4) 1))))
(assert
 (let (($x602 (= Opp_4_0 4)))
 (= $x602 (and (= Per_4_0 Per_3_0) (= Opp_3_0 5)))))
(assert
 (let (($x602 (= Opp_4_0 4)))
 (=> $x602 (= (+ Home_4_0 Home_3_0) 1))))
(assert
 (let (($x608 (= Opp_4_1 4)))
 (= $x608 (and (= Per_4_1 Per_3_1) (= Opp_3_1 5)))))
(assert
 (let (($x608 (= Opp_4_1 4)))
 (=> $x608 (= (+ Home_4_1 Home_3_1) 1))))
(assert
 (let (($x614 (= Opp_4_2 4)))
 (= $x614 (and (= Per_4_2 Per_3_2) (= Opp_3_2 5)))))
(assert
 (let (($x614 (= Opp_4_2 4)))
 (=> $x614 (= (+ Home_4_2 Home_3_2) 1))))
(assert
 (let (($x620 (= Opp_4_3 4)))
 (= $x620 (and (= Per_4_3 Per_3_3) (= Opp_3_3 5)))))
(assert
 (let (($x620 (= Opp_4_3 4)))
 (=> $x620 (= (+ Home_4_3 Home_3_3) 1))))
(assert
 (let (($x626 (= Opp_4_4 4)))
 (= $x626 (and (= Per_4_4 Per_3_4) (= Opp_3_4 5)))))
(assert
 (let (($x626 (= Opp_4_4 4)))
 (=> $x626 (= (+ Home_4_4 Home_3_4) 1))))
(assert
 (let (($x603 (= Opp_4_0 6)))
 (= $x603 (and (= Per_4_0 Per_5_0) (= Opp_5_0 5)))))
(assert
 (let (($x1623 (= (+ Home_4_0 Home_5_0) 1)))
 (let (($x603 (= Opp_4_0 6)))
 (=> $x603 $x1623))))
(assert
 (let (($x609 (= Opp_4_1 6)))
 (= $x609 (and (= Per_4_1 Per_5_1) (= Opp_5_1 5)))))
(assert
 (let (($x1631 (= (+ Home_4_1 Home_5_1) 1)))
 (let (($x609 (= Opp_4_1 6)))
 (=> $x609 $x1631))))
(assert
 (let (($x615 (= Opp_4_2 6)))
 (= $x615 (and (= Per_4_2 Per_5_2) (= Opp_5_2 5)))))
(assert
 (let (($x1639 (= (+ Home_4_2 Home_5_2) 1)))
 (let (($x615 (= Opp_4_2 6)))
 (=> $x615 $x1639))))
(assert
 (let (($x621 (= Opp_4_3 6)))
 (= $x621 (and (= Per_4_3 Per_5_3) (= Opp_5_3 5)))))
(assert
 (let (($x1647 (= (+ Home_4_3 Home_5_3) 1)))
 (let (($x621 (= Opp_4_3 6)))
 (=> $x621 $x1647))))
(assert
 (let (($x627 (= Opp_4_4 6)))
 (= $x627 (and (= Per_4_4 Per_5_4) (= Opp_5_4 5)))))
(assert
 (let (($x1655 (= (+ Home_4_4 Home_5_4) 1)))
 (let (($x627 (= Opp_4_4 6)))
 (=> $x627 $x1655))))
(assert
 (let (($x629 (= Opp_5_0 1)))
 (= $x629 (and (= Per_5_0 Per_0_0) (= Opp_0_0 6)))))
(assert
 (let (($x629 (= Opp_5_0 1)))
 (=> $x629 (= (+ Home_5_0 Home_0_0) 1))))
(assert
 (let (($x635 (= Opp_5_1 1)))
 (= $x635 (and (= Per_5_1 Per_0_1) (= Opp_0_1 6)))))
(assert
 (let (($x635 (= Opp_5_1 1)))
 (=> $x635 (= (+ Home_5_1 Home_0_1) 1))))
(assert
 (let (($x641 (= Opp_5_2 1)))
 (= $x641 (and (= Per_5_2 Per_0_2) (= Opp_0_2 6)))))
(assert
 (let (($x641 (= Opp_5_2 1)))
 (=> $x641 (= (+ Home_5_2 Home_0_2) 1))))
(assert
 (let (($x647 (= Opp_5_3 1)))
 (= $x647 (and (= Per_5_3 Per_0_3) (= Opp_0_3 6)))))
(assert
 (let (($x647 (= Opp_5_3 1)))
 (=> $x647 (= (+ Home_5_3 Home_0_3) 1))))
(assert
 (let (($x653 (= Opp_5_4 1)))
 (= $x653 (and (= Per_5_4 Per_0_4) (= Opp_0_4 6)))))
(assert
 (let (($x653 (= Opp_5_4 1)))
 (=> $x653 (= (+ Home_5_4 Home_0_4) 1))))
(assert
 (let (($x630 (= Opp_5_0 2)))
 (= $x630 (and (= Per_5_0 Per_1_0) (= Opp_1_0 6)))))
(assert
 (let (($x630 (= Opp_5_0 2)))
 (=> $x630 (= (+ Home_5_0 Home_1_0) 1))))
(assert
 (let (($x636 (= Opp_5_1 2)))
 (= $x636 (and (= Per_5_1 Per_1_1) (= Opp_1_1 6)))))
(assert
 (let (($x636 (= Opp_5_1 2)))
 (=> $x636 (= (+ Home_5_1 Home_1_1) 1))))
(assert
 (let (($x642 (= Opp_5_2 2)))
 (= $x642 (and (= Per_5_2 Per_1_2) (= Opp_1_2 6)))))
(assert
 (let (($x642 (= Opp_5_2 2)))
 (=> $x642 (= (+ Home_5_2 Home_1_2) 1))))
(assert
 (let (($x648 (= Opp_5_3 2)))
 (= $x648 (and (= Per_5_3 Per_1_3) (= Opp_1_3 6)))))
(assert
 (let (($x648 (= Opp_5_3 2)))
 (=> $x648 (= (+ Home_5_3 Home_1_3) 1))))
(assert
 (let (($x654 (= Opp_5_4 2)))
 (= $x654 (and (= Per_5_4 Per_1_4) (= Opp_1_4 6)))))
(assert
 (let (($x654 (= Opp_5_4 2)))
 (=> $x654 (= (+ Home_5_4 Home_1_4) 1))))
(assert
 (let (($x631 (= Opp_5_0 3)))
 (= $x631 (and (= Per_5_0 Per_2_0) (= Opp_2_0 6)))))
(assert
 (let (($x631 (= Opp_5_0 3)))
 (=> $x631 (= (+ Home_5_0 Home_2_0) 1))))
(assert
 (let (($x637 (= Opp_5_1 3)))
 (= $x637 (and (= Per_5_1 Per_2_1) (= Opp_2_1 6)))))
(assert
 (let (($x637 (= Opp_5_1 3)))
 (=> $x637 (= (+ Home_5_1 Home_2_1) 1))))
(assert
 (let (($x643 (= Opp_5_2 3)))
 (= $x643 (and (= Per_5_2 Per_2_2) (= Opp_2_2 6)))))
(assert
 (let (($x643 (= Opp_5_2 3)))
 (=> $x643 (= (+ Home_5_2 Home_2_2) 1))))
(assert
 (let (($x649 (= Opp_5_3 3)))
 (= $x649 (and (= Per_5_3 Per_2_3) (= Opp_2_3 6)))))
(assert
 (let (($x649 (= Opp_5_3 3)))
 (=> $x649 (= (+ Home_5_3 Home_2_3) 1))))
(assert
 (let (($x655 (= Opp_5_4 3)))
 (= $x655 (and (= Per_5_4 Per_2_4) (= Opp_2_4 6)))))
(assert
 (let (($x655 (= Opp_5_4 3)))
 (=> $x655 (= (+ Home_5_4 Home_2_4) 1))))
(assert
 (let (($x632 (= Opp_5_0 4)))
 (= $x632 (and (= Per_5_0 Per_3_0) (= Opp_3_0 6)))))
(assert
 (let (($x632 (= Opp_5_0 4)))
 (=> $x632 (= (+ Home_5_0 Home_3_0) 1))))
(assert
 (let (($x638 (= Opp_5_1 4)))
 (= $x638 (and (= Per_5_1 Per_3_1) (= Opp_3_1 6)))))
(assert
 (let (($x638 (= Opp_5_1 4)))
 (=> $x638 (= (+ Home_5_1 Home_3_1) 1))))
(assert
 (let (($x644 (= Opp_5_2 4)))
 (= $x644 (and (= Per_5_2 Per_3_2) (= Opp_3_2 6)))))
(assert
 (let (($x644 (= Opp_5_2 4)))
 (=> $x644 (= (+ Home_5_2 Home_3_2) 1))))
(assert
 (let (($x650 (= Opp_5_3 4)))
 (= $x650 (and (= Per_5_3 Per_3_3) (= Opp_3_3 6)))))
(assert
 (let (($x650 (= Opp_5_3 4)))
 (=> $x650 (= (+ Home_5_3 Home_3_3) 1))))
(assert
 (let (($x656 (= Opp_5_4 4)))
 (= $x656 (and (= Per_5_4 Per_3_4) (= Opp_3_4 6)))))
(assert
 (let (($x656 (= Opp_5_4 4)))
 (=> $x656 (= (+ Home_5_4 Home_3_4) 1))))
(assert
 (let (($x633 (= Opp_5_0 5)))
 (= $x633 (and (= Per_5_0 Per_4_0) (= Opp_4_0 6)))))
(assert
 (let (($x633 (= Opp_5_0 5)))
 (=> $x633 (= (+ Home_5_0 Home_4_0) 1))))
(assert
 (let (($x639 (= Opp_5_1 5)))
 (= $x639 (and (= Per_5_1 Per_4_1) (= Opp_4_1 6)))))
(assert
 (let (($x639 (= Opp_5_1 5)))
 (=> $x639 (= (+ Home_5_1 Home_4_1) 1))))
(assert
 (let (($x645 (= Opp_5_2 5)))
 (= $x645 (and (= Per_5_2 Per_4_2) (= Opp_4_2 6)))))
(assert
 (let (($x645 (= Opp_5_2 5)))
 (=> $x645 (= (+ Home_5_2 Home_4_2) 1))))
(assert
 (let (($x651 (= Opp_5_3 5)))
 (= $x651 (and (= Per_5_3 Per_4_3) (= Opp_4_3 6)))))
(assert
 (let (($x651 (= Opp_5_3 5)))
 (=> $x651 (= (+ Home_5_3 Home_4_3) 1))))
(assert
 (let (($x657 (= Opp_5_4 5)))
 (= $x657 (and (= Per_5_4 Per_4_4) (= Opp_4_4 6)))))
(assert
 (let (($x657 (= Opp_5_4 5)))
 (=> $x657 (= (+ Home_5_4 Home_4_4) 1))))
(assert
 (and (distinct Opp_0_0 Opp_0_1 Opp_0_2 Opp_0_3 Opp_0_4) true))
(assert
 (and (distinct Opp_1_0 Opp_1_1 Opp_1_2 Opp_1_3 Opp_1_4) true))
(assert
 (and (distinct Opp_2_0 Opp_2_1 Opp_2_2 Opp_2_3 Opp_2_4) true))
(assert
 (and (distinct Opp_3_0 Opp_3_1 Opp_3_2 Opp_3_3 Opp_3_4) true))
(assert
 (and (distinct Opp_4_0 Opp_4_1 Opp_4_2 Opp_4_3 Opp_4_4) true))
(assert
 (and (distinct Opp_5_0 Opp_5_1 Opp_5_2 Opp_5_3 Opp_5_4) true))
(assert
 (let (($x1875 (= Per_5_0 1)))
 (let ((?x1876 (ite $x1875 1 0)))
 (let ((?x1874 (ite (= Per_4_0 1) 1 0)))
 (let ((?x1872 (ite (= Per_3_0 1) 1 0)))
 (let ((?x1870 (ite (= Per_2_0 1) 1 0)))
 (let ((?x1868 (ite (= Per_1_0 1) 1 0)))
 (let (($x1865 (= Per_0_0 1)))
 (let ((?x1866 (ite $x1865 1 0)))
 (= (+ ?x1866 ?x1868 ?x1870 ?x1872 ?x1874 ?x1876) 2))))))))))
(assert
 (let ((?x1890 (ite (= Per_5_0 2) 1 0)))
 (let (($x1887 (= Per_4_0 2)))
 (let ((?x1888 (ite $x1887 1 0)))
 (let ((?x1886 (ite (= Per_3_0 2) 1 0)))
 (let ((?x1884 (ite (= Per_2_0 2) 1 0)))
 (let (($x1881 (= Per_1_0 2)))
 (let ((?x1882 (ite $x1881 1 0)))
 (let ((?x1880 (ite (= Per_0_0 2) 1 0)))
 (= (+ ?x1880 ?x1882 ?x1884 ?x1886 ?x1888 ?x1890) 2))))))))))
(assert
 (let ((?x1904 (ite (= Per_5_0 3) 1 0)))
 (let ((?x1902 (ite (= Per_4_0 3) 1 0)))
 (let (($x1899 (= Per_3_0 3)))
 (let ((?x1900 (ite $x1899 1 0)))
 (let (($x1897 (= Per_2_0 3)))
 (let ((?x1898 (ite $x1897 1 0)))
 (let ((?x1896 (ite (= Per_1_0 3) 1 0)))
 (let ((?x1894 (ite (= Per_0_0 3) 1 0)))
 (= (+ ?x1894 ?x1896 ?x1898 ?x1900 ?x1902 ?x1904) 2))))))))))
(assert
 (let ((?x1918 (ite (= Per_5_1 1) 1 0)))
 (let ((?x1916 (ite (= Per_4_1 1) 1 0)))
 (let ((?x1914 (ite (= Per_3_1 1) 1 0)))
 (let ((?x1912 (ite (= Per_2_1 1) 1 0)))
 (let ((?x1910 (ite (= Per_1_1 1) 1 0)))
 (let ((?x1908 (ite (= Per_0_1 1) 1 0)))
 (= (+ ?x1908 ?x1910 ?x1912 ?x1914 ?x1916 ?x1918) 2))))))))
(assert
 (let ((?x1932 (ite (= Per_5_1 2) 1 0)))
 (let ((?x1930 (ite (= Per_4_1 2) 1 0)))
 (let ((?x1928 (ite (= Per_3_1 2) 1 0)))
 (let ((?x1926 (ite (= Per_2_1 2) 1 0)))
 (let ((?x1924 (ite (= Per_1_1 2) 1 0)))
 (let ((?x1922 (ite (= Per_0_1 2) 1 0)))
 (= (+ ?x1922 ?x1924 ?x1926 ?x1928 ?x1930 ?x1932) 2))))))))
(assert
 (let ((?x1946 (ite (= Per_5_1 3) 1 0)))
 (let ((?x1944 (ite (= Per_4_1 3) 1 0)))
 (let ((?x1942 (ite (= Per_3_1 3) 1 0)))
 (let ((?x1940 (ite (= Per_2_1 3) 1 0)))
 (let ((?x1938 (ite (= Per_1_1 3) 1 0)))
 (let ((?x1936 (ite (= Per_0_1 3) 1 0)))
 (= (+ ?x1936 ?x1938 ?x1940 ?x1942 ?x1944 ?x1946) 2))))))))
(assert
 (let ((?x1960 (ite (= Per_5_2 1) 1 0)))
 (let ((?x1958 (ite (= Per_4_2 1) 1 0)))
 (let ((?x1956 (ite (= Per_3_2 1) 1 0)))
 (let ((?x1954 (ite (= Per_2_2 1) 1 0)))
 (let ((?x1952 (ite (= Per_1_2 1) 1 0)))
 (let ((?x1950 (ite (= Per_0_2 1) 1 0)))
 (= (+ ?x1950 ?x1952 ?x1954 ?x1956 ?x1958 ?x1960) 2))))))))
(assert
 (let ((?x1974 (ite (= Per_5_2 2) 1 0)))
 (let ((?x1972 (ite (= Per_4_2 2) 1 0)))
 (let ((?x1970 (ite (= Per_3_2 2) 1 0)))
 (let ((?x1968 (ite (= Per_2_2 2) 1 0)))
 (let ((?x1966 (ite (= Per_1_2 2) 1 0)))
 (let ((?x1964 (ite (= Per_0_2 2) 1 0)))
 (= (+ ?x1964 ?x1966 ?x1968 ?x1970 ?x1972 ?x1974) 2))))))))
(assert
 (let ((?x1988 (ite (= Per_5_2 3) 1 0)))
 (let ((?x1986 (ite (= Per_4_2 3) 1 0)))
 (let ((?x1984 (ite (= Per_3_2 3) 1 0)))
 (let ((?x1982 (ite (= Per_2_2 3) 1 0)))
 (let ((?x1980 (ite (= Per_1_2 3) 1 0)))
 (let ((?x1978 (ite (= Per_0_2 3) 1 0)))
 (= (+ ?x1978 ?x1980 ?x1982 ?x1984 ?x1986 ?x1988) 2))))))))
(assert
 (let ((?x2002 (ite (= Per_5_3 1) 1 0)))
 (let ((?x2000 (ite (= Per_4_3 1) 1 0)))
 (let ((?x1998 (ite (= Per_3_3 1) 1 0)))
 (let ((?x1996 (ite (= Per_2_3 1) 1 0)))
 (let ((?x1994 (ite (= Per_1_3 1) 1 0)))
 (let ((?x1992 (ite (= Per_0_3 1) 1 0)))
 (= (+ ?x1992 ?x1994 ?x1996 ?x1998 ?x2000 ?x2002) 2))))))))
(assert
 (let ((?x2016 (ite (= Per_5_3 2) 1 0)))
 (let ((?x2014 (ite (= Per_4_3 2) 1 0)))
 (let ((?x2012 (ite (= Per_3_3 2) 1 0)))
 (let ((?x2010 (ite (= Per_2_3 2) 1 0)))
 (let ((?x2008 (ite (= Per_1_3 2) 1 0)))
 (let ((?x2006 (ite (= Per_0_3 2) 1 0)))
 (= (+ ?x2006 ?x2008 ?x2010 ?x2012 ?x2014 ?x2016) 2))))))))
(assert
 (let ((?x2030 (ite (= Per_5_3 3) 1 0)))
 (let ((?x2028 (ite (= Per_4_3 3) 1 0)))
 (let ((?x2026 (ite (= Per_3_3 3) 1 0)))
 (let ((?x2024 (ite (= Per_2_3 3) 1 0)))
 (let ((?x2022 (ite (= Per_1_3 3) 1 0)))
 (let ((?x2020 (ite (= Per_0_3 3) 1 0)))
 (= (+ ?x2020 ?x2022 ?x2024 ?x2026 ?x2028 ?x2030) 2))))))))
(assert
 (let ((?x2044 (ite (= Per_5_4 1) 1 0)))
 (let ((?x2042 (ite (= Per_4_4 1) 1 0)))
 (let ((?x2040 (ite (= Per_3_4 1) 1 0)))
 (let ((?x2038 (ite (= Per_2_4 1) 1 0)))
 (let ((?x2036 (ite (= Per_1_4 1) 1 0)))
 (let ((?x2034 (ite (= Per_0_4 1) 1 0)))
 (= (+ ?x2034 ?x2036 ?x2038 ?x2040 ?x2042 ?x2044) 2))))))))
(assert
 (let ((?x2058 (ite (= Per_5_4 2) 1 0)))
 (let ((?x2056 (ite (= Per_4_4 2) 1 0)))
 (let ((?x2054 (ite (= Per_3_4 2) 1 0)))
 (let ((?x2052 (ite (= Per_2_4 2) 1 0)))
 (let ((?x2050 (ite (= Per_1_4 2) 1 0)))
 (let ((?x2048 (ite (= Per_0_4 2) 1 0)))
 (= (+ ?x2048 ?x2050 ?x2052 ?x2054 ?x2056 ?x2058) 2))))))))
(assert
 (let ((?x2072 (ite (= Per_5_4 3) 1 0)))
 (let ((?x2070 (ite (= Per_4_4 3) 1 0)))
 (let ((?x2068 (ite (= Per_3_4 3) 1 0)))
 (let ((?x2066 (ite (= Per_2_4 3) 1 0)))
 (let ((?x2064 (ite (= Per_1_4 3) 1 0)))
 (let ((?x2062 (ite (= Per_0_4 3) 1 0)))
 (= (+ ?x2062 ?x2064 ?x2066 ?x2068 ?x2070 ?x2072) 2))))))))
(assert
 (let ((?x2034 (ite (= Per_0_4 1) 1 0)))
 (let ((?x1992 (ite (= Per_0_3 1) 1 0)))
 (let ((?x1950 (ite (= Per_0_2 1) 1 0)))
 (let ((?x1908 (ite (= Per_0_1 1) 1 0)))
 (let (($x1865 (= Per_0_0 1)))
 (let ((?x1866 (ite $x1865 1 0)))
 (<= (+ ?x1866 ?x1908 ?x1950 ?x1992 ?x2034) 2))))))))
(assert
 (let ((?x2048 (ite (= Per_0_4 2) 1 0)))
 (let ((?x2006 (ite (= Per_0_3 2) 1 0)))
 (let ((?x1964 (ite (= Per_0_2 2) 1 0)))
 (let ((?x1922 (ite (= Per_0_1 2) 1 0)))
 (let ((?x1880 (ite (= Per_0_0 2) 1 0)))
 (<= (+ ?x1880 ?x1922 ?x1964 ?x2006 ?x2048) 2)))))))
(assert
 (let ((?x2062 (ite (= Per_0_4 3) 1 0)))
 (let ((?x2020 (ite (= Per_0_3 3) 1 0)))
 (let ((?x1978 (ite (= Per_0_2 3) 1 0)))
 (let ((?x1936 (ite (= Per_0_1 3) 1 0)))
 (let ((?x1894 (ite (= Per_0_0 3) 1 0)))
 (<= (+ ?x1894 ?x1936 ?x1978 ?x2020 ?x2062) 2)))))))
(assert
 (let ((?x2036 (ite (= Per_1_4 1) 1 0)))
 (let ((?x1994 (ite (= Per_1_3 1) 1 0)))
 (let ((?x1952 (ite (= Per_1_2 1) 1 0)))
 (let ((?x1910 (ite (= Per_1_1 1) 1 0)))
 (let ((?x1868 (ite (= Per_1_0 1) 1 0)))
 (<= (+ ?x1868 ?x1910 ?x1952 ?x1994 ?x2036) 2)))))))
(assert
 (let ((?x2050 (ite (= Per_1_4 2) 1 0)))
 (let ((?x2008 (ite (= Per_1_3 2) 1 0)))
 (let ((?x1966 (ite (= Per_1_2 2) 1 0)))
 (let ((?x1924 (ite (= Per_1_1 2) 1 0)))
 (let (($x1881 (= Per_1_0 2)))
 (let ((?x1882 (ite $x1881 1 0)))
 (<= (+ ?x1882 ?x1924 ?x1966 ?x2008 ?x2050) 2))))))))
(assert
 (let ((?x2064 (ite (= Per_1_4 3) 1 0)))
 (let ((?x2022 (ite (= Per_1_3 3) 1 0)))
 (let ((?x1980 (ite (= Per_1_2 3) 1 0)))
 (let ((?x1938 (ite (= Per_1_1 3) 1 0)))
 (let ((?x1896 (ite (= Per_1_0 3) 1 0)))
 (<= (+ ?x1896 ?x1938 ?x1980 ?x2022 ?x2064) 2)))))))
(assert
 (let ((?x2038 (ite (= Per_2_4 1) 1 0)))
 (let ((?x1996 (ite (= Per_2_3 1) 1 0)))
 (let ((?x1954 (ite (= Per_2_2 1) 1 0)))
 (let ((?x1912 (ite (= Per_2_1 1) 1 0)))
 (let ((?x1870 (ite (= Per_2_0 1) 1 0)))
 (<= (+ ?x1870 ?x1912 ?x1954 ?x1996 ?x2038) 2)))))))
(assert
 (let ((?x2052 (ite (= Per_2_4 2) 1 0)))
 (let ((?x2010 (ite (= Per_2_3 2) 1 0)))
 (let ((?x1968 (ite (= Per_2_2 2) 1 0)))
 (let ((?x1926 (ite (= Per_2_1 2) 1 0)))
 (let ((?x1884 (ite (= Per_2_0 2) 1 0)))
 (<= (+ ?x1884 ?x1926 ?x1968 ?x2010 ?x2052) 2)))))))
(assert
 (let ((?x2066 (ite (= Per_2_4 3) 1 0)))
 (let ((?x2024 (ite (= Per_2_3 3) 1 0)))
 (let ((?x1982 (ite (= Per_2_2 3) 1 0)))
 (let ((?x1940 (ite (= Per_2_1 3) 1 0)))
 (let (($x1897 (= Per_2_0 3)))
 (let ((?x1898 (ite $x1897 1 0)))
 (<= (+ ?x1898 ?x1940 ?x1982 ?x2024 ?x2066) 2))))))))
(assert
 (let ((?x2040 (ite (= Per_3_4 1) 1 0)))
 (let ((?x1998 (ite (= Per_3_3 1) 1 0)))
 (let ((?x1956 (ite (= Per_3_2 1) 1 0)))
 (let ((?x1914 (ite (= Per_3_1 1) 1 0)))
 (let ((?x1872 (ite (= Per_3_0 1) 1 0)))
 (<= (+ ?x1872 ?x1914 ?x1956 ?x1998 ?x2040) 2)))))))
(assert
 (let ((?x2054 (ite (= Per_3_4 2) 1 0)))
 (let ((?x2012 (ite (= Per_3_3 2) 1 0)))
 (let ((?x1970 (ite (= Per_3_2 2) 1 0)))
 (let ((?x1928 (ite (= Per_3_1 2) 1 0)))
 (let ((?x1886 (ite (= Per_3_0 2) 1 0)))
 (<= (+ ?x1886 ?x1928 ?x1970 ?x2012 ?x2054) 2)))))))
(assert
 (let ((?x2068 (ite (= Per_3_4 3) 1 0)))
 (let ((?x2026 (ite (= Per_3_3 3) 1 0)))
 (let ((?x1984 (ite (= Per_3_2 3) 1 0)))
 (let ((?x1942 (ite (= Per_3_1 3) 1 0)))
 (let (($x1899 (= Per_3_0 3)))
 (let ((?x1900 (ite $x1899 1 0)))
 (<= (+ ?x1900 ?x1942 ?x1984 ?x2026 ?x2068) 2))))))))
(assert
 (let ((?x2042 (ite (= Per_4_4 1) 1 0)))
 (let ((?x2000 (ite (= Per_4_3 1) 1 0)))
 (let ((?x1958 (ite (= Per_4_2 1) 1 0)))
 (let ((?x1916 (ite (= Per_4_1 1) 1 0)))
 (let ((?x1874 (ite (= Per_4_0 1) 1 0)))
 (<= (+ ?x1874 ?x1916 ?x1958 ?x2000 ?x2042) 2)))))))
(assert
 (let ((?x2056 (ite (= Per_4_4 2) 1 0)))
 (let ((?x2014 (ite (= Per_4_3 2) 1 0)))
 (let ((?x1972 (ite (= Per_4_2 2) 1 0)))
 (let ((?x1930 (ite (= Per_4_1 2) 1 0)))
 (let (($x1887 (= Per_4_0 2)))
 (let ((?x1888 (ite $x1887 1 0)))
 (<= (+ ?x1888 ?x1930 ?x1972 ?x2014 ?x2056) 2))))))))
(assert
 (let ((?x2070 (ite (= Per_4_4 3) 1 0)))
 (let ((?x2028 (ite (= Per_4_3 3) 1 0)))
 (let ((?x1986 (ite (= Per_4_2 3) 1 0)))
 (let ((?x1944 (ite (= Per_4_1 3) 1 0)))
 (let ((?x1902 (ite (= Per_4_0 3) 1 0)))
 (<= (+ ?x1902 ?x1944 ?x1986 ?x2028 ?x2070) 2)))))))
(assert
 (let ((?x2044 (ite (= Per_5_4 1) 1 0)))
 (let ((?x2002 (ite (= Per_5_3 1) 1 0)))
 (let ((?x1960 (ite (= Per_5_2 1) 1 0)))
 (let ((?x1918 (ite (= Per_5_1 1) 1 0)))
 (let (($x1875 (= Per_5_0 1)))
 (let ((?x1876 (ite $x1875 1 0)))
 (<= (+ ?x1876 ?x1918 ?x1960 ?x2002 ?x2044) 2))))))))
(assert
 (let ((?x2058 (ite (= Per_5_4 2) 1 0)))
 (let ((?x2016 (ite (= Per_5_3 2) 1 0)))
 (let ((?x1974 (ite (= Per_5_2 2) 1 0)))
 (let ((?x1932 (ite (= Per_5_1 2) 1 0)))
 (let ((?x1890 (ite (= Per_5_0 2) 1 0)))
 (<= (+ ?x1890 ?x1932 ?x1974 ?x2016 ?x2058) 2)))))))
(assert
 (let ((?x2072 (ite (= Per_5_4 3) 1 0)))
 (let ((?x2030 (ite (= Per_5_3 3) 1 0)))
 (let ((?x1988 (ite (= Per_5_2 3) 1 0)))
 (let ((?x1946 (ite (= Per_5_1 3) 1 0)))
 (let ((?x1904 (ite (= Per_5_0 3) 1 0)))
 (<= (+ ?x1904 ?x1946 ?x1988 ?x2030 ?x2072) 2)))))))
(assert
 (let ((?x2118 (- (* 2 (+ Home_0_0 Home_0_1 Home_0_2 Home_0_3 Home_0_4)) 5)))
 (<= (ite (> ?x2118 0) ?x2118 (- ?x2118)) 1)))
(assert
 (let ((?x2162 (- (* 2 (+ Home_1_0 Home_1_1 Home_1_2 Home_1_3 Home_1_4)) 5)))
 (<= (ite (> ?x2162 0) ?x2162 (- ?x2162)) 1)))
(assert
 (let ((?x2199 (- (* 2 (+ Home_2_0 Home_2_1 Home_2_2 Home_2_3 Home_2_4)) 5)))
 (<= (ite (> ?x2199 0) ?x2199 (- ?x2199)) 1)))
(assert
 (let ((?x2236 (- (* 2 (+ Home_3_0 Home_3_1 Home_3_2 Home_3_3 Home_3_4)) 5)))
 (<= (ite (> ?x2236 0) ?x2236 (- ?x2236)) 1)))
(assert
 (let ((?x2273 (- (* 2 (+ Home_4_0 Home_4_1 Home_4_2 Home_4_3 Home_4_4)) 5)))
 (<= (ite (> ?x2273 0) ?x2273 (- ?x2273)) 1)))
(assert
 (let ((?x2310 (- (* 2 (+ Home_5_0 Home_5_1 Home_5_2 Home_5_3 Home_5_4)) 5)))
 (<= (ite (> ?x2310 0) ?x2310 (- ?x2310)) 1)))
(assert
 (let ((?x2111 (+ Home_0_0 Home_0_1 Home_0_2 Home_0_3 Home_0_4)))
 (= ?x2111 (+ 2 (ite High_0 1 0)))))
(assert
 (let ((?x2356 (ite High_1 1 0)))
 (let ((?x2357 (+ 2 ?x2356)))
 (let ((?x2112 (+ Home_1_0 Home_1_1 Home_1_2 Home_1_3 Home_1_4)))
 (= ?x2112 ?x2357)))))
(assert
 (let ((?x2362 (ite High_2 1 0)))
 (let ((?x2363 (+ 2 ?x2362)))
 (let ((?x2113 (+ Home_2_0 Home_2_1 Home_2_2 Home_2_3 Home_2_4)))
 (= ?x2113 ?x2363)))))
(assert
 (let ((?x2368 (ite High_3 1 0)))
 (let ((?x2369 (+ 2 ?x2368)))
 (let ((?x2114 (+ Home_3_0 Home_3_1 Home_3_2 Home_3_3 Home_3_4)))
 (= ?x2114 ?x2369)))))
(assert
 (let ((?x2374 (ite High_4 1 0)))
 (let ((?x2375 (+ 2 ?x2374)))
 (let ((?x2115 (+ Home_4_0 Home_4_1 Home_4_2 Home_4_3 Home_4_4)))
 (= ?x2115 ?x2375)))))
(assert
 (let ((?x2380 (ite High_5 1 0)))
 (let ((?x2381 (+ 2 ?x2380)))
 (let ((?x2116 (+ Home_5_0 Home_5_1 Home_5_2 Home_5_3 Home_5_4)))
 (= ?x2116 ?x2381)))))
(assert
 (let ((?x2380 (ite High_5 1 0)))
 (let ((?x2374 (ite High_4 1 0)))
 (let ((?x2368 (ite High_3 1 0)))
 (let ((?x2362 (ite High_2 1 0)))
 (let ((?x2356 (ite High_1 1 0)))
 (let ((?x2350 (ite High_0 1 0)))
 (= (+ ?x2350 ?x2356 ?x2362 ?x2368 ?x2374 ?x2380) 3))))))))
(assert
 (= Home_0_0 1))
(assert
 (= Per_0_0 1))
(assert
 (= Per_5_0 1))
(assert
 (= Per_1_0 2))
(assert
 (= Per_4_0 2))
(assert
 (= Per_2_0 3))
(assert
 (= Per_3_0 3))
(assert
 (<= Per_0_0 Per_0_1))
(assert
 (<= Per_0_1 Per_0_2))
(assert
 (<= Per_0_2 Per_0_3))
(assert
 (<= Per_0_3 Per_0_4))
(check-sat)
(get-model)