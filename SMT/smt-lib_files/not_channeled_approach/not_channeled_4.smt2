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
(declare-fun Per_1_0 () Int)
(declare-fun Opp_1_0 () Int)
(declare-fun Home_1_0 () Int)
(declare-fun Per_1_1 () Int)
(declare-fun Opp_1_1 () Int)
(declare-fun Home_1_1 () Int)
(declare-fun Per_1_2 () Int)
(declare-fun Opp_1_2 () Int)
(declare-fun Home_1_2 () Int)
(declare-fun Per_2_0 () Int)
(declare-fun Opp_2_0 () Int)
(declare-fun Home_2_0 () Int)
(declare-fun Per_2_1 () Int)
(declare-fun Opp_2_1 () Int)
(declare-fun Home_2_1 () Int)
(declare-fun Per_2_2 () Int)
(declare-fun Opp_2_2 () Int)
(declare-fun Home_2_2 () Int)
(declare-fun Per_3_0 () Int)
(declare-fun Opp_3_0 () Int)
(declare-fun Home_3_0 () Int)
(declare-fun Per_3_1 () Int)
(declare-fun Opp_3_1 () Int)
(declare-fun Home_3_1 () Int)
(declare-fun Per_3_2 () Int)
(declare-fun Opp_3_2 () Int)
(declare-fun Home_3_2 () Int)
(declare-fun MinTeam_0_1 () Int)
(declare-fun MinTeam_0_0 () Int)
(declare-fun MinTeam_1_1 () Int)
(declare-fun MinTeam_1_0 () Int)
(declare-fun MinTeam_2_1 () Int)
(declare-fun MinTeam_2_0 () Int)
(assert
 (let (($x44 (<= Per_0_0 2)))
 (let (($x42 (>= Per_0_0 1)))
 (and $x42 $x44))))
(assert
 (let (($x65 (<= Opp_0_0 4)))
 (let (($x63 (>= Opp_0_0 1)))
 (and $x63 $x65))))
(assert
 (let (($x69 (= Home_0_0 1)))
 (or (= Home_0_0 0) $x69)))
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
 (let (($x81 (= Home_0_1 1)))
 (or (= Home_0_1 0) $x81)))
(assert
 (and (distinct Opp_0_1 1) true))
(assert
 (let (($x87 (<= Per_0_2 2)))
 (let (($x86 (>= Per_0_2 1)))
 (and $x86 $x87))))
(assert
 (let (($x90 (<= Opp_0_2 4)))
 (let (($x89 (>= Opp_0_2 1)))
 (and $x89 $x90))))
(assert
 (let (($x93 (= Home_0_2 1)))
 (or (= Home_0_2 0) $x93)))
(assert
 (and (distinct Opp_0_2 1) true))
(assert
 (let (($x99 (<= Per_1_0 2)))
 (let (($x98 (>= Per_1_0 1)))
 (and $x98 $x99))))
(assert
 (let (($x102 (<= Opp_1_0 4)))
 (let (($x101 (>= Opp_1_0 1)))
 (and $x101 $x102))))
(assert
 (let (($x105 (= Home_1_0 1)))
 (or (= Home_1_0 0) $x105)))
(assert
 (and (distinct Opp_1_0 2) true))
(assert
 (let (($x111 (<= Per_1_1 2)))
 (let (($x110 (>= Per_1_1 1)))
 (and $x110 $x111))))
(assert
 (let (($x114 (<= Opp_1_1 4)))
 (let (($x113 (>= Opp_1_1 1)))
 (and $x113 $x114))))
(assert
 (let (($x117 (= Home_1_1 1)))
 (or (= Home_1_1 0) $x117)))
(assert
 (and (distinct Opp_1_1 2) true))
(assert
 (let (($x123 (<= Per_1_2 2)))
 (let (($x122 (>= Per_1_2 1)))
 (and $x122 $x123))))
(assert
 (let (($x126 (<= Opp_1_2 4)))
 (let (($x125 (>= Opp_1_2 1)))
 (and $x125 $x126))))
(assert
 (let (($x129 (= Home_1_2 1)))
 (or (= Home_1_2 0) $x129)))
(assert
 (and (distinct Opp_1_2 2) true))
(assert
 (let (($x135 (<= Per_2_0 2)))
 (let (($x134 (>= Per_2_0 1)))
 (and $x134 $x135))))
(assert
 (let (($x138 (<= Opp_2_0 4)))
 (let (($x137 (>= Opp_2_0 1)))
 (and $x137 $x138))))
(assert
 (let (($x141 (= Home_2_0 1)))
 (or (= Home_2_0 0) $x141)))
(assert
 (and (distinct Opp_2_0 3) true))
(assert
 (let (($x148 (<= Per_2_1 2)))
 (let (($x147 (>= Per_2_1 1)))
 (and $x147 $x148))))
(assert
 (let (($x151 (<= Opp_2_1 4)))
 (let (($x150 (>= Opp_2_1 1)))
 (and $x150 $x151))))
(assert
 (let (($x154 (= Home_2_1 1)))
 (or (= Home_2_1 0) $x154)))
(assert
 (and (distinct Opp_2_1 3) true))
(assert
 (let (($x160 (<= Per_2_2 2)))
 (let (($x159 (>= Per_2_2 1)))
 (and $x159 $x160))))
(assert
 (let (($x163 (<= Opp_2_2 4)))
 (let (($x162 (>= Opp_2_2 1)))
 (and $x162 $x163))))
(assert
 (let (($x166 (= Home_2_2 1)))
 (or (= Home_2_2 0) $x166)))
(assert
 (and (distinct Opp_2_2 3) true))
(assert
 (let (($x172 (<= Per_3_0 2)))
 (let (($x171 (>= Per_3_0 1)))
 (and $x171 $x172))))
(assert
 (let (($x175 (<= Opp_3_0 4)))
 (let (($x174 (>= Opp_3_0 1)))
 (and $x174 $x175))))
(assert
 (let (($x178 (= Home_3_0 1)))
 (or (= Home_3_0 0) $x178)))
(assert
 (and (distinct Opp_3_0 4) true))
(assert
 (let (($x184 (<= Per_3_1 2)))
 (let (($x183 (>= Per_3_1 1)))
 (and $x183 $x184))))
(assert
 (let (($x187 (<= Opp_3_1 4)))
 (let (($x186 (>= Opp_3_1 1)))
 (and $x186 $x187))))
(assert
 (let (($x190 (= Home_3_1 1)))
 (or (= Home_3_1 0) $x190)))
(assert
 (and (distinct Opp_3_1 4) true))
(assert
 (let (($x196 (<= Per_3_2 2)))
 (let (($x195 (>= Per_3_2 1)))
 (and $x195 $x196))))
(assert
 (let (($x199 (<= Opp_3_2 4)))
 (let (($x198 (>= Opp_3_2 1)))
 (and $x198 $x199))))
(assert
 (let (($x202 (= Home_3_2 1)))
 (or (= Home_3_2 0) $x202)))
(assert
 (and (distinct Opp_3_2 4) true))
(assert
 (let (($x208 (= Opp_1_0 1)))
 (let (($x207 (= Opp_0_0 2)))
 (=> $x207 $x208))))
(assert
 (let (($x213 (= (+ Home_0_0 Home_1_0) 1)))
 (let (($x207 (= Opp_0_0 2)))
 (=> $x207 $x213))))
(assert
 (let (($x216 (= Per_0_0 Per_1_0)))
 (let (($x207 (= Opp_0_0 2)))
 (=> $x207 $x216))))
(assert
 (let (($x220 (= Opp_1_1 1)))
 (let (($x219 (= Opp_0_1 2)))
 (=> $x219 $x220))))
(assert
 (let (($x225 (= (+ Home_0_1 Home_1_1) 1)))
 (let (($x219 (= Opp_0_1 2)))
 (=> $x219 $x225))))
(assert
 (let (($x228 (= Per_0_1 Per_1_1)))
 (let (($x219 (= Opp_0_1 2)))
 (=> $x219 $x228))))
(assert
 (let (($x232 (= Opp_1_2 1)))
 (let (($x231 (= Opp_0_2 2)))
 (=> $x231 $x232))))
(assert
 (let (($x237 (= (+ Home_0_2 Home_1_2) 1)))
 (let (($x231 (= Opp_0_2 2)))
 (=> $x231 $x237))))
(assert
 (let (($x240 (= Per_0_2 Per_1_2)))
 (let (($x231 (= Opp_0_2 2)))
 (=> $x231 $x240))))
(assert
 (let (($x244 (= Opp_2_0 1)))
 (let (($x243 (= Opp_0_0 3)))
 (=> $x243 $x244))))
(assert
 (let (($x249 (= (+ Home_0_0 Home_2_0) 1)))
 (let (($x243 (= Opp_0_0 3)))
 (=> $x243 $x249))))
(assert
 (let (($x252 (= Per_0_0 Per_2_0)))
 (let (($x243 (= Opp_0_0 3)))
 (=> $x243 $x252))))
(assert
 (let (($x256 (= Opp_2_1 1)))
 (let (($x255 (= Opp_0_1 3)))
 (=> $x255 $x256))))
(assert
 (let (($x261 (= (+ Home_0_1 Home_2_1) 1)))
 (let (($x255 (= Opp_0_1 3)))
 (=> $x255 $x261))))
(assert
 (let (($x264 (= Per_0_1 Per_2_1)))
 (let (($x255 (= Opp_0_1 3)))
 (=> $x255 $x264))))
(assert
 (let (($x268 (= Opp_2_2 1)))
 (let (($x267 (= Opp_0_2 3)))
 (=> $x267 $x268))))
(assert
 (let (($x273 (= (+ Home_0_2 Home_2_2) 1)))
 (let (($x267 (= Opp_0_2 3)))
 (=> $x267 $x273))))
(assert
 (let (($x276 (= Per_0_2 Per_2_2)))
 (let (($x267 (= Opp_0_2 3)))
 (=> $x267 $x276))))
(assert
 (let (($x280 (= Opp_3_0 1)))
 (let (($x279 (= Opp_0_0 4)))
 (=> $x279 $x280))))
(assert
 (let (($x285 (= (+ Home_0_0 Home_3_0) 1)))
 (let (($x279 (= Opp_0_0 4)))
 (=> $x279 $x285))))
(assert
 (let (($x288 (= Per_0_0 Per_3_0)))
 (let (($x279 (= Opp_0_0 4)))
 (=> $x279 $x288))))
(assert
 (let (($x292 (= Opp_3_1 1)))
 (let (($x291 (= Opp_0_1 4)))
 (=> $x291 $x292))))
(assert
 (let (($x297 (= (+ Home_0_1 Home_3_1) 1)))
 (let (($x291 (= Opp_0_1 4)))
 (=> $x291 $x297))))
(assert
 (let (($x300 (= Per_0_1 Per_3_1)))
 (let (($x291 (= Opp_0_1 4)))
 (=> $x291 $x300))))
(assert
 (let (($x304 (= Opp_3_2 1)))
 (let (($x303 (= Opp_0_2 4)))
 (=> $x303 $x304))))
(assert
 (let (($x309 (= (+ Home_0_2 Home_3_2) 1)))
 (let (($x303 (= Opp_0_2 4)))
 (=> $x303 $x309))))
(assert
 (let (($x312 (= Per_0_2 Per_3_2)))
 (let (($x303 (= Opp_0_2 4)))
 (=> $x303 $x312))))
(assert
 (let (($x207 (= Opp_0_0 2)))
 (let (($x208 (= Opp_1_0 1)))
 (=> $x208 $x207))))
(assert
 (let (($x208 (= Opp_1_0 1)))
 (=> $x208 (= (+ Home_1_0 Home_0_0) 1))))
(assert
 (let (($x322 (= Per_1_0 Per_0_0)))
 (let (($x208 (= Opp_1_0 1)))
 (=> $x208 $x322))))
(assert
 (let (($x219 (= Opp_0_1 2)))
 (let (($x220 (= Opp_1_1 1)))
 (=> $x220 $x219))))
(assert
 (let (($x220 (= Opp_1_1 1)))
 (=> $x220 (= (+ Home_1_1 Home_0_1) 1))))
(assert
 (let (($x332 (= Per_1_1 Per_0_1)))
 (let (($x220 (= Opp_1_1 1)))
 (=> $x220 $x332))))
(assert
 (let (($x231 (= Opp_0_2 2)))
 (let (($x232 (= Opp_1_2 1)))
 (=> $x232 $x231))))
(assert
 (let (($x232 (= Opp_1_2 1)))
 (=> $x232 (= (+ Home_1_2 Home_0_2) 1))))
(assert
 (let (($x342 (= Per_1_2 Per_0_2)))
 (let (($x232 (= Opp_1_2 1)))
 (=> $x232 $x342))))
(assert
 (let (($x346 (= Opp_2_0 2)))
 (let (($x345 (= Opp_1_0 3)))
 (=> $x345 $x346))))
(assert
 (let (($x351 (= (+ Home_1_0 Home_2_0) 1)))
 (let (($x345 (= Opp_1_0 3)))
 (=> $x345 $x351))))
(assert
 (let (($x354 (= Per_1_0 Per_2_0)))
 (let (($x345 (= Opp_1_0 3)))
 (=> $x345 $x354))))
(assert
 (let (($x358 (= Opp_2_1 2)))
 (let (($x357 (= Opp_1_1 3)))
 (=> $x357 $x358))))
(assert
 (let (($x363 (= (+ Home_1_1 Home_2_1) 1)))
 (let (($x357 (= Opp_1_1 3)))
 (=> $x357 $x363))))
(assert
 (let (($x366 (= Per_1_1 Per_2_1)))
 (let (($x357 (= Opp_1_1 3)))
 (=> $x357 $x366))))
(assert
 (let (($x370 (= Opp_2_2 2)))
 (let (($x369 (= Opp_1_2 3)))
 (=> $x369 $x370))))
(assert
 (let (($x375 (= (+ Home_1_2 Home_2_2) 1)))
 (let (($x369 (= Opp_1_2 3)))
 (=> $x369 $x375))))
(assert
 (let (($x378 (= Per_1_2 Per_2_2)))
 (let (($x369 (= Opp_1_2 3)))
 (=> $x369 $x378))))
(assert
 (let (($x382 (= Opp_3_0 2)))
 (let (($x381 (= Opp_1_0 4)))
 (=> $x381 $x382))))
(assert
 (let (($x387 (= (+ Home_1_0 Home_3_0) 1)))
 (let (($x381 (= Opp_1_0 4)))
 (=> $x381 $x387))))
(assert
 (let (($x390 (= Per_1_0 Per_3_0)))
 (let (($x381 (= Opp_1_0 4)))
 (=> $x381 $x390))))
(assert
 (let (($x394 (= Opp_3_1 2)))
 (let (($x393 (= Opp_1_1 4)))
 (=> $x393 $x394))))
(assert
 (let (($x399 (= (+ Home_1_1 Home_3_1) 1)))
 (let (($x393 (= Opp_1_1 4)))
 (=> $x393 $x399))))
(assert
 (let (($x402 (= Per_1_1 Per_3_1)))
 (let (($x393 (= Opp_1_1 4)))
 (=> $x393 $x402))))
(assert
 (let (($x406 (= Opp_3_2 2)))
 (let (($x405 (= Opp_1_2 4)))
 (=> $x405 $x406))))
(assert
 (let (($x411 (= (+ Home_1_2 Home_3_2) 1)))
 (let (($x405 (= Opp_1_2 4)))
 (=> $x405 $x411))))
(assert
 (let (($x414 (= Per_1_2 Per_3_2)))
 (let (($x405 (= Opp_1_2 4)))
 (=> $x405 $x414))))
(assert
 (let (($x243 (= Opp_0_0 3)))
 (let (($x244 (= Opp_2_0 1)))
 (=> $x244 $x243))))
(assert
 (let (($x244 (= Opp_2_0 1)))
 (=> $x244 (= (+ Home_2_0 Home_0_0) 1))))
(assert
 (let (($x424 (= Per_2_0 Per_0_0)))
 (let (($x244 (= Opp_2_0 1)))
 (=> $x244 $x424))))
(assert
 (let (($x255 (= Opp_0_1 3)))
 (let (($x256 (= Opp_2_1 1)))
 (=> $x256 $x255))))
(assert
 (let (($x256 (= Opp_2_1 1)))
 (=> $x256 (= (+ Home_2_1 Home_0_1) 1))))
(assert
 (let (($x434 (= Per_2_1 Per_0_1)))
 (let (($x256 (= Opp_2_1 1)))
 (=> $x256 $x434))))
(assert
 (let (($x267 (= Opp_0_2 3)))
 (let (($x268 (= Opp_2_2 1)))
 (=> $x268 $x267))))
(assert
 (let (($x268 (= Opp_2_2 1)))
 (=> $x268 (= (+ Home_2_2 Home_0_2) 1))))
(assert
 (let (($x444 (= Per_2_2 Per_0_2)))
 (let (($x268 (= Opp_2_2 1)))
 (=> $x268 $x444))))
(assert
 (let (($x345 (= Opp_1_0 3)))
 (let (($x346 (= Opp_2_0 2)))
 (=> $x346 $x345))))
(assert
 (let (($x346 (= Opp_2_0 2)))
 (=> $x346 (= (+ Home_2_0 Home_1_0) 1))))
(assert
 (let (($x454 (= Per_2_0 Per_1_0)))
 (let (($x346 (= Opp_2_0 2)))
 (=> $x346 $x454))))
(assert
 (let (($x357 (= Opp_1_1 3)))
 (let (($x358 (= Opp_2_1 2)))
 (=> $x358 $x357))))
(assert
 (let (($x358 (= Opp_2_1 2)))
 (=> $x358 (= (+ Home_2_1 Home_1_1) 1))))
(assert
 (let (($x464 (= Per_2_1 Per_1_1)))
 (let (($x358 (= Opp_2_1 2)))
 (=> $x358 $x464))))
(assert
 (let (($x369 (= Opp_1_2 3)))
 (let (($x370 (= Opp_2_2 2)))
 (=> $x370 $x369))))
(assert
 (let (($x370 (= Opp_2_2 2)))
 (=> $x370 (= (+ Home_2_2 Home_1_2) 1))))
(assert
 (let (($x474 (= Per_2_2 Per_1_2)))
 (let (($x370 (= Opp_2_2 2)))
 (=> $x370 $x474))))
(assert
 (let (($x478 (= Opp_3_0 3)))
 (let (($x477 (= Opp_2_0 4)))
 (=> $x477 $x478))))
(assert
 (let (($x483 (= (+ Home_2_0 Home_3_0) 1)))
 (let (($x477 (= Opp_2_0 4)))
 (=> $x477 $x483))))
(assert
 (let (($x486 (= Per_2_0 Per_3_0)))
 (let (($x477 (= Opp_2_0 4)))
 (=> $x477 $x486))))
(assert
 (let (($x490 (= Opp_3_1 3)))
 (let (($x489 (= Opp_2_1 4)))
 (=> $x489 $x490))))
(assert
 (let (($x495 (= (+ Home_2_1 Home_3_1) 1)))
 (let (($x489 (= Opp_2_1 4)))
 (=> $x489 $x495))))
(assert
 (let (($x498 (= Per_2_1 Per_3_1)))
 (let (($x489 (= Opp_2_1 4)))
 (=> $x489 $x498))))
(assert
 (let (($x502 (= Opp_3_2 3)))
 (let (($x501 (= Opp_2_2 4)))
 (=> $x501 $x502))))
(assert
 (let (($x507 (= (+ Home_2_2 Home_3_2) 1)))
 (let (($x501 (= Opp_2_2 4)))
 (=> $x501 $x507))))
(assert
 (let (($x510 (= Per_2_2 Per_3_2)))
 (let (($x501 (= Opp_2_2 4)))
 (=> $x501 $x510))))
(assert
 (let (($x279 (= Opp_0_0 4)))
 (let (($x280 (= Opp_3_0 1)))
 (=> $x280 $x279))))
(assert
 (let (($x280 (= Opp_3_0 1)))
 (=> $x280 (= (+ Home_3_0 Home_0_0) 1))))
(assert
 (let (($x520 (= Per_3_0 Per_0_0)))
 (let (($x280 (= Opp_3_0 1)))
 (=> $x280 $x520))))
(assert
 (let (($x291 (= Opp_0_1 4)))
 (let (($x292 (= Opp_3_1 1)))
 (=> $x292 $x291))))
(assert
 (let (($x292 (= Opp_3_1 1)))
 (=> $x292 (= (+ Home_3_1 Home_0_1) 1))))
(assert
 (let (($x530 (= Per_3_1 Per_0_1)))
 (let (($x292 (= Opp_3_1 1)))
 (=> $x292 $x530))))
(assert
 (let (($x303 (= Opp_0_2 4)))
 (let (($x304 (= Opp_3_2 1)))
 (=> $x304 $x303))))
(assert
 (let (($x304 (= Opp_3_2 1)))
 (=> $x304 (= (+ Home_3_2 Home_0_2) 1))))
(assert
 (let (($x540 (= Per_3_2 Per_0_2)))
 (let (($x304 (= Opp_3_2 1)))
 (=> $x304 $x540))))
(assert
 (let (($x381 (= Opp_1_0 4)))
 (let (($x382 (= Opp_3_0 2)))
 (=> $x382 $x381))))
(assert
 (let (($x382 (= Opp_3_0 2)))
 (=> $x382 (= (+ Home_3_0 Home_1_0) 1))))
(assert
 (let (($x550 (= Per_3_0 Per_1_0)))
 (let (($x382 (= Opp_3_0 2)))
 (=> $x382 $x550))))
(assert
 (let (($x393 (= Opp_1_1 4)))
 (let (($x394 (= Opp_3_1 2)))
 (=> $x394 $x393))))
(assert
 (let (($x394 (= Opp_3_1 2)))
 (=> $x394 (= (+ Home_3_1 Home_1_1) 1))))
(assert
 (let (($x560 (= Per_3_1 Per_1_1)))
 (let (($x394 (= Opp_3_1 2)))
 (=> $x394 $x560))))
(assert
 (let (($x405 (= Opp_1_2 4)))
 (let (($x406 (= Opp_3_2 2)))
 (=> $x406 $x405))))
(assert
 (let (($x406 (= Opp_3_2 2)))
 (=> $x406 (= (+ Home_3_2 Home_1_2) 1))))
(assert
 (let (($x570 (= Per_3_2 Per_1_2)))
 (let (($x406 (= Opp_3_2 2)))
 (=> $x406 $x570))))
(assert
 (let (($x477 (= Opp_2_0 4)))
 (let (($x478 (= Opp_3_0 3)))
 (=> $x478 $x477))))
(assert
 (let (($x478 (= Opp_3_0 3)))
 (=> $x478 (= (+ Home_3_0 Home_2_0) 1))))
(assert
 (let (($x580 (= Per_3_0 Per_2_0)))
 (let (($x478 (= Opp_3_0 3)))
 (=> $x478 $x580))))
(assert
 (let (($x489 (= Opp_2_1 4)))
 (let (($x490 (= Opp_3_1 3)))
 (=> $x490 $x489))))
(assert
 (let (($x490 (= Opp_3_1 3)))
 (=> $x490 (= (+ Home_3_1 Home_2_1) 1))))
(assert
 (let (($x590 (= Per_3_1 Per_2_1)))
 (let (($x490 (= Opp_3_1 3)))
 (=> $x490 $x590))))
(assert
 (let (($x501 (= Opp_2_2 4)))
 (let (($x502 (= Opp_3_2 3)))
 (=> $x502 $x501))))
(assert
 (let (($x502 (= Opp_3_2 3)))
 (=> $x502 (= (+ Home_3_2 Home_2_2) 1))))
(assert
 (let (($x600 (= Per_3_2 Per_2_2)))
 (let (($x502 (= Opp_3_2 3)))
 (=> $x502 $x600))))
(assert
 (and (distinct Opp_0_0 Opp_0_1 Opp_0_2) true))
(assert
 (and (distinct Opp_1_0 Opp_1_1 Opp_1_2) true))
(assert
 (and (distinct Opp_2_0 Opp_2_1 Opp_2_2) true))
(assert
 (and (distinct Opp_3_0 Opp_3_1 Opp_3_2) true))
(assert
 (let (($x613 (= Per_3_0 1)))
 (let ((?x614 (ite $x613 1 0)))
 (let (($x611 (= Per_2_0 1)))
 (let ((?x612 (ite $x611 1 0)))
 (let (($x609 (= Per_1_0 1)))
 (let ((?x610 (ite $x609 1 0)))
 (let (($x607 (= Per_0_0 1)))
 (let ((?x608 (ite $x607 1 0)))
 (= (+ ?x608 ?x610 ?x612 ?x614) 2))))))))))
(assert
 (let (($x623 (= Per_3_0 2)))
 (let ((?x624 (ite $x623 1 0)))
 (let (($x621 (= Per_2_0 2)))
 (let ((?x622 (ite $x621 1 0)))
 (let (($x619 (= Per_1_0 2)))
 (let ((?x620 (ite $x619 1 0)))
 (let (($x617 (= Per_0_0 2)))
 (let ((?x618 (ite $x617 1 0)))
 (= (+ ?x618 ?x620 ?x622 ?x624) 2))))))))))
(assert
 (let ((?x634 (ite (= Per_3_1 1) 1 0)))
 (let ((?x632 (ite (= Per_2_1 1) 1 0)))
 (let ((?x630 (ite (= Per_1_1 1) 1 0)))
 (let ((?x628 (ite (= Per_0_1 1) 1 0)))
 (= (+ ?x628 ?x630 ?x632 ?x634) 2))))))
(assert
 (let ((?x644 (ite (= Per_3_1 2) 1 0)))
 (let ((?x642 (ite (= Per_2_1 2) 1 0)))
 (let ((?x640 (ite (= Per_1_1 2) 1 0)))
 (let ((?x638 (ite (= Per_0_1 2) 1 0)))
 (= (+ ?x638 ?x640 ?x642 ?x644) 2))))))
(assert
 (let ((?x654 (ite (= Per_3_2 1) 1 0)))
 (let ((?x652 (ite (= Per_2_2 1) 1 0)))
 (let ((?x650 (ite (= Per_1_2 1) 1 0)))
 (let ((?x648 (ite (= Per_0_2 1) 1 0)))
 (= (+ ?x648 ?x650 ?x652 ?x654) 2))))))
(assert
 (let ((?x664 (ite (= Per_3_2 2) 1 0)))
 (let ((?x662 (ite (= Per_2_2 2) 1 0)))
 (let ((?x660 (ite (= Per_1_2 2) 1 0)))
 (let ((?x658 (ite (= Per_0_2 2) 1 0)))
 (= (+ ?x658 ?x660 ?x662 ?x664) 2))))))
(assert
 (let ((?x648 (ite (= Per_0_2 1) 1 0)))
 (let ((?x628 (ite (= Per_0_1 1) 1 0)))
 (let (($x607 (= Per_0_0 1)))
 (let ((?x608 (ite $x607 1 0)))
 (<= (+ ?x608 ?x628 ?x648) 2))))))
(assert
 (let ((?x658 (ite (= Per_0_2 2) 1 0)))
 (let ((?x638 (ite (= Per_0_1 2) 1 0)))
 (let (($x617 (= Per_0_0 2)))
 (let ((?x618 (ite $x617 1 0)))
 (<= (+ ?x618 ?x638 ?x658) 2))))))
(assert
 (let ((?x650 (ite (= Per_1_2 1) 1 0)))
 (let ((?x630 (ite (= Per_1_1 1) 1 0)))
 (let (($x609 (= Per_1_0 1)))
 (let ((?x610 (ite $x609 1 0)))
 (<= (+ ?x610 ?x630 ?x650) 2))))))
(assert
 (let ((?x660 (ite (= Per_1_2 2) 1 0)))
 (let ((?x640 (ite (= Per_1_1 2) 1 0)))
 (let (($x619 (= Per_1_0 2)))
 (let ((?x620 (ite $x619 1 0)))
 (<= (+ ?x620 ?x640 ?x660) 2))))))
(assert
 (let ((?x652 (ite (= Per_2_2 1) 1 0)))
 (let ((?x632 (ite (= Per_2_1 1) 1 0)))
 (let (($x611 (= Per_2_0 1)))
 (let ((?x612 (ite $x611 1 0)))
 (<= (+ ?x612 ?x632 ?x652) 2))))))
(assert
 (let ((?x662 (ite (= Per_2_2 2) 1 0)))
 (let ((?x642 (ite (= Per_2_1 2) 1 0)))
 (let (($x621 (= Per_2_0 2)))
 (let ((?x622 (ite $x621 1 0)))
 (<= (+ ?x622 ?x642 ?x662) 2))))))
(assert
 (let ((?x654 (ite (= Per_3_2 1) 1 0)))
 (let ((?x634 (ite (= Per_3_1 1) 1 0)))
 (let (($x613 (= Per_3_0 1)))
 (let ((?x614 (ite $x613 1 0)))
 (<= (+ ?x614 ?x634 ?x654) 2))))))
(assert
 (let ((?x664 (ite (= Per_3_2 2) 1 0)))
 (let ((?x644 (ite (= Per_3_1 2) 1 0)))
 (let (($x623 (= Per_3_0 2)))
 (let ((?x624 (ite $x623 1 0)))
 (<= (+ ?x624 ?x644 ?x664) 2))))))
(assert
 (let (($x93 (= Home_0_2 1)))
 (let ((?x685 (ite $x93 1 0)))
 (let (($x81 (= Home_0_1 1)))
 (let ((?x684 (ite $x81 1 0)))
 (let (($x69 (= Home_0_0 1)))
 (let ((?x683 (ite $x69 1 0)))
 (let ((?x686 (+ ?x683 ?x684 ?x685)))
 (let ((?x700 (- (* 2 ?x686) 3)))
 (<= (ite (> ?x700 0) ?x700 (- ?x700)) 1))))))))))
(assert
 (let (($x129 (= Home_1_2 1)))
 (let ((?x689 (ite $x129 1 0)))
 (let (($x117 (= Home_1_1 1)))
 (let ((?x688 (ite $x117 1 0)))
 (let (($x105 (= Home_1_0 1)))
 (let ((?x687 (ite $x105 1 0)))
 (let ((?x690 (+ ?x687 ?x688 ?x689)))
 (let ((?x729 (- (* 2 ?x690) 3)))
 (<= (ite (> ?x729 0) ?x729 (- ?x729)) 1))))))))))
(assert
 (let (($x166 (= Home_2_2 1)))
 (let ((?x693 (ite $x166 1 0)))
 (let (($x154 (= Home_2_1 1)))
 (let ((?x692 (ite $x154 1 0)))
 (let (($x141 (= Home_2_0 1)))
 (let ((?x691 (ite $x141 1 0)))
 (let ((?x694 (+ ?x691 ?x692 ?x693)))
 (let ((?x760 (- (* 2 ?x694) 3)))
 (<= (ite (> ?x760 0) ?x760 (- ?x760)) 1))))))))))
(assert
 (let (($x202 (= Home_3_2 1)))
 (let ((?x697 (ite $x202 1 0)))
 (let (($x190 (= Home_3_1 1)))
 (let ((?x696 (ite $x190 1 0)))
 (let (($x178 (= Home_3_0 1)))
 (let ((?x695 (ite $x178 1 0)))
 (let ((?x698 (+ ?x695 ?x696 ?x697)))
 (let ((?x791 (- (* 2 ?x698) 3)))
 (<= (ite (> ?x791 0) ?x791 (- ?x791)) 1))))))))))
(assert
 (= Home_0_0 1))
(assert
 (let (($x607 (= Per_0_0 1)))
 (=> true $x607)))
(assert
 (let (($x607 (= Per_0_0 1)))
 (=> false $x607)))
(assert
 (let (($x609 (= Per_1_0 1)))
 (=> false $x609)))
(assert
 (let (($x609 (= Per_1_0 1)))
 (=> false $x609)))
(assert
 (let (($x611 (= Per_2_0 1)))
 (=> false $x611)))
(assert
 (let (($x611 (= Per_2_0 1)))
 (=> false $x611)))
(assert
 (let (($x613 (= Per_3_0 1)))
 (=> false $x613)))
(assert
 (let (($x613 (= Per_3_0 1)))
 (=> true $x613)))
(assert
 (let (($x617 (= Per_0_0 2)))
 (=> false $x617)))
(assert
 (let (($x617 (= Per_0_0 2)))
 (=> false $x617)))
(assert
 (let (($x619 (= Per_1_0 2)))
 (=> true $x619)))
(assert
 (let (($x619 (= Per_1_0 2)))
 (=> false $x619)))
(assert
 (let (($x621 (= Per_2_0 2)))
 (=> false $x621)))
(assert
 (let (($x621 (= Per_2_0 2)))
 (=> true $x621)))
(assert
 (let (($x623 (= Per_3_0 2)))
 (=> false $x623)))
(assert
 (let (($x623 (= Per_3_0 2)))
 (=> false $x623)))
(assert
 (and (distinct MinTeam_0_0 MinTeam_0_1) true))
(assert
 (and (< MinTeam_0_0 MinTeam_0_1)))
(assert
 (and (distinct MinTeam_1_0 MinTeam_1_1) true))
(assert
 (and (< MinTeam_1_0 MinTeam_1_1)))
(assert
 (and (distinct MinTeam_2_0 MinTeam_2_1) true))
(assert
 (and (< MinTeam_2_0 MinTeam_2_1)))
(assert
 (<= Per_0_0 Per_0_1))
(assert
 (<= Per_0_1 Per_0_2))
(check-sat)
(get-model)
