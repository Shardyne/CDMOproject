(set-logic QF_LIA)
(set-option :produce-models true)
; benchmark generated from python API
(set-info :status unknown)
(declare-fun Per_0_0 () Int)
(declare-fun Opp_0_0 () Int)
(declare-fun Home_0_0 () Int)
(declare-fun Per_0_1 () Int)
(declare-fun Opp_0_1 () Int)
(declare-fun Home_0_1 () Int)
(declare-fun Per_0_2 () Int)
(declare-fun Opp_0_2 () Int)
(declare-fun Home_0_2 () Int)
(declare-fun Per_0_3 () Int)
(declare-fun Opp_0_3 () Int)
(declare-fun Home_0_3 () Int)
(declare-fun Per_0_4 () Int)
(declare-fun Opp_0_4 () Int)
(declare-fun Home_0_4 () Int)
(declare-fun Per_1_0 () Int)
(declare-fun Opp_1_0 () Int)
(declare-fun Home_1_0 () Int)
(declare-fun Per_1_1 () Int)
(declare-fun Opp_1_1 () Int)
(declare-fun Home_1_1 () Int)
(declare-fun Per_1_2 () Int)
(declare-fun Opp_1_2 () Int)
(declare-fun Home_1_2 () Int)
(declare-fun Per_1_3 () Int)
(declare-fun Opp_1_3 () Int)
(declare-fun Home_1_3 () Int)
(declare-fun Per_1_4 () Int)
(declare-fun Opp_1_4 () Int)
(declare-fun Home_1_4 () Int)
(declare-fun Per_2_0 () Int)
(declare-fun Opp_2_0 () Int)
(declare-fun Home_2_0 () Int)
(declare-fun Per_2_1 () Int)
(declare-fun Opp_2_1 () Int)
(declare-fun Home_2_1 () Int)
(declare-fun Per_2_2 () Int)
(declare-fun Opp_2_2 () Int)
(declare-fun Home_2_2 () Int)
(declare-fun Per_2_3 () Int)
(declare-fun Opp_2_3 () Int)
(declare-fun Home_2_3 () Int)
(declare-fun Per_2_4 () Int)
(declare-fun Opp_2_4 () Int)
(declare-fun Home_2_4 () Int)
(declare-fun Per_3_0 () Int)
(declare-fun Opp_3_0 () Int)
(declare-fun Home_3_0 () Int)
(declare-fun Per_3_1 () Int)
(declare-fun Opp_3_1 () Int)
(declare-fun Home_3_1 () Int)
(declare-fun Per_3_2 () Int)
(declare-fun Opp_3_2 () Int)
(declare-fun Home_3_2 () Int)
(declare-fun Per_3_3 () Int)
(declare-fun Opp_3_3 () Int)
(declare-fun Home_3_3 () Int)
(declare-fun Per_3_4 () Int)
(declare-fun Opp_3_4 () Int)
(declare-fun Home_3_4 () Int)
(declare-fun Per_4_0 () Int)
(declare-fun Opp_4_0 () Int)
(declare-fun Home_4_0 () Int)
(declare-fun Per_4_1 () Int)
(declare-fun Opp_4_1 () Int)
(declare-fun Home_4_1 () Int)
(declare-fun Per_4_2 () Int)
(declare-fun Opp_4_2 () Int)
(declare-fun Home_4_2 () Int)
(declare-fun Per_4_3 () Int)
(declare-fun Opp_4_3 () Int)
(declare-fun Home_4_3 () Int)
(declare-fun Per_4_4 () Int)
(declare-fun Opp_4_4 () Int)
(declare-fun Home_4_4 () Int)
(declare-fun Per_5_0 () Int)
(declare-fun Opp_5_0 () Int)
(declare-fun Home_5_0 () Int)
(declare-fun Per_5_1 () Int)
(declare-fun Opp_5_1 () Int)
(declare-fun Home_5_1 () Int)
(declare-fun Per_5_2 () Int)
(declare-fun Opp_5_2 () Int)
(declare-fun Home_5_2 () Int)
(declare-fun Per_5_3 () Int)
(declare-fun Opp_5_3 () Int)
(declare-fun Home_5_3 () Int)
(declare-fun Per_5_4 () Int)
(declare-fun Opp_5_4 () Int)
(declare-fun Home_5_4 () Int)
(declare-fun MinTeam_0_2 () Int)
(declare-fun MinTeam_0_1 () Int)
(declare-fun MinTeam_0_0 () Int)
(declare-fun MinTeam_1_2 () Int)
(declare-fun MinTeam_1_1 () Int)
(declare-fun MinTeam_1_0 () Int)
(declare-fun MinTeam_2_2 () Int)
(declare-fun MinTeam_2_1 () Int)
(declare-fun MinTeam_2_0 () Int)
(declare-fun MinTeam_3_2 () Int)
(declare-fun MinTeam_3_1 () Int)
(declare-fun MinTeam_3_0 () Int)
(declare-fun MinTeam_4_2 () Int)
(declare-fun MinTeam_4_1 () Int)
(declare-fun MinTeam_4_0 () Int)
(assert
 (let (($x98 (<= Per_0_0 3)))
 (let (($x96 (>= Per_0_0 1)))
 (and $x96 $x98))))
(assert
 (let (($x119 (<= Opp_0_0 6)))
 (let (($x117 (>= Opp_0_0 1)))
 (and $x117 $x119))))
(assert
 (let (($x123 (= Home_0_0 1)))
 (or (= Home_0_0 0) $x123)))
(assert
 (and (distinct Opp_0_0 1) true))
(assert
 (let (($x129 (<= Per_0_1 3)))
 (let (($x128 (>= Per_0_1 1)))
 (and $x128 $x129))))
(assert
 (let (($x132 (<= Opp_0_1 6)))
 (let (($x131 (>= Opp_0_1 1)))
 (and $x131 $x132))))
(assert
 (let (($x135 (= Home_0_1 1)))
 (or (= Home_0_1 0) $x135)))
(assert
 (and (distinct Opp_0_1 1) true))
(assert
 (let (($x141 (<= Per_0_2 3)))
 (let (($x140 (>= Per_0_2 1)))
 (and $x140 $x141))))
(assert
 (let (($x144 (<= Opp_0_2 6)))
 (let (($x143 (>= Opp_0_2 1)))
 (and $x143 $x144))))
(assert
 (let (($x147 (= Home_0_2 1)))
 (or (= Home_0_2 0) $x147)))
(assert
 (and (distinct Opp_0_2 1) true))
(assert
 (let (($x153 (<= Per_0_3 3)))
 (let (($x152 (>= Per_0_3 1)))
 (and $x152 $x153))))
(assert
 (let (($x156 (<= Opp_0_3 6)))
 (let (($x155 (>= Opp_0_3 1)))
 (and $x155 $x156))))
(assert
 (let (($x159 (= Home_0_3 1)))
 (or (= Home_0_3 0) $x159)))
(assert
 (and (distinct Opp_0_3 1) true))
(assert
 (let (($x165 (<= Per_0_4 3)))
 (let (($x164 (>= Per_0_4 1)))
 (and $x164 $x165))))
(assert
 (let (($x168 (<= Opp_0_4 6)))
 (let (($x167 (>= Opp_0_4 1)))
 (and $x167 $x168))))
(assert
 (let (($x171 (= Home_0_4 1)))
 (or (= Home_0_4 0) $x171)))
(assert
 (and (distinct Opp_0_4 1) true))
(assert
 (let (($x177 (<= Per_1_0 3)))
 (let (($x176 (>= Per_1_0 1)))
 (and $x176 $x177))))
(assert
 (let (($x180 (<= Opp_1_0 6)))
 (let (($x179 (>= Opp_1_0 1)))
 (and $x179 $x180))))
(assert
 (let (($x183 (= Home_1_0 1)))
 (or (= Home_1_0 0) $x183)))
(assert
 (and (distinct Opp_1_0 2) true))
(assert
 (let (($x190 (<= Per_1_1 3)))
 (let (($x189 (>= Per_1_1 1)))
 (and $x189 $x190))))
(assert
 (let (($x193 (<= Opp_1_1 6)))
 (let (($x192 (>= Opp_1_1 1)))
 (and $x192 $x193))))
(assert
 (let (($x196 (= Home_1_1 1)))
 (or (= Home_1_1 0) $x196)))
(assert
 (and (distinct Opp_1_1 2) true))
(assert
 (let (($x202 (<= Per_1_2 3)))
 (let (($x201 (>= Per_1_2 1)))
 (and $x201 $x202))))
(assert
 (let (($x205 (<= Opp_1_2 6)))
 (let (($x204 (>= Opp_1_2 1)))
 (and $x204 $x205))))
(assert
 (let (($x208 (= Home_1_2 1)))
 (or (= Home_1_2 0) $x208)))
(assert
 (and (distinct Opp_1_2 2) true))
(assert
 (let (($x214 (<= Per_1_3 3)))
 (let (($x213 (>= Per_1_3 1)))
 (and $x213 $x214))))
(assert
 (let (($x217 (<= Opp_1_3 6)))
 (let (($x216 (>= Opp_1_3 1)))
 (and $x216 $x217))))
(assert
 (let (($x220 (= Home_1_3 1)))
 (or (= Home_1_3 0) $x220)))
(assert
 (and (distinct Opp_1_3 2) true))
(assert
 (let (($x226 (<= Per_1_4 3)))
 (let (($x225 (>= Per_1_4 1)))
 (and $x225 $x226))))
(assert
 (let (($x229 (<= Opp_1_4 6)))
 (let (($x228 (>= Opp_1_4 1)))
 (and $x228 $x229))))
(assert
 (let (($x232 (= Home_1_4 1)))
 (or (= Home_1_4 0) $x232)))
(assert
 (and (distinct Opp_1_4 2) true))
(assert
 (let (($x238 (<= Per_2_0 3)))
 (let (($x237 (>= Per_2_0 1)))
 (and $x237 $x238))))
(assert
 (let (($x241 (<= Opp_2_0 6)))
 (let (($x240 (>= Opp_2_0 1)))
 (and $x240 $x241))))
(assert
 (let (($x244 (= Home_2_0 1)))
 (or (= Home_2_0 0) $x244)))
(assert
 (and (distinct Opp_2_0 3) true))
(assert
 (let (($x250 (<= Per_2_1 3)))
 (let (($x249 (>= Per_2_1 1)))
 (and $x249 $x250))))
(assert
 (let (($x253 (<= Opp_2_1 6)))
 (let (($x252 (>= Opp_2_1 1)))
 (and $x252 $x253))))
(assert
 (let (($x256 (= Home_2_1 1)))
 (or (= Home_2_1 0) $x256)))
(assert
 (and (distinct Opp_2_1 3) true))
(assert
 (let (($x262 (<= Per_2_2 3)))
 (let (($x261 (>= Per_2_2 1)))
 (and $x261 $x262))))
(assert
 (let (($x265 (<= Opp_2_2 6)))
 (let (($x264 (>= Opp_2_2 1)))
 (and $x264 $x265))))
(assert
 (let (($x268 (= Home_2_2 1)))
 (or (= Home_2_2 0) $x268)))
(assert
 (and (distinct Opp_2_2 3) true))
(assert
 (let (($x274 (<= Per_2_3 3)))
 (let (($x273 (>= Per_2_3 1)))
 (and $x273 $x274))))
(assert
 (let (($x277 (<= Opp_2_3 6)))
 (let (($x276 (>= Opp_2_3 1)))
 (and $x276 $x277))))
(assert
 (let (($x280 (= Home_2_3 1)))
 (or (= Home_2_3 0) $x280)))
(assert
 (and (distinct Opp_2_3 3) true))
(assert
 (let (($x286 (<= Per_2_4 3)))
 (let (($x285 (>= Per_2_4 1)))
 (and $x285 $x286))))
(assert
 (let (($x289 (<= Opp_2_4 6)))
 (let (($x288 (>= Opp_2_4 1)))
 (and $x288 $x289))))
(assert
 (let (($x292 (= Home_2_4 1)))
 (or (= Home_2_4 0) $x292)))
(assert
 (and (distinct Opp_2_4 3) true))
(assert
 (let (($x298 (<= Per_3_0 3)))
 (let (($x297 (>= Per_3_0 1)))
 (and $x297 $x298))))
(assert
 (let (($x301 (<= Opp_3_0 6)))
 (let (($x300 (>= Opp_3_0 1)))
 (and $x300 $x301))))
(assert
 (let (($x304 (= Home_3_0 1)))
 (or (= Home_3_0 0) $x304)))
(assert
 (and (distinct Opp_3_0 4) true))
(assert
 (let (($x311 (<= Per_3_1 3)))
 (let (($x310 (>= Per_3_1 1)))
 (and $x310 $x311))))
(assert
 (let (($x314 (<= Opp_3_1 6)))
 (let (($x313 (>= Opp_3_1 1)))
 (and $x313 $x314))))
(assert
 (let (($x317 (= Home_3_1 1)))
 (or (= Home_3_1 0) $x317)))
(assert
 (and (distinct Opp_3_1 4) true))
(assert
 (let (($x323 (<= Per_3_2 3)))
 (let (($x322 (>= Per_3_2 1)))
 (and $x322 $x323))))
(assert
 (let (($x326 (<= Opp_3_2 6)))
 (let (($x325 (>= Opp_3_2 1)))
 (and $x325 $x326))))
(assert
 (let (($x329 (= Home_3_2 1)))
 (or (= Home_3_2 0) $x329)))
(assert
 (and (distinct Opp_3_2 4) true))
(assert
 (let (($x335 (<= Per_3_3 3)))
 (let (($x334 (>= Per_3_3 1)))
 (and $x334 $x335))))
(assert
 (let (($x338 (<= Opp_3_3 6)))
 (let (($x337 (>= Opp_3_3 1)))
 (and $x337 $x338))))
(assert
 (let (($x341 (= Home_3_3 1)))
 (or (= Home_3_3 0) $x341)))
(assert
 (and (distinct Opp_3_3 4) true))
(assert
 (let (($x347 (<= Per_3_4 3)))
 (let (($x346 (>= Per_3_4 1)))
 (and $x346 $x347))))
(assert
 (let (($x350 (<= Opp_3_4 6)))
 (let (($x349 (>= Opp_3_4 1)))
 (and $x349 $x350))))
(assert
 (let (($x353 (= Home_3_4 1)))
 (or (= Home_3_4 0) $x353)))
(assert
 (and (distinct Opp_3_4 4) true))
(assert
 (let (($x359 (<= Per_4_0 3)))
 (let (($x358 (>= Per_4_0 1)))
 (and $x358 $x359))))
(assert
 (let (($x362 (<= Opp_4_0 6)))
 (let (($x361 (>= Opp_4_0 1)))
 (and $x361 $x362))))
(assert
 (let (($x365 (= Home_4_0 1)))
 (or (= Home_4_0 0) $x365)))
(assert
 (and (distinct Opp_4_0 5) true))
(assert
 (let (($x372 (<= Per_4_1 3)))
 (let (($x371 (>= Per_4_1 1)))
 (and $x371 $x372))))
(assert
 (let (($x375 (<= Opp_4_1 6)))
 (let (($x374 (>= Opp_4_1 1)))
 (and $x374 $x375))))
(assert
 (let (($x378 (= Home_4_1 1)))
 (or (= Home_4_1 0) $x378)))
(assert
 (and (distinct Opp_4_1 5) true))
(assert
 (let (($x384 (<= Per_4_2 3)))
 (let (($x383 (>= Per_4_2 1)))
 (and $x383 $x384))))
(assert
 (let (($x387 (<= Opp_4_2 6)))
 (let (($x386 (>= Opp_4_2 1)))
 (and $x386 $x387))))
(assert
 (let (($x390 (= Home_4_2 1)))
 (or (= Home_4_2 0) $x390)))
(assert
 (and (distinct Opp_4_2 5) true))
(assert
 (let (($x396 (<= Per_4_3 3)))
 (let (($x395 (>= Per_4_3 1)))
 (and $x395 $x396))))
(assert
 (let (($x399 (<= Opp_4_3 6)))
 (let (($x398 (>= Opp_4_3 1)))
 (and $x398 $x399))))
(assert
 (let (($x402 (= Home_4_3 1)))
 (or (= Home_4_3 0) $x402)))
(assert
 (and (distinct Opp_4_3 5) true))
(assert
 (let (($x408 (<= Per_4_4 3)))
 (let (($x407 (>= Per_4_4 1)))
 (and $x407 $x408))))
(assert
 (let (($x411 (<= Opp_4_4 6)))
 (let (($x410 (>= Opp_4_4 1)))
 (and $x410 $x411))))
(assert
 (let (($x414 (= Home_4_4 1)))
 (or (= Home_4_4 0) $x414)))
(assert
 (and (distinct Opp_4_4 5) true))
(assert
 (let (($x420 (<= Per_5_0 3)))
 (let (($x419 (>= Per_5_0 1)))
 (and $x419 $x420))))
(assert
 (let (($x423 (<= Opp_5_0 6)))
 (let (($x422 (>= Opp_5_0 1)))
 (and $x422 $x423))))
(assert
 (let (($x426 (= Home_5_0 1)))
 (or (= Home_5_0 0) $x426)))
(assert
 (and (distinct Opp_5_0 6) true))
(assert
 (let (($x432 (<= Per_5_1 3)))
 (let (($x431 (>= Per_5_1 1)))
 (and $x431 $x432))))
(assert
 (let (($x435 (<= Opp_5_1 6)))
 (let (($x434 (>= Opp_5_1 1)))
 (and $x434 $x435))))
(assert
 (let (($x438 (= Home_5_1 1)))
 (or (= Home_5_1 0) $x438)))
(assert
 (and (distinct Opp_5_1 6) true))
(assert
 (let (($x444 (<= Per_5_2 3)))
 (let (($x443 (>= Per_5_2 1)))
 (and $x443 $x444))))
(assert
 (let (($x447 (<= Opp_5_2 6)))
 (let (($x446 (>= Opp_5_2 1)))
 (and $x446 $x447))))
(assert
 (let (($x450 (= Home_5_2 1)))
 (or (= Home_5_2 0) $x450)))
(assert
 (and (distinct Opp_5_2 6) true))
(assert
 (let (($x456 (<= Per_5_3 3)))
 (let (($x455 (>= Per_5_3 1)))
 (and $x455 $x456))))
(assert
 (let (($x459 (<= Opp_5_3 6)))
 (let (($x458 (>= Opp_5_3 1)))
 (and $x458 $x459))))
(assert
 (let (($x462 (= Home_5_3 1)))
 (or (= Home_5_3 0) $x462)))
(assert
 (and (distinct Opp_5_3 6) true))
(assert
 (let (($x468 (<= Per_5_4 3)))
 (let (($x467 (>= Per_5_4 1)))
 (and $x467 $x468))))
(assert
 (let (($x471 (<= Opp_5_4 6)))
 (let (($x470 (>= Opp_5_4 1)))
 (and $x470 $x471))))
(assert
 (let (($x474 (= Home_5_4 1)))
 (or (= Home_5_4 0) $x474)))
(assert
 (and (distinct Opp_5_4 6) true))
(assert
 (let (($x480 (= Opp_1_0 1)))
 (let (($x479 (= Opp_0_0 2)))
 (=> $x479 $x480))))
(assert
 (let (($x485 (= (+ Home_0_0 Home_1_0) 1)))
 (let (($x479 (= Opp_0_0 2)))
 (=> $x479 $x485))))
(assert
 (let (($x488 (= Per_0_0 Per_1_0)))
 (let (($x479 (= Opp_0_0 2)))
 (=> $x479 $x488))))
(assert
 (let (($x492 (= Opp_1_1 1)))
 (let (($x491 (= Opp_0_1 2)))
 (=> $x491 $x492))))
(assert
 (let (($x497 (= (+ Home_0_1 Home_1_1) 1)))
 (let (($x491 (= Opp_0_1 2)))
 (=> $x491 $x497))))
(assert
 (let (($x500 (= Per_0_1 Per_1_1)))
 (let (($x491 (= Opp_0_1 2)))
 (=> $x491 $x500))))
(assert
 (let (($x504 (= Opp_1_2 1)))
 (let (($x503 (= Opp_0_2 2)))
 (=> $x503 $x504))))
(assert
 (let (($x509 (= (+ Home_0_2 Home_1_2) 1)))
 (let (($x503 (= Opp_0_2 2)))
 (=> $x503 $x509))))
(assert
 (let (($x512 (= Per_0_2 Per_1_2)))
 (let (($x503 (= Opp_0_2 2)))
 (=> $x503 $x512))))
(assert
 (let (($x516 (= Opp_1_3 1)))
 (let (($x515 (= Opp_0_3 2)))
 (=> $x515 $x516))))
(assert
 (let (($x521 (= (+ Home_0_3 Home_1_3) 1)))
 (let (($x515 (= Opp_0_3 2)))
 (=> $x515 $x521))))
(assert
 (let (($x524 (= Per_0_3 Per_1_3)))
 (let (($x515 (= Opp_0_3 2)))
 (=> $x515 $x524))))
(assert
 (let (($x528 (= Opp_1_4 1)))
 (let (($x527 (= Opp_0_4 2)))
 (=> $x527 $x528))))
(assert
 (let (($x533 (= (+ Home_0_4 Home_1_4) 1)))
 (let (($x527 (= Opp_0_4 2)))
 (=> $x527 $x533))))
(assert
 (let (($x536 (= Per_0_4 Per_1_4)))
 (let (($x527 (= Opp_0_4 2)))
 (=> $x527 $x536))))
(assert
 (let (($x540 (= Opp_2_0 1)))
 (let (($x539 (= Opp_0_0 3)))
 (=> $x539 $x540))))
(assert
 (let (($x545 (= (+ Home_0_0 Home_2_0) 1)))
 (let (($x539 (= Opp_0_0 3)))
 (=> $x539 $x545))))
(assert
 (let (($x548 (= Per_0_0 Per_2_0)))
 (let (($x539 (= Opp_0_0 3)))
 (=> $x539 $x548))))
(assert
 (let (($x552 (= Opp_2_1 1)))
 (let (($x551 (= Opp_0_1 3)))
 (=> $x551 $x552))))
(assert
 (let (($x557 (= (+ Home_0_1 Home_2_1) 1)))
 (let (($x551 (= Opp_0_1 3)))
 (=> $x551 $x557))))
(assert
 (let (($x560 (= Per_0_1 Per_2_1)))
 (let (($x551 (= Opp_0_1 3)))
 (=> $x551 $x560))))
(assert
 (let (($x564 (= Opp_2_2 1)))
 (let (($x563 (= Opp_0_2 3)))
 (=> $x563 $x564))))
(assert
 (let (($x569 (= (+ Home_0_2 Home_2_2) 1)))
 (let (($x563 (= Opp_0_2 3)))
 (=> $x563 $x569))))
(assert
 (let (($x572 (= Per_0_2 Per_2_2)))
 (let (($x563 (= Opp_0_2 3)))
 (=> $x563 $x572))))
(assert
 (let (($x576 (= Opp_2_3 1)))
 (let (($x575 (= Opp_0_3 3)))
 (=> $x575 $x576))))
(assert
 (let (($x581 (= (+ Home_0_3 Home_2_3) 1)))
 (let (($x575 (= Opp_0_3 3)))
 (=> $x575 $x581))))
(assert
 (let (($x584 (= Per_0_3 Per_2_3)))
 (let (($x575 (= Opp_0_3 3)))
 (=> $x575 $x584))))
(assert
 (let (($x588 (= Opp_2_4 1)))
 (let (($x587 (= Opp_0_4 3)))
 (=> $x587 $x588))))
(assert
 (let (($x593 (= (+ Home_0_4 Home_2_4) 1)))
 (let (($x587 (= Opp_0_4 3)))
 (=> $x587 $x593))))
(assert
 (let (($x596 (= Per_0_4 Per_2_4)))
 (let (($x587 (= Opp_0_4 3)))
 (=> $x587 $x596))))
(assert
 (let (($x600 (= Opp_3_0 1)))
 (let (($x599 (= Opp_0_0 4)))
 (=> $x599 $x600))))
(assert
 (let (($x605 (= (+ Home_0_0 Home_3_0) 1)))
 (let (($x599 (= Opp_0_0 4)))
 (=> $x599 $x605))))
(assert
 (let (($x608 (= Per_0_0 Per_3_0)))
 (let (($x599 (= Opp_0_0 4)))
 (=> $x599 $x608))))
(assert
 (let (($x612 (= Opp_3_1 1)))
 (let (($x611 (= Opp_0_1 4)))
 (=> $x611 $x612))))
(assert
 (let (($x617 (= (+ Home_0_1 Home_3_1) 1)))
 (let (($x611 (= Opp_0_1 4)))
 (=> $x611 $x617))))
(assert
 (let (($x620 (= Per_0_1 Per_3_1)))
 (let (($x611 (= Opp_0_1 4)))
 (=> $x611 $x620))))
(assert
 (let (($x624 (= Opp_3_2 1)))
 (let (($x623 (= Opp_0_2 4)))
 (=> $x623 $x624))))
(assert
 (let (($x629 (= (+ Home_0_2 Home_3_2) 1)))
 (let (($x623 (= Opp_0_2 4)))
 (=> $x623 $x629))))
(assert
 (let (($x632 (= Per_0_2 Per_3_2)))
 (let (($x623 (= Opp_0_2 4)))
 (=> $x623 $x632))))
(assert
 (let (($x636 (= Opp_3_3 1)))
 (let (($x635 (= Opp_0_3 4)))
 (=> $x635 $x636))))
(assert
 (let (($x641 (= (+ Home_0_3 Home_3_3) 1)))
 (let (($x635 (= Opp_0_3 4)))
 (=> $x635 $x641))))
(assert
 (let (($x644 (= Per_0_3 Per_3_3)))
 (let (($x635 (= Opp_0_3 4)))
 (=> $x635 $x644))))
(assert
 (let (($x648 (= Opp_3_4 1)))
 (let (($x647 (= Opp_0_4 4)))
 (=> $x647 $x648))))
(assert
 (let (($x653 (= (+ Home_0_4 Home_3_4) 1)))
 (let (($x647 (= Opp_0_4 4)))
 (=> $x647 $x653))))
(assert
 (let (($x656 (= Per_0_4 Per_3_4)))
 (let (($x647 (= Opp_0_4 4)))
 (=> $x647 $x656))))
(assert
 (let (($x660 (= Opp_4_0 1)))
 (let (($x659 (= Opp_0_0 5)))
 (=> $x659 $x660))))
(assert
 (let (($x665 (= (+ Home_0_0 Home_4_0) 1)))
 (let (($x659 (= Opp_0_0 5)))
 (=> $x659 $x665))))
(assert
 (let (($x668 (= Per_0_0 Per_4_0)))
 (let (($x659 (= Opp_0_0 5)))
 (=> $x659 $x668))))
(assert
 (let (($x672 (= Opp_4_1 1)))
 (let (($x671 (= Opp_0_1 5)))
 (=> $x671 $x672))))
(assert
 (let (($x677 (= (+ Home_0_1 Home_4_1) 1)))
 (let (($x671 (= Opp_0_1 5)))
 (=> $x671 $x677))))
(assert
 (let (($x680 (= Per_0_1 Per_4_1)))
 (let (($x671 (= Opp_0_1 5)))
 (=> $x671 $x680))))
(assert
 (let (($x684 (= Opp_4_2 1)))
 (let (($x683 (= Opp_0_2 5)))
 (=> $x683 $x684))))
(assert
 (let (($x689 (= (+ Home_0_2 Home_4_2) 1)))
 (let (($x683 (= Opp_0_2 5)))
 (=> $x683 $x689))))
(assert
 (let (($x692 (= Per_0_2 Per_4_2)))
 (let (($x683 (= Opp_0_2 5)))
 (=> $x683 $x692))))
(assert
 (let (($x696 (= Opp_4_3 1)))
 (let (($x695 (= Opp_0_3 5)))
 (=> $x695 $x696))))
(assert
 (let (($x701 (= (+ Home_0_3 Home_4_3) 1)))
 (let (($x695 (= Opp_0_3 5)))
 (=> $x695 $x701))))
(assert
 (let (($x704 (= Per_0_3 Per_4_3)))
 (let (($x695 (= Opp_0_3 5)))
 (=> $x695 $x704))))
(assert
 (let (($x708 (= Opp_4_4 1)))
 (let (($x707 (= Opp_0_4 5)))
 (=> $x707 $x708))))
(assert
 (let (($x713 (= (+ Home_0_4 Home_4_4) 1)))
 (let (($x707 (= Opp_0_4 5)))
 (=> $x707 $x713))))
(assert
 (let (($x716 (= Per_0_4 Per_4_4)))
 (let (($x707 (= Opp_0_4 5)))
 (=> $x707 $x716))))
(assert
 (let (($x720 (= Opp_5_0 1)))
 (let (($x719 (= Opp_0_0 6)))
 (=> $x719 $x720))))
(assert
 (let (($x725 (= (+ Home_0_0 Home_5_0) 1)))
 (let (($x719 (= Opp_0_0 6)))
 (=> $x719 $x725))))
(assert
 (let (($x728 (= Per_0_0 Per_5_0)))
 (let (($x719 (= Opp_0_0 6)))
 (=> $x719 $x728))))
(assert
 (let (($x732 (= Opp_5_1 1)))
 (let (($x731 (= Opp_0_1 6)))
 (=> $x731 $x732))))
(assert
 (let (($x737 (= (+ Home_0_1 Home_5_1) 1)))
 (let (($x731 (= Opp_0_1 6)))
 (=> $x731 $x737))))
(assert
 (let (($x740 (= Per_0_1 Per_5_1)))
 (let (($x731 (= Opp_0_1 6)))
 (=> $x731 $x740))))
(assert
 (let (($x744 (= Opp_5_2 1)))
 (let (($x743 (= Opp_0_2 6)))
 (=> $x743 $x744))))
(assert
 (let (($x749 (= (+ Home_0_2 Home_5_2) 1)))
 (let (($x743 (= Opp_0_2 6)))
 (=> $x743 $x749))))
(assert
 (let (($x752 (= Per_0_2 Per_5_2)))
 (let (($x743 (= Opp_0_2 6)))
 (=> $x743 $x752))))
(assert
 (let (($x756 (= Opp_5_3 1)))
 (let (($x755 (= Opp_0_3 6)))
 (=> $x755 $x756))))
(assert
 (let (($x761 (= (+ Home_0_3 Home_5_3) 1)))
 (let (($x755 (= Opp_0_3 6)))
 (=> $x755 $x761))))
(assert
 (let (($x764 (= Per_0_3 Per_5_3)))
 (let (($x755 (= Opp_0_3 6)))
 (=> $x755 $x764))))
(assert
 (let (($x768 (= Opp_5_4 1)))
 (let (($x767 (= Opp_0_4 6)))
 (=> $x767 $x768))))
(assert
 (let (($x773 (= (+ Home_0_4 Home_5_4) 1)))
 (let (($x767 (= Opp_0_4 6)))
 (=> $x767 $x773))))
(assert
 (let (($x776 (= Per_0_4 Per_5_4)))
 (let (($x767 (= Opp_0_4 6)))
 (=> $x767 $x776))))
(assert
 (let (($x479 (= Opp_0_0 2)))
 (let (($x480 (= Opp_1_0 1)))
 (=> $x480 $x479))))
(assert
 (let (($x480 (= Opp_1_0 1)))
 (=> $x480 (= (+ Home_1_0 Home_0_0) 1))))
(assert
 (let (($x786 (= Per_1_0 Per_0_0)))
 (let (($x480 (= Opp_1_0 1)))
 (=> $x480 $x786))))
(assert
 (let (($x491 (= Opp_0_1 2)))
 (let (($x492 (= Opp_1_1 1)))
 (=> $x492 $x491))))
(assert
 (let (($x492 (= Opp_1_1 1)))
 (=> $x492 (= (+ Home_1_1 Home_0_1) 1))))
(assert
 (let (($x796 (= Per_1_1 Per_0_1)))
 (let (($x492 (= Opp_1_1 1)))
 (=> $x492 $x796))))
(assert
 (let (($x503 (= Opp_0_2 2)))
 (let (($x504 (= Opp_1_2 1)))
 (=> $x504 $x503))))
(assert
 (let (($x504 (= Opp_1_2 1)))
 (=> $x504 (= (+ Home_1_2 Home_0_2) 1))))
(assert
 (let (($x806 (= Per_1_2 Per_0_2)))
 (let (($x504 (= Opp_1_2 1)))
 (=> $x504 $x806))))
(assert
 (let (($x515 (= Opp_0_3 2)))
 (let (($x516 (= Opp_1_3 1)))
 (=> $x516 $x515))))
(assert
 (let (($x516 (= Opp_1_3 1)))
 (=> $x516 (= (+ Home_1_3 Home_0_3) 1))))
(assert
 (let (($x816 (= Per_1_3 Per_0_3)))
 (let (($x516 (= Opp_1_3 1)))
 (=> $x516 $x816))))
(assert
 (let (($x527 (= Opp_0_4 2)))
 (let (($x528 (= Opp_1_4 1)))
 (=> $x528 $x527))))
(assert
 (let (($x528 (= Opp_1_4 1)))
 (=> $x528 (= (+ Home_1_4 Home_0_4) 1))))
(assert
 (let (($x826 (= Per_1_4 Per_0_4)))
 (let (($x528 (= Opp_1_4 1)))
 (=> $x528 $x826))))
(assert
 (let (($x830 (= Opp_2_0 2)))
 (let (($x829 (= Opp_1_0 3)))
 (=> $x829 $x830))))
(assert
 (let (($x835 (= (+ Home_1_0 Home_2_0) 1)))
 (let (($x829 (= Opp_1_0 3)))
 (=> $x829 $x835))))
(assert
 (let (($x838 (= Per_1_0 Per_2_0)))
 (let (($x829 (= Opp_1_0 3)))
 (=> $x829 $x838))))
(assert
 (let (($x842 (= Opp_2_1 2)))
 (let (($x841 (= Opp_1_1 3)))
 (=> $x841 $x842))))
(assert
 (let (($x847 (= (+ Home_1_1 Home_2_1) 1)))
 (let (($x841 (= Opp_1_1 3)))
 (=> $x841 $x847))))
(assert
 (let (($x850 (= Per_1_1 Per_2_1)))
 (let (($x841 (= Opp_1_1 3)))
 (=> $x841 $x850))))
(assert
 (let (($x854 (= Opp_2_2 2)))
 (let (($x853 (= Opp_1_2 3)))
 (=> $x853 $x854))))
(assert
 (let (($x859 (= (+ Home_1_2 Home_2_2) 1)))
 (let (($x853 (= Opp_1_2 3)))
 (=> $x853 $x859))))
(assert
 (let (($x862 (= Per_1_2 Per_2_2)))
 (let (($x853 (= Opp_1_2 3)))
 (=> $x853 $x862))))
(assert
 (let (($x866 (= Opp_2_3 2)))
 (let (($x865 (= Opp_1_3 3)))
 (=> $x865 $x866))))
(assert
 (let (($x871 (= (+ Home_1_3 Home_2_3) 1)))
 (let (($x865 (= Opp_1_3 3)))
 (=> $x865 $x871))))
(assert
 (let (($x874 (= Per_1_3 Per_2_3)))
 (let (($x865 (= Opp_1_3 3)))
 (=> $x865 $x874))))
(assert
 (let (($x878 (= Opp_2_4 2)))
 (let (($x877 (= Opp_1_4 3)))
 (=> $x877 $x878))))
(assert
 (let (($x883 (= (+ Home_1_4 Home_2_4) 1)))
 (let (($x877 (= Opp_1_4 3)))
 (=> $x877 $x883))))
(assert
 (let (($x886 (= Per_1_4 Per_2_4)))
 (let (($x877 (= Opp_1_4 3)))
 (=> $x877 $x886))))
(assert
 (let (($x890 (= Opp_3_0 2)))
 (let (($x889 (= Opp_1_0 4)))
 (=> $x889 $x890))))
(assert
 (let (($x895 (= (+ Home_1_0 Home_3_0) 1)))
 (let (($x889 (= Opp_1_0 4)))
 (=> $x889 $x895))))
(assert
 (let (($x898 (= Per_1_0 Per_3_0)))
 (let (($x889 (= Opp_1_0 4)))
 (=> $x889 $x898))))
(assert
 (let (($x902 (= Opp_3_1 2)))
 (let (($x901 (= Opp_1_1 4)))
 (=> $x901 $x902))))
(assert
 (let (($x907 (= (+ Home_1_1 Home_3_1) 1)))
 (let (($x901 (= Opp_1_1 4)))
 (=> $x901 $x907))))
(assert
 (let (($x910 (= Per_1_1 Per_3_1)))
 (let (($x901 (= Opp_1_1 4)))
 (=> $x901 $x910))))
(assert
 (let (($x914 (= Opp_3_2 2)))
 (let (($x913 (= Opp_1_2 4)))
 (=> $x913 $x914))))
(assert
 (let (($x919 (= (+ Home_1_2 Home_3_2) 1)))
 (let (($x913 (= Opp_1_2 4)))
 (=> $x913 $x919))))
(assert
 (let (($x922 (= Per_1_2 Per_3_2)))
 (let (($x913 (= Opp_1_2 4)))
 (=> $x913 $x922))))
(assert
 (let (($x926 (= Opp_3_3 2)))
 (let (($x925 (= Opp_1_3 4)))
 (=> $x925 $x926))))
(assert
 (let (($x931 (= (+ Home_1_3 Home_3_3) 1)))
 (let (($x925 (= Opp_1_3 4)))
 (=> $x925 $x931))))
(assert
 (let (($x934 (= Per_1_3 Per_3_3)))
 (let (($x925 (= Opp_1_3 4)))
 (=> $x925 $x934))))
(assert
 (let (($x938 (= Opp_3_4 2)))
 (let (($x937 (= Opp_1_4 4)))
 (=> $x937 $x938))))
(assert
 (let (($x943 (= (+ Home_1_4 Home_3_4) 1)))
 (let (($x937 (= Opp_1_4 4)))
 (=> $x937 $x943))))
(assert
 (let (($x946 (= Per_1_4 Per_3_4)))
 (let (($x937 (= Opp_1_4 4)))
 (=> $x937 $x946))))
(assert
 (let (($x950 (= Opp_4_0 2)))
 (let (($x949 (= Opp_1_0 5)))
 (=> $x949 $x950))))
(assert
 (let (($x955 (= (+ Home_1_0 Home_4_0) 1)))
 (let (($x949 (= Opp_1_0 5)))
 (=> $x949 $x955))))
(assert
 (let (($x958 (= Per_1_0 Per_4_0)))
 (let (($x949 (= Opp_1_0 5)))
 (=> $x949 $x958))))
(assert
 (let (($x962 (= Opp_4_1 2)))
 (let (($x961 (= Opp_1_1 5)))
 (=> $x961 $x962))))
(assert
 (let (($x967 (= (+ Home_1_1 Home_4_1) 1)))
 (let (($x961 (= Opp_1_1 5)))
 (=> $x961 $x967))))
(assert
 (let (($x970 (= Per_1_1 Per_4_1)))
 (let (($x961 (= Opp_1_1 5)))
 (=> $x961 $x970))))
(assert
 (let (($x974 (= Opp_4_2 2)))
 (let (($x973 (= Opp_1_2 5)))
 (=> $x973 $x974))))
(assert
 (let (($x979 (= (+ Home_1_2 Home_4_2) 1)))
 (let (($x973 (= Opp_1_2 5)))
 (=> $x973 $x979))))
(assert
 (let (($x982 (= Per_1_2 Per_4_2)))
 (let (($x973 (= Opp_1_2 5)))
 (=> $x973 $x982))))
(assert
 (let (($x986 (= Opp_4_3 2)))
 (let (($x985 (= Opp_1_3 5)))
 (=> $x985 $x986))))
(assert
 (let (($x991 (= (+ Home_1_3 Home_4_3) 1)))
 (let (($x985 (= Opp_1_3 5)))
 (=> $x985 $x991))))
(assert
 (let (($x994 (= Per_1_3 Per_4_3)))
 (let (($x985 (= Opp_1_3 5)))
 (=> $x985 $x994))))
(assert
 (let (($x998 (= Opp_4_4 2)))
 (let (($x997 (= Opp_1_4 5)))
 (=> $x997 $x998))))
(assert
 (let (($x1003 (= (+ Home_1_4 Home_4_4) 1)))
 (let (($x997 (= Opp_1_4 5)))
 (=> $x997 $x1003))))
(assert
 (let (($x1006 (= Per_1_4 Per_4_4)))
 (let (($x997 (= Opp_1_4 5)))
 (=> $x997 $x1006))))
(assert
 (let (($x1010 (= Opp_5_0 2)))
 (let (($x1009 (= Opp_1_0 6)))
 (=> $x1009 $x1010))))
(assert
 (let (($x1015 (= (+ Home_1_0 Home_5_0) 1)))
 (let (($x1009 (= Opp_1_0 6)))
 (=> $x1009 $x1015))))
(assert
 (let (($x1018 (= Per_1_0 Per_5_0)))
 (let (($x1009 (= Opp_1_0 6)))
 (=> $x1009 $x1018))))
(assert
 (let (($x1022 (= Opp_5_1 2)))
 (let (($x1021 (= Opp_1_1 6)))
 (=> $x1021 $x1022))))
(assert
 (let (($x1027 (= (+ Home_1_1 Home_5_1) 1)))
 (let (($x1021 (= Opp_1_1 6)))
 (=> $x1021 $x1027))))
(assert
 (let (($x1030 (= Per_1_1 Per_5_1)))
 (let (($x1021 (= Opp_1_1 6)))
 (=> $x1021 $x1030))))
(assert
 (let (($x1034 (= Opp_5_2 2)))
 (let (($x1033 (= Opp_1_2 6)))
 (=> $x1033 $x1034))))
(assert
 (let (($x1039 (= (+ Home_1_2 Home_5_2) 1)))
 (let (($x1033 (= Opp_1_2 6)))
 (=> $x1033 $x1039))))
(assert
 (let (($x1042 (= Per_1_2 Per_5_2)))
 (let (($x1033 (= Opp_1_2 6)))
 (=> $x1033 $x1042))))
(assert
 (let (($x1046 (= Opp_5_3 2)))
 (let (($x1045 (= Opp_1_3 6)))
 (=> $x1045 $x1046))))
(assert
 (let (($x1051 (= (+ Home_1_3 Home_5_3) 1)))
 (let (($x1045 (= Opp_1_3 6)))
 (=> $x1045 $x1051))))
(assert
 (let (($x1054 (= Per_1_3 Per_5_3)))
 (let (($x1045 (= Opp_1_3 6)))
 (=> $x1045 $x1054))))
(assert
 (let (($x1058 (= Opp_5_4 2)))
 (let (($x1057 (= Opp_1_4 6)))
 (=> $x1057 $x1058))))
(assert
 (let (($x1063 (= (+ Home_1_4 Home_5_4) 1)))
 (let (($x1057 (= Opp_1_4 6)))
 (=> $x1057 $x1063))))
(assert
 (let (($x1066 (= Per_1_4 Per_5_4)))
 (let (($x1057 (= Opp_1_4 6)))
 (=> $x1057 $x1066))))
(assert
 (let (($x539 (= Opp_0_0 3)))
 (let (($x540 (= Opp_2_0 1)))
 (=> $x540 $x539))))
(assert
 (let (($x540 (= Opp_2_0 1)))
 (=> $x540 (= (+ Home_2_0 Home_0_0) 1))))
(assert
 (let (($x1076 (= Per_2_0 Per_0_0)))
 (let (($x540 (= Opp_2_0 1)))
 (=> $x540 $x1076))))
(assert
 (let (($x551 (= Opp_0_1 3)))
 (let (($x552 (= Opp_2_1 1)))
 (=> $x552 $x551))))
(assert
 (let (($x552 (= Opp_2_1 1)))
 (=> $x552 (= (+ Home_2_1 Home_0_1) 1))))
(assert
 (let (($x1086 (= Per_2_1 Per_0_1)))
 (let (($x552 (= Opp_2_1 1)))
 (=> $x552 $x1086))))
(assert
 (let (($x563 (= Opp_0_2 3)))
 (let (($x564 (= Opp_2_2 1)))
 (=> $x564 $x563))))
(assert
 (let (($x564 (= Opp_2_2 1)))
 (=> $x564 (= (+ Home_2_2 Home_0_2) 1))))
(assert
 (let (($x1096 (= Per_2_2 Per_0_2)))
 (let (($x564 (= Opp_2_2 1)))
 (=> $x564 $x1096))))
(assert
 (let (($x575 (= Opp_0_3 3)))
 (let (($x576 (= Opp_2_3 1)))
 (=> $x576 $x575))))
(assert
 (let (($x576 (= Opp_2_3 1)))
 (=> $x576 (= (+ Home_2_3 Home_0_3) 1))))
(assert
 (let (($x1106 (= Per_2_3 Per_0_3)))
 (let (($x576 (= Opp_2_3 1)))
 (=> $x576 $x1106))))
(assert
 (let (($x587 (= Opp_0_4 3)))
 (let (($x588 (= Opp_2_4 1)))
 (=> $x588 $x587))))
(assert
 (let (($x588 (= Opp_2_4 1)))
 (=> $x588 (= (+ Home_2_4 Home_0_4) 1))))
(assert
 (let (($x1116 (= Per_2_4 Per_0_4)))
 (let (($x588 (= Opp_2_4 1)))
 (=> $x588 $x1116))))
(assert
 (let (($x829 (= Opp_1_0 3)))
 (let (($x830 (= Opp_2_0 2)))
 (=> $x830 $x829))))
(assert
 (let (($x830 (= Opp_2_0 2)))
 (=> $x830 (= (+ Home_2_0 Home_1_0) 1))))
(assert
 (let (($x1126 (= Per_2_0 Per_1_0)))
 (let (($x830 (= Opp_2_0 2)))
 (=> $x830 $x1126))))
(assert
 (let (($x841 (= Opp_1_1 3)))
 (let (($x842 (= Opp_2_1 2)))
 (=> $x842 $x841))))
(assert
 (let (($x842 (= Opp_2_1 2)))
 (=> $x842 (= (+ Home_2_1 Home_1_1) 1))))
(assert
 (let (($x1136 (= Per_2_1 Per_1_1)))
 (let (($x842 (= Opp_2_1 2)))
 (=> $x842 $x1136))))
(assert
 (let (($x853 (= Opp_1_2 3)))
 (let (($x854 (= Opp_2_2 2)))
 (=> $x854 $x853))))
(assert
 (let (($x854 (= Opp_2_2 2)))
 (=> $x854 (= (+ Home_2_2 Home_1_2) 1))))
(assert
 (let (($x1146 (= Per_2_2 Per_1_2)))
 (let (($x854 (= Opp_2_2 2)))
 (=> $x854 $x1146))))
(assert
 (let (($x865 (= Opp_1_3 3)))
 (let (($x866 (= Opp_2_3 2)))
 (=> $x866 $x865))))
(assert
 (let (($x866 (= Opp_2_3 2)))
 (=> $x866 (= (+ Home_2_3 Home_1_3) 1))))
(assert
 (let (($x1156 (= Per_2_3 Per_1_3)))
 (let (($x866 (= Opp_2_3 2)))
 (=> $x866 $x1156))))
(assert
 (let (($x877 (= Opp_1_4 3)))
 (let (($x878 (= Opp_2_4 2)))
 (=> $x878 $x877))))
(assert
 (let (($x878 (= Opp_2_4 2)))
 (=> $x878 (= (+ Home_2_4 Home_1_4) 1))))
(assert
 (let (($x1166 (= Per_2_4 Per_1_4)))
 (let (($x878 (= Opp_2_4 2)))
 (=> $x878 $x1166))))
(assert
 (let (($x1170 (= Opp_3_0 3)))
 (let (($x1169 (= Opp_2_0 4)))
 (=> $x1169 $x1170))))
(assert
 (let (($x1175 (= (+ Home_2_0 Home_3_0) 1)))
 (let (($x1169 (= Opp_2_0 4)))
 (=> $x1169 $x1175))))
(assert
 (let (($x1178 (= Per_2_0 Per_3_0)))
 (let (($x1169 (= Opp_2_0 4)))
 (=> $x1169 $x1178))))
(assert
 (let (($x1182 (= Opp_3_1 3)))
 (let (($x1181 (= Opp_2_1 4)))
 (=> $x1181 $x1182))))
(assert
 (let (($x1187 (= (+ Home_2_1 Home_3_1) 1)))
 (let (($x1181 (= Opp_2_1 4)))
 (=> $x1181 $x1187))))
(assert
 (let (($x1190 (= Per_2_1 Per_3_1)))
 (let (($x1181 (= Opp_2_1 4)))
 (=> $x1181 $x1190))))
(assert
 (let (($x1194 (= Opp_3_2 3)))
 (let (($x1193 (= Opp_2_2 4)))
 (=> $x1193 $x1194))))
(assert
 (let (($x1199 (= (+ Home_2_2 Home_3_2) 1)))
 (let (($x1193 (= Opp_2_2 4)))
 (=> $x1193 $x1199))))
(assert
 (let (($x1202 (= Per_2_2 Per_3_2)))
 (let (($x1193 (= Opp_2_2 4)))
 (=> $x1193 $x1202))))
(assert
 (let (($x1206 (= Opp_3_3 3)))
 (let (($x1205 (= Opp_2_3 4)))
 (=> $x1205 $x1206))))
(assert
 (let (($x1211 (= (+ Home_2_3 Home_3_3) 1)))
 (let (($x1205 (= Opp_2_3 4)))
 (=> $x1205 $x1211))))
(assert
 (let (($x1214 (= Per_2_3 Per_3_3)))
 (let (($x1205 (= Opp_2_3 4)))
 (=> $x1205 $x1214))))
(assert
 (let (($x1218 (= Opp_3_4 3)))
 (let (($x1217 (= Opp_2_4 4)))
 (=> $x1217 $x1218))))
(assert
 (let (($x1223 (= (+ Home_2_4 Home_3_4) 1)))
 (let (($x1217 (= Opp_2_4 4)))
 (=> $x1217 $x1223))))
(assert
 (let (($x1226 (= Per_2_4 Per_3_4)))
 (let (($x1217 (= Opp_2_4 4)))
 (=> $x1217 $x1226))))
(assert
 (let (($x1230 (= Opp_4_0 3)))
 (let (($x1229 (= Opp_2_0 5)))
 (=> $x1229 $x1230))))
(assert
 (let (($x1235 (= (+ Home_2_0 Home_4_0) 1)))
 (let (($x1229 (= Opp_2_0 5)))
 (=> $x1229 $x1235))))
(assert
 (let (($x1238 (= Per_2_0 Per_4_0)))
 (let (($x1229 (= Opp_2_0 5)))
 (=> $x1229 $x1238))))
(assert
 (let (($x1242 (= Opp_4_1 3)))
 (let (($x1241 (= Opp_2_1 5)))
 (=> $x1241 $x1242))))
(assert
 (let (($x1247 (= (+ Home_2_1 Home_4_1) 1)))
 (let (($x1241 (= Opp_2_1 5)))
 (=> $x1241 $x1247))))
(assert
 (let (($x1250 (= Per_2_1 Per_4_1)))
 (let (($x1241 (= Opp_2_1 5)))
 (=> $x1241 $x1250))))
(assert
 (let (($x1254 (= Opp_4_2 3)))
 (let (($x1253 (= Opp_2_2 5)))
 (=> $x1253 $x1254))))
(assert
 (let (($x1259 (= (+ Home_2_2 Home_4_2) 1)))
 (let (($x1253 (= Opp_2_2 5)))
 (=> $x1253 $x1259))))
(assert
 (let (($x1262 (= Per_2_2 Per_4_2)))
 (let (($x1253 (= Opp_2_2 5)))
 (=> $x1253 $x1262))))
(assert
 (let (($x1266 (= Opp_4_3 3)))
 (let (($x1265 (= Opp_2_3 5)))
 (=> $x1265 $x1266))))
(assert
 (let (($x1271 (= (+ Home_2_3 Home_4_3) 1)))
 (let (($x1265 (= Opp_2_3 5)))
 (=> $x1265 $x1271))))
(assert
 (let (($x1274 (= Per_2_3 Per_4_3)))
 (let (($x1265 (= Opp_2_3 5)))
 (=> $x1265 $x1274))))
(assert
 (let (($x1278 (= Opp_4_4 3)))
 (let (($x1277 (= Opp_2_4 5)))
 (=> $x1277 $x1278))))
(assert
 (let (($x1283 (= (+ Home_2_4 Home_4_4) 1)))
 (let (($x1277 (= Opp_2_4 5)))
 (=> $x1277 $x1283))))
(assert
 (let (($x1286 (= Per_2_4 Per_4_4)))
 (let (($x1277 (= Opp_2_4 5)))
 (=> $x1277 $x1286))))
(assert
 (let (($x1290 (= Opp_5_0 3)))
 (let (($x1289 (= Opp_2_0 6)))
 (=> $x1289 $x1290))))
(assert
 (let (($x1295 (= (+ Home_2_0 Home_5_0) 1)))
 (let (($x1289 (= Opp_2_0 6)))
 (=> $x1289 $x1295))))
(assert
 (let (($x1298 (= Per_2_0 Per_5_0)))
 (let (($x1289 (= Opp_2_0 6)))
 (=> $x1289 $x1298))))
(assert
 (let (($x1302 (= Opp_5_1 3)))
 (let (($x1301 (= Opp_2_1 6)))
 (=> $x1301 $x1302))))
(assert
 (let (($x1307 (= (+ Home_2_1 Home_5_1) 1)))
 (let (($x1301 (= Opp_2_1 6)))
 (=> $x1301 $x1307))))
(assert
 (let (($x1310 (= Per_2_1 Per_5_1)))
 (let (($x1301 (= Opp_2_1 6)))
 (=> $x1301 $x1310))))
(assert
 (let (($x1314 (= Opp_5_2 3)))
 (let (($x1313 (= Opp_2_2 6)))
 (=> $x1313 $x1314))))
(assert
 (let (($x1319 (= (+ Home_2_2 Home_5_2) 1)))
 (let (($x1313 (= Opp_2_2 6)))
 (=> $x1313 $x1319))))
(assert
 (let (($x1322 (= Per_2_2 Per_5_2)))
 (let (($x1313 (= Opp_2_2 6)))
 (=> $x1313 $x1322))))
(assert
 (let (($x1326 (= Opp_5_3 3)))
 (let (($x1325 (= Opp_2_3 6)))
 (=> $x1325 $x1326))))
(assert
 (let (($x1331 (= (+ Home_2_3 Home_5_3) 1)))
 (let (($x1325 (= Opp_2_3 6)))
 (=> $x1325 $x1331))))
(assert
 (let (($x1334 (= Per_2_3 Per_5_3)))
 (let (($x1325 (= Opp_2_3 6)))
 (=> $x1325 $x1334))))
(assert
 (let (($x1338 (= Opp_5_4 3)))
 (let (($x1337 (= Opp_2_4 6)))
 (=> $x1337 $x1338))))
(assert
 (let (($x1343 (= (+ Home_2_4 Home_5_4) 1)))
 (let (($x1337 (= Opp_2_4 6)))
 (=> $x1337 $x1343))))
(assert
 (let (($x1346 (= Per_2_4 Per_5_4)))
 (let (($x1337 (= Opp_2_4 6)))
 (=> $x1337 $x1346))))
(assert
 (let (($x599 (= Opp_0_0 4)))
 (let (($x600 (= Opp_3_0 1)))
 (=> $x600 $x599))))
(assert
 (let (($x600 (= Opp_3_0 1)))
 (=> $x600 (= (+ Home_3_0 Home_0_0) 1))))
(assert
 (let (($x1356 (= Per_3_0 Per_0_0)))
 (let (($x600 (= Opp_3_0 1)))
 (=> $x600 $x1356))))
(assert
 (let (($x611 (= Opp_0_1 4)))
 (let (($x612 (= Opp_3_1 1)))
 (=> $x612 $x611))))
(assert
 (let (($x612 (= Opp_3_1 1)))
 (=> $x612 (= (+ Home_3_1 Home_0_1) 1))))
(assert
 (let (($x1366 (= Per_3_1 Per_0_1)))
 (let (($x612 (= Opp_3_1 1)))
 (=> $x612 $x1366))))
(assert
 (let (($x623 (= Opp_0_2 4)))
 (let (($x624 (= Opp_3_2 1)))
 (=> $x624 $x623))))
(assert
 (let (($x624 (= Opp_3_2 1)))
 (=> $x624 (= (+ Home_3_2 Home_0_2) 1))))
(assert
 (let (($x1376 (= Per_3_2 Per_0_2)))
 (let (($x624 (= Opp_3_2 1)))
 (=> $x624 $x1376))))
(assert
 (let (($x635 (= Opp_0_3 4)))
 (let (($x636 (= Opp_3_3 1)))
 (=> $x636 $x635))))
(assert
 (let (($x636 (= Opp_3_3 1)))
 (=> $x636 (= (+ Home_3_3 Home_0_3) 1))))
(assert
 (let (($x1386 (= Per_3_3 Per_0_3)))
 (let (($x636 (= Opp_3_3 1)))
 (=> $x636 $x1386))))
(assert
 (let (($x647 (= Opp_0_4 4)))
 (let (($x648 (= Opp_3_4 1)))
 (=> $x648 $x647))))
(assert
 (let (($x648 (= Opp_3_4 1)))
 (=> $x648 (= (+ Home_3_4 Home_0_4) 1))))
(assert
 (let (($x1396 (= Per_3_4 Per_0_4)))
 (let (($x648 (= Opp_3_4 1)))
 (=> $x648 $x1396))))
(assert
 (let (($x889 (= Opp_1_0 4)))
 (let (($x890 (= Opp_3_0 2)))
 (=> $x890 $x889))))
(assert
 (let (($x890 (= Opp_3_0 2)))
 (=> $x890 (= (+ Home_3_0 Home_1_0) 1))))
(assert
 (let (($x1406 (= Per_3_0 Per_1_0)))
 (let (($x890 (= Opp_3_0 2)))
 (=> $x890 $x1406))))
(assert
 (let (($x901 (= Opp_1_1 4)))
 (let (($x902 (= Opp_3_1 2)))
 (=> $x902 $x901))))
(assert
 (let (($x902 (= Opp_3_1 2)))
 (=> $x902 (= (+ Home_3_1 Home_1_1) 1))))
(assert
 (let (($x1416 (= Per_3_1 Per_1_1)))
 (let (($x902 (= Opp_3_1 2)))
 (=> $x902 $x1416))))
(assert
 (let (($x913 (= Opp_1_2 4)))
 (let (($x914 (= Opp_3_2 2)))
 (=> $x914 $x913))))
(assert
 (let (($x914 (= Opp_3_2 2)))
 (=> $x914 (= (+ Home_3_2 Home_1_2) 1))))
(assert
 (let (($x1426 (= Per_3_2 Per_1_2)))
 (let (($x914 (= Opp_3_2 2)))
 (=> $x914 $x1426))))
(assert
 (let (($x925 (= Opp_1_3 4)))
 (let (($x926 (= Opp_3_3 2)))
 (=> $x926 $x925))))
(assert
 (let (($x926 (= Opp_3_3 2)))
 (=> $x926 (= (+ Home_3_3 Home_1_3) 1))))
(assert
 (let (($x1436 (= Per_3_3 Per_1_3)))
 (let (($x926 (= Opp_3_3 2)))
 (=> $x926 $x1436))))
(assert
 (let (($x937 (= Opp_1_4 4)))
 (let (($x938 (= Opp_3_4 2)))
 (=> $x938 $x937))))
(assert
 (let (($x938 (= Opp_3_4 2)))
 (=> $x938 (= (+ Home_3_4 Home_1_4) 1))))
(assert
 (let (($x1446 (= Per_3_4 Per_1_4)))
 (let (($x938 (= Opp_3_4 2)))
 (=> $x938 $x1446))))
(assert
 (let (($x1169 (= Opp_2_0 4)))
 (let (($x1170 (= Opp_3_0 3)))
 (=> $x1170 $x1169))))
(assert
 (let (($x1170 (= Opp_3_0 3)))
 (=> $x1170 (= (+ Home_3_0 Home_2_0) 1))))
(assert
 (let (($x1456 (= Per_3_0 Per_2_0)))
 (let (($x1170 (= Opp_3_0 3)))
 (=> $x1170 $x1456))))
(assert
 (let (($x1181 (= Opp_2_1 4)))
 (let (($x1182 (= Opp_3_1 3)))
 (=> $x1182 $x1181))))
(assert
 (let (($x1182 (= Opp_3_1 3)))
 (=> $x1182 (= (+ Home_3_1 Home_2_1) 1))))
(assert
 (let (($x1466 (= Per_3_1 Per_2_1)))
 (let (($x1182 (= Opp_3_1 3)))
 (=> $x1182 $x1466))))
(assert
 (let (($x1193 (= Opp_2_2 4)))
 (let (($x1194 (= Opp_3_2 3)))
 (=> $x1194 $x1193))))
(assert
 (let (($x1194 (= Opp_3_2 3)))
 (=> $x1194 (= (+ Home_3_2 Home_2_2) 1))))
(assert
 (let (($x1476 (= Per_3_2 Per_2_2)))
 (let (($x1194 (= Opp_3_2 3)))
 (=> $x1194 $x1476))))
(assert
 (let (($x1205 (= Opp_2_3 4)))
 (let (($x1206 (= Opp_3_3 3)))
 (=> $x1206 $x1205))))
(assert
 (let (($x1206 (= Opp_3_3 3)))
 (=> $x1206 (= (+ Home_3_3 Home_2_3) 1))))
(assert
 (let (($x1486 (= Per_3_3 Per_2_3)))
 (let (($x1206 (= Opp_3_3 3)))
 (=> $x1206 $x1486))))
(assert
 (let (($x1217 (= Opp_2_4 4)))
 (let (($x1218 (= Opp_3_4 3)))
 (=> $x1218 $x1217))))
(assert
 (let (($x1218 (= Opp_3_4 3)))
 (=> $x1218 (= (+ Home_3_4 Home_2_4) 1))))
(assert
 (let (($x1496 (= Per_3_4 Per_2_4)))
 (let (($x1218 (= Opp_3_4 3)))
 (=> $x1218 $x1496))))
(assert
 (let (($x1500 (= Opp_4_0 4)))
 (let (($x1499 (= Opp_3_0 5)))
 (=> $x1499 $x1500))))
(assert
 (let (($x1505 (= (+ Home_3_0 Home_4_0) 1)))
 (let (($x1499 (= Opp_3_0 5)))
 (=> $x1499 $x1505))))
(assert
 (let (($x1508 (= Per_3_0 Per_4_0)))
 (let (($x1499 (= Opp_3_0 5)))
 (=> $x1499 $x1508))))
(assert
 (let (($x1512 (= Opp_4_1 4)))
 (let (($x1511 (= Opp_3_1 5)))
 (=> $x1511 $x1512))))
(assert
 (let (($x1517 (= (+ Home_3_1 Home_4_1) 1)))
 (let (($x1511 (= Opp_3_1 5)))
 (=> $x1511 $x1517))))
(assert
 (let (($x1520 (= Per_3_1 Per_4_1)))
 (let (($x1511 (= Opp_3_1 5)))
 (=> $x1511 $x1520))))
(assert
 (let (($x1524 (= Opp_4_2 4)))
 (let (($x1523 (= Opp_3_2 5)))
 (=> $x1523 $x1524))))
(assert
 (let (($x1529 (= (+ Home_3_2 Home_4_2) 1)))
 (let (($x1523 (= Opp_3_2 5)))
 (=> $x1523 $x1529))))
(assert
 (let (($x1532 (= Per_3_2 Per_4_2)))
 (let (($x1523 (= Opp_3_2 5)))
 (=> $x1523 $x1532))))
(assert
 (let (($x1536 (= Opp_4_3 4)))
 (let (($x1535 (= Opp_3_3 5)))
 (=> $x1535 $x1536))))
(assert
 (let (($x1541 (= (+ Home_3_3 Home_4_3) 1)))
 (let (($x1535 (= Opp_3_3 5)))
 (=> $x1535 $x1541))))
(assert
 (let (($x1544 (= Per_3_3 Per_4_3)))
 (let (($x1535 (= Opp_3_3 5)))
 (=> $x1535 $x1544))))
(assert
 (let (($x1548 (= Opp_4_4 4)))
 (let (($x1547 (= Opp_3_4 5)))
 (=> $x1547 $x1548))))
(assert
 (let (($x1553 (= (+ Home_3_4 Home_4_4) 1)))
 (let (($x1547 (= Opp_3_4 5)))
 (=> $x1547 $x1553))))
(assert
 (let (($x1556 (= Per_3_4 Per_4_4)))
 (let (($x1547 (= Opp_3_4 5)))
 (=> $x1547 $x1556))))
(assert
 (let (($x1560 (= Opp_5_0 4)))
 (let (($x1559 (= Opp_3_0 6)))
 (=> $x1559 $x1560))))
(assert
 (let (($x1565 (= (+ Home_3_0 Home_5_0) 1)))
 (let (($x1559 (= Opp_3_0 6)))
 (=> $x1559 $x1565))))
(assert
 (let (($x1568 (= Per_3_0 Per_5_0)))
 (let (($x1559 (= Opp_3_0 6)))
 (=> $x1559 $x1568))))
(assert
 (let (($x1572 (= Opp_5_1 4)))
 (let (($x1571 (= Opp_3_1 6)))
 (=> $x1571 $x1572))))
(assert
 (let (($x1577 (= (+ Home_3_1 Home_5_1) 1)))
 (let (($x1571 (= Opp_3_1 6)))
 (=> $x1571 $x1577))))
(assert
 (let (($x1580 (= Per_3_1 Per_5_1)))
 (let (($x1571 (= Opp_3_1 6)))
 (=> $x1571 $x1580))))
(assert
 (let (($x1584 (= Opp_5_2 4)))
 (let (($x1583 (= Opp_3_2 6)))
 (=> $x1583 $x1584))))
(assert
 (let (($x1589 (= (+ Home_3_2 Home_5_2) 1)))
 (let (($x1583 (= Opp_3_2 6)))
 (=> $x1583 $x1589))))
(assert
 (let (($x1592 (= Per_3_2 Per_5_2)))
 (let (($x1583 (= Opp_3_2 6)))
 (=> $x1583 $x1592))))
(assert
 (let (($x1596 (= Opp_5_3 4)))
 (let (($x1595 (= Opp_3_3 6)))
 (=> $x1595 $x1596))))
(assert
 (let (($x1601 (= (+ Home_3_3 Home_5_3) 1)))
 (let (($x1595 (= Opp_3_3 6)))
 (=> $x1595 $x1601))))
(assert
 (let (($x1604 (= Per_3_3 Per_5_3)))
 (let (($x1595 (= Opp_3_3 6)))
 (=> $x1595 $x1604))))
(assert
 (let (($x1608 (= Opp_5_4 4)))
 (let (($x1607 (= Opp_3_4 6)))
 (=> $x1607 $x1608))))
(assert
 (let (($x1613 (= (+ Home_3_4 Home_5_4) 1)))
 (let (($x1607 (= Opp_3_4 6)))
 (=> $x1607 $x1613))))
(assert
 (let (($x1616 (= Per_3_4 Per_5_4)))
 (let (($x1607 (= Opp_3_4 6)))
 (=> $x1607 $x1616))))
(assert
 (let (($x659 (= Opp_0_0 5)))
 (let (($x660 (= Opp_4_0 1)))
 (=> $x660 $x659))))
(assert
 (let (($x660 (= Opp_4_0 1)))
 (=> $x660 (= (+ Home_4_0 Home_0_0) 1))))
(assert
 (let (($x1626 (= Per_4_0 Per_0_0)))
 (let (($x660 (= Opp_4_0 1)))
 (=> $x660 $x1626))))
(assert
 (let (($x671 (= Opp_0_1 5)))
 (let (($x672 (= Opp_4_1 1)))
 (=> $x672 $x671))))
(assert
 (let (($x672 (= Opp_4_1 1)))
 (=> $x672 (= (+ Home_4_1 Home_0_1) 1))))
(assert
 (let (($x1636 (= Per_4_1 Per_0_1)))
 (let (($x672 (= Opp_4_1 1)))
 (=> $x672 $x1636))))
(assert
 (let (($x683 (= Opp_0_2 5)))
 (let (($x684 (= Opp_4_2 1)))
 (=> $x684 $x683))))
(assert
 (let (($x684 (= Opp_4_2 1)))
 (=> $x684 (= (+ Home_4_2 Home_0_2) 1))))
(assert
 (let (($x1646 (= Per_4_2 Per_0_2)))
 (let (($x684 (= Opp_4_2 1)))
 (=> $x684 $x1646))))
(assert
 (let (($x695 (= Opp_0_3 5)))
 (let (($x696 (= Opp_4_3 1)))
 (=> $x696 $x695))))
(assert
 (let (($x696 (= Opp_4_3 1)))
 (=> $x696 (= (+ Home_4_3 Home_0_3) 1))))
(assert
 (let (($x1656 (= Per_4_3 Per_0_3)))
 (let (($x696 (= Opp_4_3 1)))
 (=> $x696 $x1656))))
(assert
 (let (($x707 (= Opp_0_4 5)))
 (let (($x708 (= Opp_4_4 1)))
 (=> $x708 $x707))))
(assert
 (let (($x708 (= Opp_4_4 1)))
 (=> $x708 (= (+ Home_4_4 Home_0_4) 1))))
(assert
 (let (($x1666 (= Per_4_4 Per_0_4)))
 (let (($x708 (= Opp_4_4 1)))
 (=> $x708 $x1666))))
(assert
 (let (($x949 (= Opp_1_0 5)))
 (let (($x950 (= Opp_4_0 2)))
 (=> $x950 $x949))))
(assert
 (let (($x950 (= Opp_4_0 2)))
 (=> $x950 (= (+ Home_4_0 Home_1_0) 1))))
(assert
 (let (($x1676 (= Per_4_0 Per_1_0)))
 (let (($x950 (= Opp_4_0 2)))
 (=> $x950 $x1676))))
(assert
 (let (($x961 (= Opp_1_1 5)))
 (let (($x962 (= Opp_4_1 2)))
 (=> $x962 $x961))))
(assert
 (let (($x962 (= Opp_4_1 2)))
 (=> $x962 (= (+ Home_4_1 Home_1_1) 1))))
(assert
 (let (($x1686 (= Per_4_1 Per_1_1)))
 (let (($x962 (= Opp_4_1 2)))
 (=> $x962 $x1686))))
(assert
 (let (($x973 (= Opp_1_2 5)))
 (let (($x974 (= Opp_4_2 2)))
 (=> $x974 $x973))))
(assert
 (let (($x974 (= Opp_4_2 2)))
 (=> $x974 (= (+ Home_4_2 Home_1_2) 1))))
(assert
 (let (($x1696 (= Per_4_2 Per_1_2)))
 (let (($x974 (= Opp_4_2 2)))
 (=> $x974 $x1696))))
(assert
 (let (($x985 (= Opp_1_3 5)))
 (let (($x986 (= Opp_4_3 2)))
 (=> $x986 $x985))))
(assert
 (let (($x986 (= Opp_4_3 2)))
 (=> $x986 (= (+ Home_4_3 Home_1_3) 1))))
(assert
 (let (($x1706 (= Per_4_3 Per_1_3)))
 (let (($x986 (= Opp_4_3 2)))
 (=> $x986 $x1706))))
(assert
 (let (($x997 (= Opp_1_4 5)))
 (let (($x998 (= Opp_4_4 2)))
 (=> $x998 $x997))))
(assert
 (let (($x998 (= Opp_4_4 2)))
 (=> $x998 (= (+ Home_4_4 Home_1_4) 1))))
(assert
 (let (($x1716 (= Per_4_4 Per_1_4)))
 (let (($x998 (= Opp_4_4 2)))
 (=> $x998 $x1716))))
(assert
 (let (($x1229 (= Opp_2_0 5)))
 (let (($x1230 (= Opp_4_0 3)))
 (=> $x1230 $x1229))))
(assert
 (let (($x1230 (= Opp_4_0 3)))
 (=> $x1230 (= (+ Home_4_0 Home_2_0) 1))))
(assert
 (let (($x1726 (= Per_4_0 Per_2_0)))
 (let (($x1230 (= Opp_4_0 3)))
 (=> $x1230 $x1726))))
(assert
 (let (($x1241 (= Opp_2_1 5)))
 (let (($x1242 (= Opp_4_1 3)))
 (=> $x1242 $x1241))))
(assert
 (let (($x1242 (= Opp_4_1 3)))
 (=> $x1242 (= (+ Home_4_1 Home_2_1) 1))))
(assert
 (let (($x1736 (= Per_4_1 Per_2_1)))
 (let (($x1242 (= Opp_4_1 3)))
 (=> $x1242 $x1736))))
(assert
 (let (($x1253 (= Opp_2_2 5)))
 (let (($x1254 (= Opp_4_2 3)))
 (=> $x1254 $x1253))))
(assert
 (let (($x1254 (= Opp_4_2 3)))
 (=> $x1254 (= (+ Home_4_2 Home_2_2) 1))))
(assert
 (let (($x1746 (= Per_4_2 Per_2_2)))
 (let (($x1254 (= Opp_4_2 3)))
 (=> $x1254 $x1746))))
(assert
 (let (($x1265 (= Opp_2_3 5)))
 (let (($x1266 (= Opp_4_3 3)))
 (=> $x1266 $x1265))))
(assert
 (let (($x1266 (= Opp_4_3 3)))
 (=> $x1266 (= (+ Home_4_3 Home_2_3) 1))))
(assert
 (let (($x1756 (= Per_4_3 Per_2_3)))
 (let (($x1266 (= Opp_4_3 3)))
 (=> $x1266 $x1756))))
(assert
 (let (($x1277 (= Opp_2_4 5)))
 (let (($x1278 (= Opp_4_4 3)))
 (=> $x1278 $x1277))))
(assert
 (let (($x1278 (= Opp_4_4 3)))
 (=> $x1278 (= (+ Home_4_4 Home_2_4) 1))))
(assert
 (let (($x1766 (= Per_4_4 Per_2_4)))
 (let (($x1278 (= Opp_4_4 3)))
 (=> $x1278 $x1766))))
(assert
 (let (($x1499 (= Opp_3_0 5)))
 (let (($x1500 (= Opp_4_0 4)))
 (=> $x1500 $x1499))))
(assert
 (let (($x1500 (= Opp_4_0 4)))
 (=> $x1500 (= (+ Home_4_0 Home_3_0) 1))))
(assert
 (let (($x1776 (= Per_4_0 Per_3_0)))
 (let (($x1500 (= Opp_4_0 4)))
 (=> $x1500 $x1776))))
(assert
 (let (($x1511 (= Opp_3_1 5)))
 (let (($x1512 (= Opp_4_1 4)))
 (=> $x1512 $x1511))))
(assert
 (let (($x1512 (= Opp_4_1 4)))
 (=> $x1512 (= (+ Home_4_1 Home_3_1) 1))))
(assert
 (let (($x1786 (= Per_4_1 Per_3_1)))
 (let (($x1512 (= Opp_4_1 4)))
 (=> $x1512 $x1786))))
(assert
 (let (($x1523 (= Opp_3_2 5)))
 (let (($x1524 (= Opp_4_2 4)))
 (=> $x1524 $x1523))))
(assert
 (let (($x1524 (= Opp_4_2 4)))
 (=> $x1524 (= (+ Home_4_2 Home_3_2) 1))))
(assert
 (let (($x1796 (= Per_4_2 Per_3_2)))
 (let (($x1524 (= Opp_4_2 4)))
 (=> $x1524 $x1796))))
(assert
 (let (($x1535 (= Opp_3_3 5)))
 (let (($x1536 (= Opp_4_3 4)))
 (=> $x1536 $x1535))))
(assert
 (let (($x1536 (= Opp_4_3 4)))
 (=> $x1536 (= (+ Home_4_3 Home_3_3) 1))))
(assert
 (let (($x1806 (= Per_4_3 Per_3_3)))
 (let (($x1536 (= Opp_4_3 4)))
 (=> $x1536 $x1806))))
(assert
 (let (($x1547 (= Opp_3_4 5)))
 (let (($x1548 (= Opp_4_4 4)))
 (=> $x1548 $x1547))))
(assert
 (let (($x1548 (= Opp_4_4 4)))
 (=> $x1548 (= (+ Home_4_4 Home_3_4) 1))))
(assert
 (let (($x1816 (= Per_4_4 Per_3_4)))
 (let (($x1548 (= Opp_4_4 4)))
 (=> $x1548 $x1816))))
(assert
 (let (($x1820 (= Opp_5_0 5)))
 (let (($x1819 (= Opp_4_0 6)))
 (=> $x1819 $x1820))))
(assert
 (let (($x1825 (= (+ Home_4_0 Home_5_0) 1)))
 (let (($x1819 (= Opp_4_0 6)))
 (=> $x1819 $x1825))))
(assert
 (let (($x1828 (= Per_4_0 Per_5_0)))
 (let (($x1819 (= Opp_4_0 6)))
 (=> $x1819 $x1828))))
(assert
 (let (($x1832 (= Opp_5_1 5)))
 (let (($x1831 (= Opp_4_1 6)))
 (=> $x1831 $x1832))))
(assert
 (let (($x1837 (= (+ Home_4_1 Home_5_1) 1)))
 (let (($x1831 (= Opp_4_1 6)))
 (=> $x1831 $x1837))))
(assert
 (let (($x1840 (= Per_4_1 Per_5_1)))
 (let (($x1831 (= Opp_4_1 6)))
 (=> $x1831 $x1840))))
(assert
 (let (($x1844 (= Opp_5_2 5)))
 (let (($x1843 (= Opp_4_2 6)))
 (=> $x1843 $x1844))))
(assert
 (let (($x1849 (= (+ Home_4_2 Home_5_2) 1)))
 (let (($x1843 (= Opp_4_2 6)))
 (=> $x1843 $x1849))))
(assert
 (let (($x1852 (= Per_4_2 Per_5_2)))
 (let (($x1843 (= Opp_4_2 6)))
 (=> $x1843 $x1852))))
(assert
 (let (($x1856 (= Opp_5_3 5)))
 (let (($x1855 (= Opp_4_3 6)))
 (=> $x1855 $x1856))))
(assert
 (let (($x1861 (= (+ Home_4_3 Home_5_3) 1)))
 (let (($x1855 (= Opp_4_3 6)))
 (=> $x1855 $x1861))))
(assert
 (let (($x1864 (= Per_4_3 Per_5_3)))
 (let (($x1855 (= Opp_4_3 6)))
 (=> $x1855 $x1864))))
(assert
 (let (($x1868 (= Opp_5_4 5)))
 (let (($x1867 (= Opp_4_4 6)))
 (=> $x1867 $x1868))))
(assert
 (let (($x1873 (= (+ Home_4_4 Home_5_4) 1)))
 (let (($x1867 (= Opp_4_4 6)))
 (=> $x1867 $x1873))))
(assert
 (let (($x1876 (= Per_4_4 Per_5_4)))
 (let (($x1867 (= Opp_4_4 6)))
 (=> $x1867 $x1876))))
(assert
 (let (($x719 (= Opp_0_0 6)))
 (let (($x720 (= Opp_5_0 1)))
 (=> $x720 $x719))))
(assert
 (let (($x720 (= Opp_5_0 1)))
 (=> $x720 (= (+ Home_5_0 Home_0_0) 1))))
(assert
 (let (($x1886 (= Per_5_0 Per_0_0)))
 (let (($x720 (= Opp_5_0 1)))
 (=> $x720 $x1886))))
(assert
 (let (($x731 (= Opp_0_1 6)))
 (let (($x732 (= Opp_5_1 1)))
 (=> $x732 $x731))))
(assert
 (let (($x732 (= Opp_5_1 1)))
 (=> $x732 (= (+ Home_5_1 Home_0_1) 1))))
(assert
 (let (($x1896 (= Per_5_1 Per_0_1)))
 (let (($x732 (= Opp_5_1 1)))
 (=> $x732 $x1896))))
(assert
 (let (($x743 (= Opp_0_2 6)))
 (let (($x744 (= Opp_5_2 1)))
 (=> $x744 $x743))))
(assert
 (let (($x744 (= Opp_5_2 1)))
 (=> $x744 (= (+ Home_5_2 Home_0_2) 1))))
(assert
 (let (($x1906 (= Per_5_2 Per_0_2)))
 (let (($x744 (= Opp_5_2 1)))
 (=> $x744 $x1906))))
(assert
 (let (($x755 (= Opp_0_3 6)))
 (let (($x756 (= Opp_5_3 1)))
 (=> $x756 $x755))))
(assert
 (let (($x756 (= Opp_5_3 1)))
 (=> $x756 (= (+ Home_5_3 Home_0_3) 1))))
(assert
 (let (($x1916 (= Per_5_3 Per_0_3)))
 (let (($x756 (= Opp_5_3 1)))
 (=> $x756 $x1916))))
(assert
 (let (($x767 (= Opp_0_4 6)))
 (let (($x768 (= Opp_5_4 1)))
 (=> $x768 $x767))))
(assert
 (let (($x768 (= Opp_5_4 1)))
 (=> $x768 (= (+ Home_5_4 Home_0_4) 1))))
(assert
 (let (($x1926 (= Per_5_4 Per_0_4)))
 (let (($x768 (= Opp_5_4 1)))
 (=> $x768 $x1926))))
(assert
 (let (($x1009 (= Opp_1_0 6)))
 (let (($x1010 (= Opp_5_0 2)))
 (=> $x1010 $x1009))))
(assert
 (let (($x1010 (= Opp_5_0 2)))
 (=> $x1010 (= (+ Home_5_0 Home_1_0) 1))))
(assert
 (let (($x1936 (= Per_5_0 Per_1_0)))
 (let (($x1010 (= Opp_5_0 2)))
 (=> $x1010 $x1936))))
(assert
 (let (($x1021 (= Opp_1_1 6)))
 (let (($x1022 (= Opp_5_1 2)))
 (=> $x1022 $x1021))))
(assert
 (let (($x1022 (= Opp_5_1 2)))
 (=> $x1022 (= (+ Home_5_1 Home_1_1) 1))))
(assert
 (let (($x1946 (= Per_5_1 Per_1_1)))
 (let (($x1022 (= Opp_5_1 2)))
 (=> $x1022 $x1946))))
(assert
 (let (($x1033 (= Opp_1_2 6)))
 (let (($x1034 (= Opp_5_2 2)))
 (=> $x1034 $x1033))))
(assert
 (let (($x1034 (= Opp_5_2 2)))
 (=> $x1034 (= (+ Home_5_2 Home_1_2) 1))))
(assert
 (let (($x1956 (= Per_5_2 Per_1_2)))
 (let (($x1034 (= Opp_5_2 2)))
 (=> $x1034 $x1956))))
(assert
 (let (($x1045 (= Opp_1_3 6)))
 (let (($x1046 (= Opp_5_3 2)))
 (=> $x1046 $x1045))))
(assert
 (let (($x1046 (= Opp_5_3 2)))
 (=> $x1046 (= (+ Home_5_3 Home_1_3) 1))))
(assert
 (let (($x1966 (= Per_5_3 Per_1_3)))
 (let (($x1046 (= Opp_5_3 2)))
 (=> $x1046 $x1966))))
(assert
 (let (($x1057 (= Opp_1_4 6)))
 (let (($x1058 (= Opp_5_4 2)))
 (=> $x1058 $x1057))))
(assert
 (let (($x1058 (= Opp_5_4 2)))
 (=> $x1058 (= (+ Home_5_4 Home_1_4) 1))))
(assert
 (let (($x1976 (= Per_5_4 Per_1_4)))
 (let (($x1058 (= Opp_5_4 2)))
 (=> $x1058 $x1976))))
(assert
 (let (($x1289 (= Opp_2_0 6)))
 (let (($x1290 (= Opp_5_0 3)))
 (=> $x1290 $x1289))))
(assert
 (let (($x1290 (= Opp_5_0 3)))
 (=> $x1290 (= (+ Home_5_0 Home_2_0) 1))))
(assert
 (let (($x1986 (= Per_5_0 Per_2_0)))
 (let (($x1290 (= Opp_5_0 3)))
 (=> $x1290 $x1986))))
(assert
 (let (($x1301 (= Opp_2_1 6)))
 (let (($x1302 (= Opp_5_1 3)))
 (=> $x1302 $x1301))))
(assert
 (let (($x1302 (= Opp_5_1 3)))
 (=> $x1302 (= (+ Home_5_1 Home_2_1) 1))))
(assert
 (let (($x1996 (= Per_5_1 Per_2_1)))
 (let (($x1302 (= Opp_5_1 3)))
 (=> $x1302 $x1996))))
(assert
 (let (($x1313 (= Opp_2_2 6)))
 (let (($x1314 (= Opp_5_2 3)))
 (=> $x1314 $x1313))))
(assert
 (let (($x1314 (= Opp_5_2 3)))
 (=> $x1314 (= (+ Home_5_2 Home_2_2) 1))))
(assert
 (let (($x2006 (= Per_5_2 Per_2_2)))
 (let (($x1314 (= Opp_5_2 3)))
 (=> $x1314 $x2006))))
(assert
 (let (($x1325 (= Opp_2_3 6)))
 (let (($x1326 (= Opp_5_3 3)))
 (=> $x1326 $x1325))))
(assert
 (let (($x1326 (= Opp_5_3 3)))
 (=> $x1326 (= (+ Home_5_3 Home_2_3) 1))))
(assert
 (let (($x2016 (= Per_5_3 Per_2_3)))
 (let (($x1326 (= Opp_5_3 3)))
 (=> $x1326 $x2016))))
(assert
 (let (($x1337 (= Opp_2_4 6)))
 (let (($x1338 (= Opp_5_4 3)))
 (=> $x1338 $x1337))))
(assert
 (let (($x1338 (= Opp_5_4 3)))
 (=> $x1338 (= (+ Home_5_4 Home_2_4) 1))))
(assert
 (let (($x2026 (= Per_5_4 Per_2_4)))
 (let (($x1338 (= Opp_5_4 3)))
 (=> $x1338 $x2026))))
(assert
 (let (($x1559 (= Opp_3_0 6)))
 (let (($x1560 (= Opp_5_0 4)))
 (=> $x1560 $x1559))))
(assert
 (let (($x1560 (= Opp_5_0 4)))
 (=> $x1560 (= (+ Home_5_0 Home_3_0) 1))))
(assert
 (let (($x2036 (= Per_5_0 Per_3_0)))
 (let (($x1560 (= Opp_5_0 4)))
 (=> $x1560 $x2036))))
(assert
 (let (($x1571 (= Opp_3_1 6)))
 (let (($x1572 (= Opp_5_1 4)))
 (=> $x1572 $x1571))))
(assert
 (let (($x1572 (= Opp_5_1 4)))
 (=> $x1572 (= (+ Home_5_1 Home_3_1) 1))))
(assert
 (let (($x2046 (= Per_5_1 Per_3_1)))
 (let (($x1572 (= Opp_5_1 4)))
 (=> $x1572 $x2046))))
(assert
 (let (($x1583 (= Opp_3_2 6)))
 (let (($x1584 (= Opp_5_2 4)))
 (=> $x1584 $x1583))))
(assert
 (let (($x1584 (= Opp_5_2 4)))
 (=> $x1584 (= (+ Home_5_2 Home_3_2) 1))))
(assert
 (let (($x2056 (= Per_5_2 Per_3_2)))
 (let (($x1584 (= Opp_5_2 4)))
 (=> $x1584 $x2056))))
(assert
 (let (($x1595 (= Opp_3_3 6)))
 (let (($x1596 (= Opp_5_3 4)))
 (=> $x1596 $x1595))))
(assert
 (let (($x1596 (= Opp_5_3 4)))
 (=> $x1596 (= (+ Home_5_3 Home_3_3) 1))))
(assert
 (let (($x2066 (= Per_5_3 Per_3_3)))
 (let (($x1596 (= Opp_5_3 4)))
 (=> $x1596 $x2066))))
(assert
 (let (($x1607 (= Opp_3_4 6)))
 (let (($x1608 (= Opp_5_4 4)))
 (=> $x1608 $x1607))))
(assert
 (let (($x1608 (= Opp_5_4 4)))
 (=> $x1608 (= (+ Home_5_4 Home_3_4) 1))))
(assert
 (let (($x2076 (= Per_5_4 Per_3_4)))
 (let (($x1608 (= Opp_5_4 4)))
 (=> $x1608 $x2076))))
(assert
 (let (($x1819 (= Opp_4_0 6)))
 (let (($x1820 (= Opp_5_0 5)))
 (=> $x1820 $x1819))))
(assert
 (let (($x1820 (= Opp_5_0 5)))
 (=> $x1820 (= (+ Home_5_0 Home_4_0) 1))))
(assert
 (let (($x2086 (= Per_5_0 Per_4_0)))
 (let (($x1820 (= Opp_5_0 5)))
 (=> $x1820 $x2086))))
(assert
 (let (($x1831 (= Opp_4_1 6)))
 (let (($x1832 (= Opp_5_1 5)))
 (=> $x1832 $x1831))))
(assert
 (let (($x1832 (= Opp_5_1 5)))
 (=> $x1832 (= (+ Home_5_1 Home_4_1) 1))))
(assert
 (let (($x2096 (= Per_5_1 Per_4_1)))
 (let (($x1832 (= Opp_5_1 5)))
 (=> $x1832 $x2096))))
(assert
 (let (($x1843 (= Opp_4_2 6)))
 (let (($x1844 (= Opp_5_2 5)))
 (=> $x1844 $x1843))))
(assert
 (let (($x1844 (= Opp_5_2 5)))
 (=> $x1844 (= (+ Home_5_2 Home_4_2) 1))))
(assert
 (let (($x2106 (= Per_5_2 Per_4_2)))
 (let (($x1844 (= Opp_5_2 5)))
 (=> $x1844 $x2106))))
(assert
 (let (($x1855 (= Opp_4_3 6)))
 (let (($x1856 (= Opp_5_3 5)))
 (=> $x1856 $x1855))))
(assert
 (let (($x1856 (= Opp_5_3 5)))
 (=> $x1856 (= (+ Home_5_3 Home_4_3) 1))))
(assert
 (let (($x2116 (= Per_5_3 Per_4_3)))
 (let (($x1856 (= Opp_5_3 5)))
 (=> $x1856 $x2116))))
(assert
 (let (($x1867 (= Opp_4_4 6)))
 (let (($x1868 (= Opp_5_4 5)))
 (=> $x1868 $x1867))))
(assert
 (let (($x1868 (= Opp_5_4 5)))
 (=> $x1868 (= (+ Home_5_4 Home_4_4) 1))))
(assert
 (let (($x2126 (= Per_5_4 Per_4_4)))
 (let (($x1868 (= Opp_5_4 5)))
 (=> $x1868 $x2126))))
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
 (let (($x2145 (= Per_5_0 1)))
 (let ((?x2146 (ite $x2145 1 0)))
 (let (($x2143 (= Per_4_0 1)))
 (let ((?x2144 (ite $x2143 1 0)))
 (let (($x2141 (= Per_3_0 1)))
 (let ((?x2142 (ite $x2141 1 0)))
 (let (($x2139 (= Per_2_0 1)))
 (let ((?x2140 (ite $x2139 1 0)))
 (let (($x2137 (= Per_1_0 1)))
 (let ((?x2138 (ite $x2137 1 0)))
 (let (($x2135 (= Per_0_0 1)))
 (let ((?x2136 (ite $x2135 1 0)))
 (= (+ ?x2136 ?x2138 ?x2140 ?x2142 ?x2144 ?x2146) 2))))))))))))))
(assert
 (let (($x2159 (= Per_5_0 2)))
 (let ((?x2160 (ite $x2159 1 0)))
 (let (($x2157 (= Per_4_0 2)))
 (let ((?x2158 (ite $x2157 1 0)))
 (let (($x2155 (= Per_3_0 2)))
 (let ((?x2156 (ite $x2155 1 0)))
 (let (($x2153 (= Per_2_0 2)))
 (let ((?x2154 (ite $x2153 1 0)))
 (let (($x2151 (= Per_1_0 2)))
 (let ((?x2152 (ite $x2151 1 0)))
 (let (($x2149 (= Per_0_0 2)))
 (let ((?x2150 (ite $x2149 1 0)))
 (= (+ ?x2150 ?x2152 ?x2154 ?x2156 ?x2158 ?x2160) 2))))))))))))))
(assert
 (let (($x2173 (= Per_5_0 3)))
 (let ((?x2174 (ite $x2173 1 0)))
 (let (($x2171 (= Per_4_0 3)))
 (let ((?x2172 (ite $x2171 1 0)))
 (let (($x2169 (= Per_3_0 3)))
 (let ((?x2170 (ite $x2169 1 0)))
 (let (($x2167 (= Per_2_0 3)))
 (let ((?x2168 (ite $x2167 1 0)))
 (let (($x2165 (= Per_1_0 3)))
 (let ((?x2166 (ite $x2165 1 0)))
 (let (($x2163 (= Per_0_0 3)))
 (let ((?x2164 (ite $x2163 1 0)))
 (= (+ ?x2164 ?x2166 ?x2168 ?x2170 ?x2172 ?x2174) 2))))))))))))))
(assert
 (let ((?x2188 (ite (= Per_5_1 1) 1 0)))
 (let ((?x2186 (ite (= Per_4_1 1) 1 0)))
 (let ((?x2184 (ite (= Per_3_1 1) 1 0)))
 (let ((?x2182 (ite (= Per_2_1 1) 1 0)))
 (let ((?x2180 (ite (= Per_1_1 1) 1 0)))
 (let ((?x2178 (ite (= Per_0_1 1) 1 0)))
 (= (+ ?x2178 ?x2180 ?x2182 ?x2184 ?x2186 ?x2188) 2))))))))
(assert
 (let ((?x2202 (ite (= Per_5_1 2) 1 0)))
 (let ((?x2200 (ite (= Per_4_1 2) 1 0)))
 (let ((?x2198 (ite (= Per_3_1 2) 1 0)))
 (let ((?x2196 (ite (= Per_2_1 2) 1 0)))
 (let ((?x2194 (ite (= Per_1_1 2) 1 0)))
 (let ((?x2192 (ite (= Per_0_1 2) 1 0)))
 (= (+ ?x2192 ?x2194 ?x2196 ?x2198 ?x2200 ?x2202) 2))))))))
(assert
 (let ((?x2216 (ite (= Per_5_1 3) 1 0)))
 (let ((?x2214 (ite (= Per_4_1 3) 1 0)))
 (let ((?x2212 (ite (= Per_3_1 3) 1 0)))
 (let ((?x2210 (ite (= Per_2_1 3) 1 0)))
 (let ((?x2208 (ite (= Per_1_1 3) 1 0)))
 (let ((?x2206 (ite (= Per_0_1 3) 1 0)))
 (= (+ ?x2206 ?x2208 ?x2210 ?x2212 ?x2214 ?x2216) 2))))))))
(assert
 (let ((?x2230 (ite (= Per_5_2 1) 1 0)))
 (let ((?x2228 (ite (= Per_4_2 1) 1 0)))
 (let ((?x2226 (ite (= Per_3_2 1) 1 0)))
 (let ((?x2224 (ite (= Per_2_2 1) 1 0)))
 (let ((?x2222 (ite (= Per_1_2 1) 1 0)))
 (let ((?x2220 (ite (= Per_0_2 1) 1 0)))
 (= (+ ?x2220 ?x2222 ?x2224 ?x2226 ?x2228 ?x2230) 2))))))))
(assert
 (let ((?x2244 (ite (= Per_5_2 2) 1 0)))
 (let ((?x2242 (ite (= Per_4_2 2) 1 0)))
 (let ((?x2240 (ite (= Per_3_2 2) 1 0)))
 (let ((?x2238 (ite (= Per_2_2 2) 1 0)))
 (let ((?x2236 (ite (= Per_1_2 2) 1 0)))
 (let ((?x2234 (ite (= Per_0_2 2) 1 0)))
 (= (+ ?x2234 ?x2236 ?x2238 ?x2240 ?x2242 ?x2244) 2))))))))
(assert
 (let ((?x2258 (ite (= Per_5_2 3) 1 0)))
 (let ((?x2256 (ite (= Per_4_2 3) 1 0)))
 (let ((?x2254 (ite (= Per_3_2 3) 1 0)))
 (let ((?x2252 (ite (= Per_2_2 3) 1 0)))
 (let ((?x2250 (ite (= Per_1_2 3) 1 0)))
 (let ((?x2248 (ite (= Per_0_2 3) 1 0)))
 (= (+ ?x2248 ?x2250 ?x2252 ?x2254 ?x2256 ?x2258) 2))))))))
(assert
 (let ((?x2272 (ite (= Per_5_3 1) 1 0)))
 (let ((?x2270 (ite (= Per_4_3 1) 1 0)))
 (let ((?x2268 (ite (= Per_3_3 1) 1 0)))
 (let ((?x2266 (ite (= Per_2_3 1) 1 0)))
 (let ((?x2264 (ite (= Per_1_3 1) 1 0)))
 (let ((?x2262 (ite (= Per_0_3 1) 1 0)))
 (= (+ ?x2262 ?x2264 ?x2266 ?x2268 ?x2270 ?x2272) 2))))))))
(assert
 (let ((?x2286 (ite (= Per_5_3 2) 1 0)))
 (let ((?x2284 (ite (= Per_4_3 2) 1 0)))
 (let ((?x2282 (ite (= Per_3_3 2) 1 0)))
 (let ((?x2280 (ite (= Per_2_3 2) 1 0)))
 (let ((?x2278 (ite (= Per_1_3 2) 1 0)))
 (let ((?x2276 (ite (= Per_0_3 2) 1 0)))
 (= (+ ?x2276 ?x2278 ?x2280 ?x2282 ?x2284 ?x2286) 2))))))))
(assert
 (let ((?x2300 (ite (= Per_5_3 3) 1 0)))
 (let ((?x2298 (ite (= Per_4_3 3) 1 0)))
 (let ((?x2296 (ite (= Per_3_3 3) 1 0)))
 (let ((?x2294 (ite (= Per_2_3 3) 1 0)))
 (let ((?x2292 (ite (= Per_1_3 3) 1 0)))
 (let ((?x2290 (ite (= Per_0_3 3) 1 0)))
 (= (+ ?x2290 ?x2292 ?x2294 ?x2296 ?x2298 ?x2300) 2))))))))
(assert
 (let ((?x2314 (ite (= Per_5_4 1) 1 0)))
 (let ((?x2312 (ite (= Per_4_4 1) 1 0)))
 (let ((?x2310 (ite (= Per_3_4 1) 1 0)))
 (let ((?x2308 (ite (= Per_2_4 1) 1 0)))
 (let ((?x2306 (ite (= Per_1_4 1) 1 0)))
 (let ((?x2304 (ite (= Per_0_4 1) 1 0)))
 (= (+ ?x2304 ?x2306 ?x2308 ?x2310 ?x2312 ?x2314) 2))))))))
(assert
 (let ((?x2328 (ite (= Per_5_4 2) 1 0)))
 (let ((?x2326 (ite (= Per_4_4 2) 1 0)))
 (let ((?x2324 (ite (= Per_3_4 2) 1 0)))
 (let ((?x2322 (ite (= Per_2_4 2) 1 0)))
 (let ((?x2320 (ite (= Per_1_4 2) 1 0)))
 (let ((?x2318 (ite (= Per_0_4 2) 1 0)))
 (= (+ ?x2318 ?x2320 ?x2322 ?x2324 ?x2326 ?x2328) 2))))))))
(assert
 (let ((?x2342 (ite (= Per_5_4 3) 1 0)))
 (let ((?x2340 (ite (= Per_4_4 3) 1 0)))
 (let ((?x2338 (ite (= Per_3_4 3) 1 0)))
 (let ((?x2336 (ite (= Per_2_4 3) 1 0)))
 (let ((?x2334 (ite (= Per_1_4 3) 1 0)))
 (let ((?x2332 (ite (= Per_0_4 3) 1 0)))
 (= (+ ?x2332 ?x2334 ?x2336 ?x2338 ?x2340 ?x2342) 2))))))))
(assert
 (let ((?x2304 (ite (= Per_0_4 1) 1 0)))
 (let ((?x2262 (ite (= Per_0_3 1) 1 0)))
 (let ((?x2220 (ite (= Per_0_2 1) 1 0)))
 (let ((?x2178 (ite (= Per_0_1 1) 1 0)))
 (let (($x2135 (= Per_0_0 1)))
 (let ((?x2136 (ite $x2135 1 0)))
 (<= (+ ?x2136 ?x2178 ?x2220 ?x2262 ?x2304) 2))))))))
(assert
 (let ((?x2318 (ite (= Per_0_4 2) 1 0)))
 (let ((?x2276 (ite (= Per_0_3 2) 1 0)))
 (let ((?x2234 (ite (= Per_0_2 2) 1 0)))
 (let ((?x2192 (ite (= Per_0_1 2) 1 0)))
 (let (($x2149 (= Per_0_0 2)))
 (let ((?x2150 (ite $x2149 1 0)))
 (<= (+ ?x2150 ?x2192 ?x2234 ?x2276 ?x2318) 2))))))))
(assert
 (let ((?x2332 (ite (= Per_0_4 3) 1 0)))
 (let ((?x2290 (ite (= Per_0_3 3) 1 0)))
 (let ((?x2248 (ite (= Per_0_2 3) 1 0)))
 (let ((?x2206 (ite (= Per_0_1 3) 1 0)))
 (let (($x2163 (= Per_0_0 3)))
 (let ((?x2164 (ite $x2163 1 0)))
 (<= (+ ?x2164 ?x2206 ?x2248 ?x2290 ?x2332) 2))))))))
(assert
 (let ((?x2306 (ite (= Per_1_4 1) 1 0)))
 (let ((?x2264 (ite (= Per_1_3 1) 1 0)))
 (let ((?x2222 (ite (= Per_1_2 1) 1 0)))
 (let ((?x2180 (ite (= Per_1_1 1) 1 0)))
 (let (($x2137 (= Per_1_0 1)))
 (let ((?x2138 (ite $x2137 1 0)))
 (<= (+ ?x2138 ?x2180 ?x2222 ?x2264 ?x2306) 2))))))))
(assert
 (let ((?x2320 (ite (= Per_1_4 2) 1 0)))
 (let ((?x2278 (ite (= Per_1_3 2) 1 0)))
 (let ((?x2236 (ite (= Per_1_2 2) 1 0)))
 (let ((?x2194 (ite (= Per_1_1 2) 1 0)))
 (let (($x2151 (= Per_1_0 2)))
 (let ((?x2152 (ite $x2151 1 0)))
 (<= (+ ?x2152 ?x2194 ?x2236 ?x2278 ?x2320) 2))))))))
(assert
 (let ((?x2334 (ite (= Per_1_4 3) 1 0)))
 (let ((?x2292 (ite (= Per_1_3 3) 1 0)))
 (let ((?x2250 (ite (= Per_1_2 3) 1 0)))
 (let ((?x2208 (ite (= Per_1_1 3) 1 0)))
 (let (($x2165 (= Per_1_0 3)))
 (let ((?x2166 (ite $x2165 1 0)))
 (<= (+ ?x2166 ?x2208 ?x2250 ?x2292 ?x2334) 2))))))))
(assert
 (let ((?x2308 (ite (= Per_2_4 1) 1 0)))
 (let ((?x2266 (ite (= Per_2_3 1) 1 0)))
 (let ((?x2224 (ite (= Per_2_2 1) 1 0)))
 (let ((?x2182 (ite (= Per_2_1 1) 1 0)))
 (let (($x2139 (= Per_2_0 1)))
 (let ((?x2140 (ite $x2139 1 0)))
 (<= (+ ?x2140 ?x2182 ?x2224 ?x2266 ?x2308) 2))))))))
(assert
 (let ((?x2322 (ite (= Per_2_4 2) 1 0)))
 (let ((?x2280 (ite (= Per_2_3 2) 1 0)))
 (let ((?x2238 (ite (= Per_2_2 2) 1 0)))
 (let ((?x2196 (ite (= Per_2_1 2) 1 0)))
 (let (($x2153 (= Per_2_0 2)))
 (let ((?x2154 (ite $x2153 1 0)))
 (<= (+ ?x2154 ?x2196 ?x2238 ?x2280 ?x2322) 2))))))))
(assert
 (let ((?x2336 (ite (= Per_2_4 3) 1 0)))
 (let ((?x2294 (ite (= Per_2_3 3) 1 0)))
 (let ((?x2252 (ite (= Per_2_2 3) 1 0)))
 (let ((?x2210 (ite (= Per_2_1 3) 1 0)))
 (let (($x2167 (= Per_2_0 3)))
 (let ((?x2168 (ite $x2167 1 0)))
 (<= (+ ?x2168 ?x2210 ?x2252 ?x2294 ?x2336) 2))))))))
(assert
 (let ((?x2310 (ite (= Per_3_4 1) 1 0)))
 (let ((?x2268 (ite (= Per_3_3 1) 1 0)))
 (let ((?x2226 (ite (= Per_3_2 1) 1 0)))
 (let ((?x2184 (ite (= Per_3_1 1) 1 0)))
 (let (($x2141 (= Per_3_0 1)))
 (let ((?x2142 (ite $x2141 1 0)))
 (<= (+ ?x2142 ?x2184 ?x2226 ?x2268 ?x2310) 2))))))))
(assert
 (let ((?x2324 (ite (= Per_3_4 2) 1 0)))
 (let ((?x2282 (ite (= Per_3_3 2) 1 0)))
 (let ((?x2240 (ite (= Per_3_2 2) 1 0)))
 (let ((?x2198 (ite (= Per_3_1 2) 1 0)))
 (let (($x2155 (= Per_3_0 2)))
 (let ((?x2156 (ite $x2155 1 0)))
 (<= (+ ?x2156 ?x2198 ?x2240 ?x2282 ?x2324) 2))))))))
(assert
 (let ((?x2338 (ite (= Per_3_4 3) 1 0)))
 (let ((?x2296 (ite (= Per_3_3 3) 1 0)))
 (let ((?x2254 (ite (= Per_3_2 3) 1 0)))
 (let ((?x2212 (ite (= Per_3_1 3) 1 0)))
 (let (($x2169 (= Per_3_0 3)))
 (let ((?x2170 (ite $x2169 1 0)))
 (<= (+ ?x2170 ?x2212 ?x2254 ?x2296 ?x2338) 2))))))))
(assert
 (let ((?x2312 (ite (= Per_4_4 1) 1 0)))
 (let ((?x2270 (ite (= Per_4_3 1) 1 0)))
 (let ((?x2228 (ite (= Per_4_2 1) 1 0)))
 (let ((?x2186 (ite (= Per_4_1 1) 1 0)))
 (let (($x2143 (= Per_4_0 1)))
 (let ((?x2144 (ite $x2143 1 0)))
 (<= (+ ?x2144 ?x2186 ?x2228 ?x2270 ?x2312) 2))))))))
(assert
 (let ((?x2326 (ite (= Per_4_4 2) 1 0)))
 (let ((?x2284 (ite (= Per_4_3 2) 1 0)))
 (let ((?x2242 (ite (= Per_4_2 2) 1 0)))
 (let ((?x2200 (ite (= Per_4_1 2) 1 0)))
 (let (($x2157 (= Per_4_0 2)))
 (let ((?x2158 (ite $x2157 1 0)))
 (<= (+ ?x2158 ?x2200 ?x2242 ?x2284 ?x2326) 2))))))))
(assert
 (let ((?x2340 (ite (= Per_4_4 3) 1 0)))
 (let ((?x2298 (ite (= Per_4_3 3) 1 0)))
 (let ((?x2256 (ite (= Per_4_2 3) 1 0)))
 (let ((?x2214 (ite (= Per_4_1 3) 1 0)))
 (let (($x2171 (= Per_4_0 3)))
 (let ((?x2172 (ite $x2171 1 0)))
 (<= (+ ?x2172 ?x2214 ?x2256 ?x2298 ?x2340) 2))))))))
(assert
 (let ((?x2314 (ite (= Per_5_4 1) 1 0)))
 (let ((?x2272 (ite (= Per_5_3 1) 1 0)))
 (let ((?x2230 (ite (= Per_5_2 1) 1 0)))
 (let ((?x2188 (ite (= Per_5_1 1) 1 0)))
 (let (($x2145 (= Per_5_0 1)))
 (let ((?x2146 (ite $x2145 1 0)))
 (<= (+ ?x2146 ?x2188 ?x2230 ?x2272 ?x2314) 2))))))))
(assert
 (let ((?x2328 (ite (= Per_5_4 2) 1 0)))
 (let ((?x2286 (ite (= Per_5_3 2) 1 0)))
 (let ((?x2244 (ite (= Per_5_2 2) 1 0)))
 (let ((?x2202 (ite (= Per_5_1 2) 1 0)))
 (let (($x2159 (= Per_5_0 2)))
 (let ((?x2160 (ite $x2159 1 0)))
 (<= (+ ?x2160 ?x2202 ?x2244 ?x2286 ?x2328) 2))))))))
(assert
 (let ((?x2342 (ite (= Per_5_4 3) 1 0)))
 (let ((?x2300 (ite (= Per_5_3 3) 1 0)))
 (let ((?x2258 (ite (= Per_5_2 3) 1 0)))
 (let ((?x2216 (ite (= Per_5_1 3) 1 0)))
 (let (($x2173 (= Per_5_0 3)))
 (let ((?x2174 (ite $x2173 1 0)))
 (<= (+ ?x2174 ?x2216 ?x2258 ?x2300 ?x2342) 2))))))))
(assert
 (let (($x171 (= Home_0_4 1)))
 (let ((?x2385 (ite $x171 1 0)))
 (let (($x159 (= Home_0_3 1)))
 (let ((?x2384 (ite $x159 1 0)))
 (let (($x147 (= Home_0_2 1)))
 (let ((?x2383 (ite $x147 1 0)))
 (let (($x135 (= Home_0_1 1)))
 (let ((?x2382 (ite $x135 1 0)))
 (let (($x123 (= Home_0_0 1)))
 (let ((?x2381 (ite $x123 1 0)))
 (let ((?x2386 (+ ?x2381 ?x2382 ?x2383 ?x2384 ?x2385)))
 (let ((?x2418 (- (* 2 ?x2386) 5)))
 (<= (ite (> ?x2418 0) ?x2418 (- ?x2418)) 1))))))))))))))
(assert
 (let (($x232 (= Home_1_4 1)))
 (let ((?x2391 (ite $x232 1 0)))
 (let (($x220 (= Home_1_3 1)))
 (let ((?x2390 (ite $x220 1 0)))
 (let (($x208 (= Home_1_2 1)))
 (let ((?x2389 (ite $x208 1 0)))
 (let (($x196 (= Home_1_1 1)))
 (let ((?x2388 (ite $x196 1 0)))
 (let (($x183 (= Home_1_0 1)))
 (let ((?x2387 (ite $x183 1 0)))
 (let ((?x2392 (+ ?x2387 ?x2388 ?x2389 ?x2390 ?x2391)))
 (let ((?x2462 (- (* 2 ?x2392) 5)))
 (<= (ite (> ?x2462 0) ?x2462 (- ?x2462)) 1))))))))))))))
(assert
 (let (($x292 (= Home_2_4 1)))
 (let ((?x2397 (ite $x292 1 0)))
 (let (($x280 (= Home_2_3 1)))
 (let ((?x2396 (ite $x280 1 0)))
 (let (($x268 (= Home_2_2 1)))
 (let ((?x2395 (ite $x268 1 0)))
 (let (($x256 (= Home_2_1 1)))
 (let ((?x2394 (ite $x256 1 0)))
 (let (($x244 (= Home_2_0 1)))
 (let ((?x2393 (ite $x244 1 0)))
 (let ((?x2398 (+ ?x2393 ?x2394 ?x2395 ?x2396 ?x2397)))
 (let ((?x2499 (- (* 2 ?x2398) 5)))
 (<= (ite (> ?x2499 0) ?x2499 (- ?x2499)) 1))))))))))))))
(assert
 (let (($x353 (= Home_3_4 1)))
 (let ((?x2403 (ite $x353 1 0)))
 (let (($x341 (= Home_3_3 1)))
 (let ((?x2402 (ite $x341 1 0)))
 (let (($x329 (= Home_3_2 1)))
 (let ((?x2401 (ite $x329 1 0)))
 (let (($x317 (= Home_3_1 1)))
 (let ((?x2400 (ite $x317 1 0)))
 (let (($x304 (= Home_3_0 1)))
 (let ((?x2399 (ite $x304 1 0)))
 (let ((?x2404 (+ ?x2399 ?x2400 ?x2401 ?x2402 ?x2403)))
 (let ((?x2536 (- (* 2 ?x2404) 5)))
 (<= (ite (> ?x2536 0) ?x2536 (- ?x2536)) 1))))))))))))))
(assert
 (let (($x414 (= Home_4_4 1)))
 (let ((?x2409 (ite $x414 1 0)))
 (let (($x402 (= Home_4_3 1)))
 (let ((?x2408 (ite $x402 1 0)))
 (let (($x390 (= Home_4_2 1)))
 (let ((?x2407 (ite $x390 1 0)))
 (let (($x378 (= Home_4_1 1)))
 (let ((?x2406 (ite $x378 1 0)))
 (let (($x365 (= Home_4_0 1)))
 (let ((?x2405 (ite $x365 1 0)))
 (let ((?x2410 (+ ?x2405 ?x2406 ?x2407 ?x2408 ?x2409)))
 (let ((?x2573 (- (* 2 ?x2410) 5)))
 (<= (ite (> ?x2573 0) ?x2573 (- ?x2573)) 1))))))))))))))
(assert
 (let (($x474 (= Home_5_4 1)))
 (let ((?x2415 (ite $x474 1 0)))
 (let (($x462 (= Home_5_3 1)))
 (let ((?x2414 (ite $x462 1 0)))
 (let (($x450 (= Home_5_2 1)))
 (let ((?x2413 (ite $x450 1 0)))
 (let (($x438 (= Home_5_1 1)))
 (let ((?x2412 (ite $x438 1 0)))
 (let (($x426 (= Home_5_0 1)))
 (let ((?x2411 (ite $x426 1 0)))
 (let ((?x2416 (+ ?x2411 ?x2412 ?x2413 ?x2414 ?x2415)))
 (let ((?x2610 (- (* 2 ?x2416) 5)))
 (<= (ite (> ?x2610 0) ?x2610 (- ?x2610)) 1))))))))))))))
(assert
 (= Home_0_0 1))
(assert
 (let (($x2135 (= Per_0_0 1)))
 (=> true $x2135)))
(assert
 (let (($x2135 (= Per_0_0 1)))
 (=> false $x2135)))
(assert
 (let (($x2137 (= Per_1_0 1)))
 (=> false $x2137)))
(assert
 (let (($x2137 (= Per_1_0 1)))
 (=> false $x2137)))
(assert
 (let (($x2139 (= Per_2_0 1)))
 (=> false $x2139)))
(assert
 (let (($x2139 (= Per_2_0 1)))
 (=> false $x2139)))
(assert
 (let (($x2141 (= Per_3_0 1)))
 (=> false $x2141)))
(assert
 (let (($x2141 (= Per_3_0 1)))
 (=> false $x2141)))
(assert
 (let (($x2143 (= Per_4_0 1)))
 (=> false $x2143)))
(assert
 (let (($x2143 (= Per_4_0 1)))
 (=> false $x2143)))
(assert
 (let (($x2145 (= Per_5_0 1)))
 (=> false $x2145)))
(assert
 (let (($x2145 (= Per_5_0 1)))
 (=> true $x2145)))
(assert
 (let (($x2149 (= Per_0_0 2)))
 (=> false $x2149)))
(assert
 (let (($x2149 (= Per_0_0 2)))
 (=> false $x2149)))
(assert
 (let (($x2151 (= Per_1_0 2)))
 (=> true $x2151)))
(assert
 (let (($x2151 (= Per_1_0 2)))
 (=> false $x2151)))
(assert
 (let (($x2153 (= Per_2_0 2)))
 (=> false $x2153)))
(assert
 (let (($x2153 (= Per_2_0 2)))
 (=> false $x2153)))
(assert
 (let (($x2155 (= Per_3_0 2)))
 (=> false $x2155)))
(assert
 (let (($x2155 (= Per_3_0 2)))
 (=> false $x2155)))
(assert
 (let (($x2157 (= Per_4_0 2)))
 (=> false $x2157)))
(assert
 (let (($x2157 (= Per_4_0 2)))
 (=> true $x2157)))
(assert
 (let (($x2159 (= Per_5_0 2)))
 (=> false $x2159)))
(assert
 (let (($x2159 (= Per_5_0 2)))
 (=> false $x2159)))
(assert
 (let (($x2163 (= Per_0_0 3)))
 (=> false $x2163)))
(assert
 (let (($x2163 (= Per_0_0 3)))
 (=> false $x2163)))
(assert
 (let (($x2165 (= Per_1_0 3)))
 (=> false $x2165)))
(assert
 (let (($x2165 (= Per_1_0 3)))
 (=> false $x2165)))
(assert
 (let (($x2167 (= Per_2_0 3)))
 (=> true $x2167)))
(assert
 (let (($x2167 (= Per_2_0 3)))
 (=> false $x2167)))
(assert
 (let (($x2169 (= Per_3_0 3)))
 (=> false $x2169)))
(assert
 (let (($x2169 (= Per_3_0 3)))
 (=> true $x2169)))
(assert
 (let (($x2171 (= Per_4_0 3)))
 (=> false $x2171)))
(assert
 (let (($x2171 (= Per_4_0 3)))
 (=> false $x2171)))
(assert
 (let (($x2173 (= Per_5_0 3)))
 (=> false $x2173)))
(assert
 (let (($x2173 (= Per_5_0 3)))
 (=> false $x2173)))
(assert
 (and (distinct MinTeam_0_0 MinTeam_0_1 MinTeam_0_2) true))
(assert
 (and (< MinTeam_0_0 MinTeam_0_1) (< MinTeam_0_1 MinTeam_0_2)))
(assert
 (and (distinct MinTeam_1_0 MinTeam_1_1 MinTeam_1_2) true))
(assert
 (and (< MinTeam_1_0 MinTeam_1_1) (< MinTeam_1_1 MinTeam_1_2)))
(assert
 (and (distinct MinTeam_2_0 MinTeam_2_1 MinTeam_2_2) true))
(assert
 (and (< MinTeam_2_0 MinTeam_2_1) (< MinTeam_2_1 MinTeam_2_2)))
(assert
 (and (distinct MinTeam_3_0 MinTeam_3_1 MinTeam_3_2) true))
(assert
 (and (< MinTeam_3_0 MinTeam_3_1) (< MinTeam_3_1 MinTeam_3_2)))
(assert
 (and (distinct MinTeam_4_0 MinTeam_4_1 MinTeam_4_2) true))
(assert
 (and (< MinTeam_4_0 MinTeam_4_1) (< MinTeam_4_1 MinTeam_4_2)))
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
