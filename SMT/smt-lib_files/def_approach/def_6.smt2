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
(declare-fun Home_2_0 () Bool)
(declare-fun Home_2_1 () Bool)
(declare-fun Home_2_2 () Bool)
(declare-fun Home_2_3 () Bool)
(declare-fun Home_2_4 () Bool)
(declare-fun Home_3_0 () Bool)
(declare-fun Home_3_1 () Bool)
(declare-fun Home_3_2 () Bool)
(declare-fun Home_3_3 () Bool)
(declare-fun Home_3_4 () Bool)
(declare-fun Home_4_0 () Bool)
(declare-fun Home_4_1 () Bool)
(declare-fun Home_4_2 () Bool)
(declare-fun Home_4_3 () Bool)
(declare-fun Home_4_4 () Bool)
(declare-fun Home_5_0 () Bool)
(declare-fun Home_5_1 () Bool)
(declare-fun Home_5_2 () Bool)
(declare-fun Home_5_3 () Bool)
(declare-fun Home_5_4 () Bool)
(declare-fun High_0 () Bool)
(declare-fun High_1 () Bool)
(declare-fun High_2 () Bool)
(declare-fun High_3 () Bool)
(declare-fun High_4 () Bool)
(declare-fun High_5 () Bool)
(assert
 (let (($x104 (<= Per_0_0 3)))
 (let (($x102 (>= Per_0_0 1)))
 (and $x102 $x104))))
(assert
 (let (($x125 (<= Opp_0_0 6)))
 (let (($x123 (>= Opp_0_0 1)))
 (and $x123 $x125))))
(assert
 (and (distinct Opp_0_0 1) true))
(assert
 (let (($x131 (<= Per_0_1 3)))
 (let (($x130 (>= Per_0_1 1)))
 (and $x130 $x131))))
(assert
 (let (($x134 (<= Opp_0_1 6)))
 (let (($x133 (>= Opp_0_1 1)))
 (and $x133 $x134))))
(assert
 (and (distinct Opp_0_1 1) true))
(assert
 (let (($x140 (<= Per_0_2 3)))
 (let (($x139 (>= Per_0_2 1)))
 (and $x139 $x140))))
(assert
 (let (($x143 (<= Opp_0_2 6)))
 (let (($x142 (>= Opp_0_2 1)))
 (and $x142 $x143))))
(assert
 (and (distinct Opp_0_2 1) true))
(assert
 (let (($x149 (<= Per_0_3 3)))
 (let (($x148 (>= Per_0_3 1)))
 (and $x148 $x149))))
(assert
 (let (($x152 (<= Opp_0_3 6)))
 (let (($x151 (>= Opp_0_3 1)))
 (and $x151 $x152))))
(assert
 (and (distinct Opp_0_3 1) true))
(assert
 (let (($x158 (<= Per_0_4 3)))
 (let (($x157 (>= Per_0_4 1)))
 (and $x157 $x158))))
(assert
 (let (($x161 (<= Opp_0_4 6)))
 (let (($x160 (>= Opp_0_4 1)))
 (and $x160 $x161))))
(assert
 (and (distinct Opp_0_4 1) true))
(assert
 (let (($x167 (<= Per_1_0 3)))
 (let (($x166 (>= Per_1_0 1)))
 (and $x166 $x167))))
(assert
 (let (($x170 (<= Opp_1_0 6)))
 (let (($x169 (>= Opp_1_0 1)))
 (and $x169 $x170))))
(assert
 (and (distinct Opp_1_0 2) true))
(assert
 (let (($x177 (<= Per_1_1 3)))
 (let (($x176 (>= Per_1_1 1)))
 (and $x176 $x177))))
(assert
 (let (($x180 (<= Opp_1_1 6)))
 (let (($x179 (>= Opp_1_1 1)))
 (and $x179 $x180))))
(assert
 (and (distinct Opp_1_1 2) true))
(assert
 (let (($x186 (<= Per_1_2 3)))
 (let (($x185 (>= Per_1_2 1)))
 (and $x185 $x186))))
(assert
 (let (($x189 (<= Opp_1_2 6)))
 (let (($x188 (>= Opp_1_2 1)))
 (and $x188 $x189))))
(assert
 (and (distinct Opp_1_2 2) true))
(assert
 (let (($x195 (<= Per_1_3 3)))
 (let (($x194 (>= Per_1_3 1)))
 (and $x194 $x195))))
(assert
 (let (($x198 (<= Opp_1_3 6)))
 (let (($x197 (>= Opp_1_3 1)))
 (and $x197 $x198))))
(assert
 (and (distinct Opp_1_3 2) true))
(assert
 (let (($x204 (<= Per_1_4 3)))
 (let (($x203 (>= Per_1_4 1)))
 (and $x203 $x204))))
(assert
 (let (($x207 (<= Opp_1_4 6)))
 (let (($x206 (>= Opp_1_4 1)))
 (and $x206 $x207))))
(assert
 (and (distinct Opp_1_4 2) true))
(assert
 (let (($x213 (<= Per_2_0 3)))
 (let (($x212 (>= Per_2_0 1)))
 (and $x212 $x213))))
(assert
 (let (($x216 (<= Opp_2_0 6)))
 (let (($x215 (>= Opp_2_0 1)))
 (and $x215 $x216))))
(assert
 (and (distinct Opp_2_0 3) true))
(assert
 (let (($x222 (<= Per_2_1 3)))
 (let (($x221 (>= Per_2_1 1)))
 (and $x221 $x222))))
(assert
 (let (($x225 (<= Opp_2_1 6)))
 (let (($x224 (>= Opp_2_1 1)))
 (and $x224 $x225))))
(assert
 (and (distinct Opp_2_1 3) true))
(assert
 (let (($x231 (<= Per_2_2 3)))
 (let (($x230 (>= Per_2_2 1)))
 (and $x230 $x231))))
(assert
 (let (($x234 (<= Opp_2_2 6)))
 (let (($x233 (>= Opp_2_2 1)))
 (and $x233 $x234))))
(assert
 (and (distinct Opp_2_2 3) true))
(assert
 (let (($x240 (<= Per_2_3 3)))
 (let (($x239 (>= Per_2_3 1)))
 (and $x239 $x240))))
(assert
 (let (($x243 (<= Opp_2_3 6)))
 (let (($x242 (>= Opp_2_3 1)))
 (and $x242 $x243))))
(assert
 (and (distinct Opp_2_3 3) true))
(assert
 (let (($x249 (<= Per_2_4 3)))
 (let (($x248 (>= Per_2_4 1)))
 (and $x248 $x249))))
(assert
 (let (($x252 (<= Opp_2_4 6)))
 (let (($x251 (>= Opp_2_4 1)))
 (and $x251 $x252))))
(assert
 (and (distinct Opp_2_4 3) true))
(assert
 (let (($x258 (<= Per_3_0 3)))
 (let (($x257 (>= Per_3_0 1)))
 (and $x257 $x258))))
(assert
 (let (($x261 (<= Opp_3_0 6)))
 (let (($x260 (>= Opp_3_0 1)))
 (and $x260 $x261))))
(assert
 (and (distinct Opp_3_0 4) true))
(assert
 (let (($x268 (<= Per_3_1 3)))
 (let (($x267 (>= Per_3_1 1)))
 (and $x267 $x268))))
(assert
 (let (($x271 (<= Opp_3_1 6)))
 (let (($x270 (>= Opp_3_1 1)))
 (and $x270 $x271))))
(assert
 (and (distinct Opp_3_1 4) true))
(assert
 (let (($x277 (<= Per_3_2 3)))
 (let (($x276 (>= Per_3_2 1)))
 (and $x276 $x277))))
(assert
 (let (($x280 (<= Opp_3_2 6)))
 (let (($x279 (>= Opp_3_2 1)))
 (and $x279 $x280))))
(assert
 (and (distinct Opp_3_2 4) true))
(assert
 (let (($x286 (<= Per_3_3 3)))
 (let (($x285 (>= Per_3_3 1)))
 (and $x285 $x286))))
(assert
 (let (($x289 (<= Opp_3_3 6)))
 (let (($x288 (>= Opp_3_3 1)))
 (and $x288 $x289))))
(assert
 (and (distinct Opp_3_3 4) true))
(assert
 (let (($x295 (<= Per_3_4 3)))
 (let (($x294 (>= Per_3_4 1)))
 (and $x294 $x295))))
(assert
 (let (($x298 (<= Opp_3_4 6)))
 (let (($x297 (>= Opp_3_4 1)))
 (and $x297 $x298))))
(assert
 (and (distinct Opp_3_4 4) true))
(assert
 (let (($x304 (<= Per_4_0 3)))
 (let (($x303 (>= Per_4_0 1)))
 (and $x303 $x304))))
(assert
 (let (($x307 (<= Opp_4_0 6)))
 (let (($x306 (>= Opp_4_0 1)))
 (and $x306 $x307))))
(assert
 (and (distinct Opp_4_0 5) true))
(assert
 (let (($x314 (<= Per_4_1 3)))
 (let (($x313 (>= Per_4_1 1)))
 (and $x313 $x314))))
(assert
 (let (($x317 (<= Opp_4_1 6)))
 (let (($x316 (>= Opp_4_1 1)))
 (and $x316 $x317))))
(assert
 (and (distinct Opp_4_1 5) true))
(assert
 (let (($x323 (<= Per_4_2 3)))
 (let (($x322 (>= Per_4_2 1)))
 (and $x322 $x323))))
(assert
 (let (($x326 (<= Opp_4_2 6)))
 (let (($x325 (>= Opp_4_2 1)))
 (and $x325 $x326))))
(assert
 (and (distinct Opp_4_2 5) true))
(assert
 (let (($x332 (<= Per_4_3 3)))
 (let (($x331 (>= Per_4_3 1)))
 (and $x331 $x332))))
(assert
 (let (($x335 (<= Opp_4_3 6)))
 (let (($x334 (>= Opp_4_3 1)))
 (and $x334 $x335))))
(assert
 (and (distinct Opp_4_3 5) true))
(assert
 (let (($x341 (<= Per_4_4 3)))
 (let (($x340 (>= Per_4_4 1)))
 (and $x340 $x341))))
(assert
 (let (($x344 (<= Opp_4_4 6)))
 (let (($x343 (>= Opp_4_4 1)))
 (and $x343 $x344))))
(assert
 (and (distinct Opp_4_4 5) true))
(assert
 (let (($x350 (<= Per_5_0 3)))
 (let (($x349 (>= Per_5_0 1)))
 (and $x349 $x350))))
(assert
 (let (($x353 (<= Opp_5_0 6)))
 (let (($x352 (>= Opp_5_0 1)))
 (and $x352 $x353))))
(assert
 (and (distinct Opp_5_0 6) true))
(assert
 (let (($x359 (<= Per_5_1 3)))
 (let (($x358 (>= Per_5_1 1)))
 (and $x358 $x359))))
(assert
 (let (($x362 (<= Opp_5_1 6)))
 (let (($x361 (>= Opp_5_1 1)))
 (and $x361 $x362))))
(assert
 (and (distinct Opp_5_1 6) true))
(assert
 (let (($x368 (<= Per_5_2 3)))
 (let (($x367 (>= Per_5_2 1)))
 (and $x367 $x368))))
(assert
 (let (($x371 (<= Opp_5_2 6)))
 (let (($x370 (>= Opp_5_2 1)))
 (and $x370 $x371))))
(assert
 (and (distinct Opp_5_2 6) true))
(assert
 (let (($x377 (<= Per_5_3 3)))
 (let (($x376 (>= Per_5_3 1)))
 (and $x376 $x377))))
(assert
 (let (($x380 (<= Opp_5_3 6)))
 (let (($x379 (>= Opp_5_3 1)))
 (and $x379 $x380))))
(assert
 (and (distinct Opp_5_3 6) true))
(assert
 (let (($x386 (<= Per_5_4 3)))
 (let (($x385 (>= Per_5_4 1)))
 (and $x385 $x386))))
(assert
 (let (($x389 (<= Opp_5_4 6)))
 (let (($x388 (>= Opp_5_4 1)))
 (and $x388 $x389))))
(assert
 (and (distinct Opp_5_4 6) true))
(assert
 (let (($x396 (= Opp_1_0 1)))
 (let (($x397 (and (= Per_0_0 Per_1_0) $x396)))
 (let (($x394 (= Opp_0_0 2)))
 (=> $x394 $x397)))))
(assert
 (let (($x394 (= Opp_0_0 2)))
 (let (($x396 (= Opp_1_0 1)))
 (let (($x397 (and (= Per_0_0 Per_1_0) $x396)))
 (=> $x397 $x394)))))
(assert
 (let (($x394 (= Opp_0_0 2)))
 (=> $x394 (xor Home_0_0 Home_1_0))))
(assert
 (let (($x411 (= Opp_1_1 1)))
 (let (($x412 (and (= Per_0_1 Per_1_1) $x411)))
 (let (($x409 (= Opp_0_1 2)))
 (=> $x409 $x412)))))
(assert
 (let (($x409 (= Opp_0_1 2)))
 (let (($x411 (= Opp_1_1 1)))
 (let (($x412 (and (= Per_0_1 Per_1_1) $x411)))
 (=> $x412 $x409)))))
(assert
 (let (($x409 (= Opp_0_1 2)))
 (=> $x409 (xor Home_0_1 Home_1_1))))
(assert
 (let (($x426 (= Opp_1_2 1)))
 (let (($x427 (and (= Per_0_2 Per_1_2) $x426)))
 (let (($x424 (= Opp_0_2 2)))
 (=> $x424 $x427)))))
(assert
 (let (($x424 (= Opp_0_2 2)))
 (let (($x426 (= Opp_1_2 1)))
 (let (($x427 (and (= Per_0_2 Per_1_2) $x426)))
 (=> $x427 $x424)))))
(assert
 (let (($x424 (= Opp_0_2 2)))
 (=> $x424 (xor Home_0_2 Home_1_2))))
(assert
 (let (($x441 (= Opp_1_3 1)))
 (let (($x442 (and (= Per_0_3 Per_1_3) $x441)))
 (let (($x439 (= Opp_0_3 2)))
 (=> $x439 $x442)))))
(assert
 (let (($x439 (= Opp_0_3 2)))
 (let (($x441 (= Opp_1_3 1)))
 (let (($x442 (and (= Per_0_3 Per_1_3) $x441)))
 (=> $x442 $x439)))))
(assert
 (let (($x439 (= Opp_0_3 2)))
 (=> $x439 (xor Home_0_3 Home_1_3))))
(assert
 (let (($x456 (= Opp_1_4 1)))
 (let (($x457 (and (= Per_0_4 Per_1_4) $x456)))
 (let (($x454 (= Opp_0_4 2)))
 (=> $x454 $x457)))))
(assert
 (let (($x454 (= Opp_0_4 2)))
 (let (($x456 (= Opp_1_4 1)))
 (let (($x457 (and (= Per_0_4 Per_1_4) $x456)))
 (=> $x457 $x454)))))
(assert
 (let (($x454 (= Opp_0_4 2)))
 (=> $x454 (xor Home_0_4 Home_1_4))))
(assert
 (let (($x471 (= Opp_2_0 1)))
 (let (($x472 (and (= Per_0_0 Per_2_0) $x471)))
 (let (($x469 (= Opp_0_0 3)))
 (=> $x469 $x472)))))
(assert
 (let (($x469 (= Opp_0_0 3)))
 (let (($x471 (= Opp_2_0 1)))
 (let (($x472 (and (= Per_0_0 Per_2_0) $x471)))
 (=> $x472 $x469)))))
(assert
 (let (($x469 (= Opp_0_0 3)))
 (=> $x469 (xor Home_0_0 Home_2_0))))
(assert
 (let (($x486 (= Opp_2_1 1)))
 (let (($x487 (and (= Per_0_1 Per_2_1) $x486)))
 (let (($x484 (= Opp_0_1 3)))
 (=> $x484 $x487)))))
(assert
 (let (($x484 (= Opp_0_1 3)))
 (let (($x486 (= Opp_2_1 1)))
 (let (($x487 (and (= Per_0_1 Per_2_1) $x486)))
 (=> $x487 $x484)))))
(assert
 (let (($x484 (= Opp_0_1 3)))
 (=> $x484 (xor Home_0_1 Home_2_1))))
(assert
 (let (($x501 (= Opp_2_2 1)))
 (let (($x502 (and (= Per_0_2 Per_2_2) $x501)))
 (let (($x499 (= Opp_0_2 3)))
 (=> $x499 $x502)))))
(assert
 (let (($x499 (= Opp_0_2 3)))
 (let (($x501 (= Opp_2_2 1)))
 (let (($x502 (and (= Per_0_2 Per_2_2) $x501)))
 (=> $x502 $x499)))))
(assert
 (let (($x499 (= Opp_0_2 3)))
 (=> $x499 (xor Home_0_2 Home_2_2))))
(assert
 (let (($x516 (= Opp_2_3 1)))
 (let (($x517 (and (= Per_0_3 Per_2_3) $x516)))
 (let (($x514 (= Opp_0_3 3)))
 (=> $x514 $x517)))))
(assert
 (let (($x514 (= Opp_0_3 3)))
 (let (($x516 (= Opp_2_3 1)))
 (let (($x517 (and (= Per_0_3 Per_2_3) $x516)))
 (=> $x517 $x514)))))
(assert
 (let (($x514 (= Opp_0_3 3)))
 (=> $x514 (xor Home_0_3 Home_2_3))))
(assert
 (let (($x531 (= Opp_2_4 1)))
 (let (($x532 (and (= Per_0_4 Per_2_4) $x531)))
 (let (($x529 (= Opp_0_4 3)))
 (=> $x529 $x532)))))
(assert
 (let (($x529 (= Opp_0_4 3)))
 (let (($x531 (= Opp_2_4 1)))
 (let (($x532 (and (= Per_0_4 Per_2_4) $x531)))
 (=> $x532 $x529)))))
(assert
 (let (($x529 (= Opp_0_4 3)))
 (=> $x529 (xor Home_0_4 Home_2_4))))
(assert
 (let (($x546 (= Opp_3_0 1)))
 (let (($x547 (and (= Per_0_0 Per_3_0) $x546)))
 (let (($x544 (= Opp_0_0 4)))
 (=> $x544 $x547)))))
(assert
 (let (($x544 (= Opp_0_0 4)))
 (let (($x546 (= Opp_3_0 1)))
 (let (($x547 (and (= Per_0_0 Per_3_0) $x546)))
 (=> $x547 $x544)))))
(assert
 (let (($x544 (= Opp_0_0 4)))
 (=> $x544 (xor Home_0_0 Home_3_0))))
(assert
 (let (($x561 (= Opp_3_1 1)))
 (let (($x562 (and (= Per_0_1 Per_3_1) $x561)))
 (let (($x559 (= Opp_0_1 4)))
 (=> $x559 $x562)))))
(assert
 (let (($x559 (= Opp_0_1 4)))
 (let (($x561 (= Opp_3_1 1)))
 (let (($x562 (and (= Per_0_1 Per_3_1) $x561)))
 (=> $x562 $x559)))))
(assert
 (let (($x559 (= Opp_0_1 4)))
 (=> $x559 (xor Home_0_1 Home_3_1))))
(assert
 (let (($x576 (= Opp_3_2 1)))
 (let (($x577 (and (= Per_0_2 Per_3_2) $x576)))
 (let (($x574 (= Opp_0_2 4)))
 (=> $x574 $x577)))))
(assert
 (let (($x574 (= Opp_0_2 4)))
 (let (($x576 (= Opp_3_2 1)))
 (let (($x577 (and (= Per_0_2 Per_3_2) $x576)))
 (=> $x577 $x574)))))
(assert
 (let (($x574 (= Opp_0_2 4)))
 (=> $x574 (xor Home_0_2 Home_3_2))))
(assert
 (let (($x591 (= Opp_3_3 1)))
 (let (($x592 (and (= Per_0_3 Per_3_3) $x591)))
 (let (($x589 (= Opp_0_3 4)))
 (=> $x589 $x592)))))
(assert
 (let (($x589 (= Opp_0_3 4)))
 (let (($x591 (= Opp_3_3 1)))
 (let (($x592 (and (= Per_0_3 Per_3_3) $x591)))
 (=> $x592 $x589)))))
(assert
 (let (($x589 (= Opp_0_3 4)))
 (=> $x589 (xor Home_0_3 Home_3_3))))
(assert
 (let (($x606 (= Opp_3_4 1)))
 (let (($x607 (and (= Per_0_4 Per_3_4) $x606)))
 (let (($x604 (= Opp_0_4 4)))
 (=> $x604 $x607)))))
(assert
 (let (($x604 (= Opp_0_4 4)))
 (let (($x606 (= Opp_3_4 1)))
 (let (($x607 (and (= Per_0_4 Per_3_4) $x606)))
 (=> $x607 $x604)))))
(assert
 (let (($x604 (= Opp_0_4 4)))
 (=> $x604 (xor Home_0_4 Home_3_4))))
(assert
 (let (($x621 (= Opp_4_0 1)))
 (let (($x622 (and (= Per_0_0 Per_4_0) $x621)))
 (let (($x619 (= Opp_0_0 5)))
 (=> $x619 $x622)))))
(assert
 (let (($x619 (= Opp_0_0 5)))
 (let (($x621 (= Opp_4_0 1)))
 (let (($x622 (and (= Per_0_0 Per_4_0) $x621)))
 (=> $x622 $x619)))))
(assert
 (let (($x619 (= Opp_0_0 5)))
 (=> $x619 (xor Home_0_0 Home_4_0))))
(assert
 (let (($x636 (= Opp_4_1 1)))
 (let (($x637 (and (= Per_0_1 Per_4_1) $x636)))
 (let (($x634 (= Opp_0_1 5)))
 (=> $x634 $x637)))))
(assert
 (let (($x634 (= Opp_0_1 5)))
 (let (($x636 (= Opp_4_1 1)))
 (let (($x637 (and (= Per_0_1 Per_4_1) $x636)))
 (=> $x637 $x634)))))
(assert
 (let (($x634 (= Opp_0_1 5)))
 (=> $x634 (xor Home_0_1 Home_4_1))))
(assert
 (let (($x651 (= Opp_4_2 1)))
 (let (($x652 (and (= Per_0_2 Per_4_2) $x651)))
 (let (($x649 (= Opp_0_2 5)))
 (=> $x649 $x652)))))
(assert
 (let (($x649 (= Opp_0_2 5)))
 (let (($x651 (= Opp_4_2 1)))
 (let (($x652 (and (= Per_0_2 Per_4_2) $x651)))
 (=> $x652 $x649)))))
(assert
 (let (($x649 (= Opp_0_2 5)))
 (=> $x649 (xor Home_0_2 Home_4_2))))
(assert
 (let (($x666 (= Opp_4_3 1)))
 (let (($x667 (and (= Per_0_3 Per_4_3) $x666)))
 (let (($x664 (= Opp_0_3 5)))
 (=> $x664 $x667)))))
(assert
 (let (($x664 (= Opp_0_3 5)))
 (let (($x666 (= Opp_4_3 1)))
 (let (($x667 (and (= Per_0_3 Per_4_3) $x666)))
 (=> $x667 $x664)))))
(assert
 (let (($x664 (= Opp_0_3 5)))
 (=> $x664 (xor Home_0_3 Home_4_3))))
(assert
 (let (($x681 (= Opp_4_4 1)))
 (let (($x682 (and (= Per_0_4 Per_4_4) $x681)))
 (let (($x679 (= Opp_0_4 5)))
 (=> $x679 $x682)))))
(assert
 (let (($x679 (= Opp_0_4 5)))
 (let (($x681 (= Opp_4_4 1)))
 (let (($x682 (and (= Per_0_4 Per_4_4) $x681)))
 (=> $x682 $x679)))))
(assert
 (let (($x679 (= Opp_0_4 5)))
 (=> $x679 (xor Home_0_4 Home_4_4))))
(assert
 (let (($x696 (= Opp_5_0 1)))
 (let (($x697 (and (= Per_0_0 Per_5_0) $x696)))
 (let (($x694 (= Opp_0_0 6)))
 (=> $x694 $x697)))))
(assert
 (let (($x694 (= Opp_0_0 6)))
 (let (($x696 (= Opp_5_0 1)))
 (let (($x697 (and (= Per_0_0 Per_5_0) $x696)))
 (=> $x697 $x694)))))
(assert
 (let (($x694 (= Opp_0_0 6)))
 (=> $x694 (xor Home_0_0 Home_5_0))))
(assert
 (let (($x711 (= Opp_5_1 1)))
 (let (($x712 (and (= Per_0_1 Per_5_1) $x711)))
 (let (($x709 (= Opp_0_1 6)))
 (=> $x709 $x712)))))
(assert
 (let (($x709 (= Opp_0_1 6)))
 (let (($x711 (= Opp_5_1 1)))
 (let (($x712 (and (= Per_0_1 Per_5_1) $x711)))
 (=> $x712 $x709)))))
(assert
 (let (($x709 (= Opp_0_1 6)))
 (=> $x709 (xor Home_0_1 Home_5_1))))
(assert
 (let (($x726 (= Opp_5_2 1)))
 (let (($x727 (and (= Per_0_2 Per_5_2) $x726)))
 (let (($x724 (= Opp_0_2 6)))
 (=> $x724 $x727)))))
(assert
 (let (($x724 (= Opp_0_2 6)))
 (let (($x726 (= Opp_5_2 1)))
 (let (($x727 (and (= Per_0_2 Per_5_2) $x726)))
 (=> $x727 $x724)))))
(assert
 (let (($x724 (= Opp_0_2 6)))
 (=> $x724 (xor Home_0_2 Home_5_2))))
(assert
 (let (($x741 (= Opp_5_3 1)))
 (let (($x742 (and (= Per_0_3 Per_5_3) $x741)))
 (let (($x739 (= Opp_0_3 6)))
 (=> $x739 $x742)))))
(assert
 (let (($x739 (= Opp_0_3 6)))
 (let (($x741 (= Opp_5_3 1)))
 (let (($x742 (and (= Per_0_3 Per_5_3) $x741)))
 (=> $x742 $x739)))))
(assert
 (let (($x739 (= Opp_0_3 6)))
 (=> $x739 (xor Home_0_3 Home_5_3))))
(assert
 (let (($x756 (= Opp_5_4 1)))
 (let (($x757 (and (= Per_0_4 Per_5_4) $x756)))
 (let (($x754 (= Opp_0_4 6)))
 (=> $x754 $x757)))))
(assert
 (let (($x754 (= Opp_0_4 6)))
 (let (($x756 (= Opp_5_4 1)))
 (let (($x757 (and (= Per_0_4 Per_5_4) $x756)))
 (=> $x757 $x754)))))
(assert
 (let (($x754 (= Opp_0_4 6)))
 (=> $x754 (xor Home_0_4 Home_5_4))))
(assert
 (let (($x394 (= Opp_0_0 2)))
 (let (($x770 (and (= Per_1_0 Per_0_0) $x394)))
 (let (($x396 (= Opp_1_0 1)))
 (=> $x396 $x770)))))
(assert
 (let (($x396 (= Opp_1_0 1)))
 (let (($x394 (= Opp_0_0 2)))
 (let (($x770 (and (= Per_1_0 Per_0_0) $x394)))
 (=> $x770 $x396)))))
(assert
 (let (($x396 (= Opp_1_0 1)))
 (=> $x396 (xor Home_1_0 Home_0_0))))
(assert
 (let (($x409 (= Opp_0_1 2)))
 (let (($x783 (and (= Per_1_1 Per_0_1) $x409)))
 (let (($x411 (= Opp_1_1 1)))
 (=> $x411 $x783)))))
(assert
 (let (($x411 (= Opp_1_1 1)))
 (let (($x409 (= Opp_0_1 2)))
 (let (($x783 (and (= Per_1_1 Per_0_1) $x409)))
 (=> $x783 $x411)))))
(assert
 (let (($x411 (= Opp_1_1 1)))
 (=> $x411 (xor Home_1_1 Home_0_1))))
(assert
 (let (($x424 (= Opp_0_2 2)))
 (let (($x796 (and (= Per_1_2 Per_0_2) $x424)))
 (let (($x426 (= Opp_1_2 1)))
 (=> $x426 $x796)))))
(assert
 (let (($x426 (= Opp_1_2 1)))
 (let (($x424 (= Opp_0_2 2)))
 (let (($x796 (and (= Per_1_2 Per_0_2) $x424)))
 (=> $x796 $x426)))))
(assert
 (let (($x426 (= Opp_1_2 1)))
 (=> $x426 (xor Home_1_2 Home_0_2))))
(assert
 (let (($x439 (= Opp_0_3 2)))
 (let (($x809 (and (= Per_1_3 Per_0_3) $x439)))
 (let (($x441 (= Opp_1_3 1)))
 (=> $x441 $x809)))))
(assert
 (let (($x441 (= Opp_1_3 1)))
 (let (($x439 (= Opp_0_3 2)))
 (let (($x809 (and (= Per_1_3 Per_0_3) $x439)))
 (=> $x809 $x441)))))
(assert
 (let (($x441 (= Opp_1_3 1)))
 (=> $x441 (xor Home_1_3 Home_0_3))))
(assert
 (let (($x454 (= Opp_0_4 2)))
 (let (($x822 (and (= Per_1_4 Per_0_4) $x454)))
 (let (($x456 (= Opp_1_4 1)))
 (=> $x456 $x822)))))
(assert
 (let (($x456 (= Opp_1_4 1)))
 (let (($x454 (= Opp_0_4 2)))
 (let (($x822 (and (= Per_1_4 Per_0_4) $x454)))
 (=> $x822 $x456)))))
(assert
 (let (($x456 (= Opp_1_4 1)))
 (=> $x456 (xor Home_1_4 Home_0_4))))
(assert
 (let (($x836 (= Opp_2_0 2)))
 (let (($x837 (and (= Per_1_0 Per_2_0) $x836)))
 (let (($x834 (= Opp_1_0 3)))
 (=> $x834 $x837)))))
(assert
 (let (($x834 (= Opp_1_0 3)))
 (let (($x836 (= Opp_2_0 2)))
 (let (($x837 (and (= Per_1_0 Per_2_0) $x836)))
 (=> $x837 $x834)))))
(assert
 (let (($x834 (= Opp_1_0 3)))
 (=> $x834 (xor Home_1_0 Home_2_0))))
(assert
 (let (($x851 (= Opp_2_1 2)))
 (let (($x852 (and (= Per_1_1 Per_2_1) $x851)))
 (let (($x849 (= Opp_1_1 3)))
 (=> $x849 $x852)))))
(assert
 (let (($x849 (= Opp_1_1 3)))
 (let (($x851 (= Opp_2_1 2)))
 (let (($x852 (and (= Per_1_1 Per_2_1) $x851)))
 (=> $x852 $x849)))))
(assert
 (let (($x849 (= Opp_1_1 3)))
 (=> $x849 (xor Home_1_1 Home_2_1))))
(assert
 (let (($x866 (= Opp_2_2 2)))
 (let (($x867 (and (= Per_1_2 Per_2_2) $x866)))
 (let (($x864 (= Opp_1_2 3)))
 (=> $x864 $x867)))))
(assert
 (let (($x864 (= Opp_1_2 3)))
 (let (($x866 (= Opp_2_2 2)))
 (let (($x867 (and (= Per_1_2 Per_2_2) $x866)))
 (=> $x867 $x864)))))
(assert
 (let (($x864 (= Opp_1_2 3)))
 (=> $x864 (xor Home_1_2 Home_2_2))))
(assert
 (let (($x881 (= Opp_2_3 2)))
 (let (($x882 (and (= Per_1_3 Per_2_3) $x881)))
 (let (($x879 (= Opp_1_3 3)))
 (=> $x879 $x882)))))
(assert
 (let (($x879 (= Opp_1_3 3)))
 (let (($x881 (= Opp_2_3 2)))
 (let (($x882 (and (= Per_1_3 Per_2_3) $x881)))
 (=> $x882 $x879)))))
(assert
 (let (($x879 (= Opp_1_3 3)))
 (=> $x879 (xor Home_1_3 Home_2_3))))
(assert
 (let (($x896 (= Opp_2_4 2)))
 (let (($x897 (and (= Per_1_4 Per_2_4) $x896)))
 (let (($x894 (= Opp_1_4 3)))
 (=> $x894 $x897)))))
(assert
 (let (($x894 (= Opp_1_4 3)))
 (let (($x896 (= Opp_2_4 2)))
 (let (($x897 (and (= Per_1_4 Per_2_4) $x896)))
 (=> $x897 $x894)))))
(assert
 (let (($x894 (= Opp_1_4 3)))
 (=> $x894 (xor Home_1_4 Home_2_4))))
(assert
 (let (($x911 (= Opp_3_0 2)))
 (let (($x912 (and (= Per_1_0 Per_3_0) $x911)))
 (let (($x909 (= Opp_1_0 4)))
 (=> $x909 $x912)))))
(assert
 (let (($x909 (= Opp_1_0 4)))
 (let (($x911 (= Opp_3_0 2)))
 (let (($x912 (and (= Per_1_0 Per_3_0) $x911)))
 (=> $x912 $x909)))))
(assert
 (let (($x909 (= Opp_1_0 4)))
 (=> $x909 (xor Home_1_0 Home_3_0))))
(assert
 (let (($x926 (= Opp_3_1 2)))
 (let (($x927 (and (= Per_1_1 Per_3_1) $x926)))
 (let (($x924 (= Opp_1_1 4)))
 (=> $x924 $x927)))))
(assert
 (let (($x924 (= Opp_1_1 4)))
 (let (($x926 (= Opp_3_1 2)))
 (let (($x927 (and (= Per_1_1 Per_3_1) $x926)))
 (=> $x927 $x924)))))
(assert
 (let (($x924 (= Opp_1_1 4)))
 (=> $x924 (xor Home_1_1 Home_3_1))))
(assert
 (let (($x941 (= Opp_3_2 2)))
 (let (($x942 (and (= Per_1_2 Per_3_2) $x941)))
 (let (($x939 (= Opp_1_2 4)))
 (=> $x939 $x942)))))
(assert
 (let (($x939 (= Opp_1_2 4)))
 (let (($x941 (= Opp_3_2 2)))
 (let (($x942 (and (= Per_1_2 Per_3_2) $x941)))
 (=> $x942 $x939)))))
(assert
 (let (($x939 (= Opp_1_2 4)))
 (=> $x939 (xor Home_1_2 Home_3_2))))
(assert
 (let (($x956 (= Opp_3_3 2)))
 (let (($x957 (and (= Per_1_3 Per_3_3) $x956)))
 (let (($x954 (= Opp_1_3 4)))
 (=> $x954 $x957)))))
(assert
 (let (($x954 (= Opp_1_3 4)))
 (let (($x956 (= Opp_3_3 2)))
 (let (($x957 (and (= Per_1_3 Per_3_3) $x956)))
 (=> $x957 $x954)))))
(assert
 (let (($x954 (= Opp_1_3 4)))
 (=> $x954 (xor Home_1_3 Home_3_3))))
(assert
 (let (($x971 (= Opp_3_4 2)))
 (let (($x972 (and (= Per_1_4 Per_3_4) $x971)))
 (let (($x969 (= Opp_1_4 4)))
 (=> $x969 $x972)))))
(assert
 (let (($x969 (= Opp_1_4 4)))
 (let (($x971 (= Opp_3_4 2)))
 (let (($x972 (and (= Per_1_4 Per_3_4) $x971)))
 (=> $x972 $x969)))))
(assert
 (let (($x969 (= Opp_1_4 4)))
 (=> $x969 (xor Home_1_4 Home_3_4))))
(assert
 (let (($x986 (= Opp_4_0 2)))
 (let (($x987 (and (= Per_1_0 Per_4_0) $x986)))
 (let (($x984 (= Opp_1_0 5)))
 (=> $x984 $x987)))))
(assert
 (let (($x984 (= Opp_1_0 5)))
 (let (($x986 (= Opp_4_0 2)))
 (let (($x987 (and (= Per_1_0 Per_4_0) $x986)))
 (=> $x987 $x984)))))
(assert
 (let (($x984 (= Opp_1_0 5)))
 (=> $x984 (xor Home_1_0 Home_4_0))))
(assert
 (let (($x1001 (= Opp_4_1 2)))
 (let (($x1002 (and (= Per_1_1 Per_4_1) $x1001)))
 (let (($x999 (= Opp_1_1 5)))
 (=> $x999 $x1002)))))
(assert
 (let (($x999 (= Opp_1_1 5)))
 (let (($x1001 (= Opp_4_1 2)))
 (let (($x1002 (and (= Per_1_1 Per_4_1) $x1001)))
 (=> $x1002 $x999)))))
(assert
 (let (($x999 (= Opp_1_1 5)))
 (=> $x999 (xor Home_1_1 Home_4_1))))
(assert
 (let (($x1016 (= Opp_4_2 2)))
 (let (($x1017 (and (= Per_1_2 Per_4_2) $x1016)))
 (let (($x1014 (= Opp_1_2 5)))
 (=> $x1014 $x1017)))))
(assert
 (let (($x1014 (= Opp_1_2 5)))
 (let (($x1016 (= Opp_4_2 2)))
 (let (($x1017 (and (= Per_1_2 Per_4_2) $x1016)))
 (=> $x1017 $x1014)))))
(assert
 (let (($x1014 (= Opp_1_2 5)))
 (=> $x1014 (xor Home_1_2 Home_4_2))))
(assert
 (let (($x1031 (= Opp_4_3 2)))
 (let (($x1032 (and (= Per_1_3 Per_4_3) $x1031)))
 (let (($x1029 (= Opp_1_3 5)))
 (=> $x1029 $x1032)))))
(assert
 (let (($x1029 (= Opp_1_3 5)))
 (let (($x1031 (= Opp_4_3 2)))
 (let (($x1032 (and (= Per_1_3 Per_4_3) $x1031)))
 (=> $x1032 $x1029)))))
(assert
 (let (($x1029 (= Opp_1_3 5)))
 (=> $x1029 (xor Home_1_3 Home_4_3))))
(assert
 (let (($x1046 (= Opp_4_4 2)))
 (let (($x1047 (and (= Per_1_4 Per_4_4) $x1046)))
 (let (($x1044 (= Opp_1_4 5)))
 (=> $x1044 $x1047)))))
(assert
 (let (($x1044 (= Opp_1_4 5)))
 (let (($x1046 (= Opp_4_4 2)))
 (let (($x1047 (and (= Per_1_4 Per_4_4) $x1046)))
 (=> $x1047 $x1044)))))
(assert
 (let (($x1044 (= Opp_1_4 5)))
 (=> $x1044 (xor Home_1_4 Home_4_4))))
(assert
 (let (($x1061 (= Opp_5_0 2)))
 (let (($x1062 (and (= Per_1_0 Per_5_0) $x1061)))
 (let (($x1059 (= Opp_1_0 6)))
 (=> $x1059 $x1062)))))
(assert
 (let (($x1059 (= Opp_1_0 6)))
 (let (($x1061 (= Opp_5_0 2)))
 (let (($x1062 (and (= Per_1_0 Per_5_0) $x1061)))
 (=> $x1062 $x1059)))))
(assert
 (let (($x1059 (= Opp_1_0 6)))
 (=> $x1059 (xor Home_1_0 Home_5_0))))
(assert
 (let (($x1076 (= Opp_5_1 2)))
 (let (($x1077 (and (= Per_1_1 Per_5_1) $x1076)))
 (let (($x1074 (= Opp_1_1 6)))
 (=> $x1074 $x1077)))))
(assert
 (let (($x1074 (= Opp_1_1 6)))
 (let (($x1076 (= Opp_5_1 2)))
 (let (($x1077 (and (= Per_1_1 Per_5_1) $x1076)))
 (=> $x1077 $x1074)))))
(assert
 (let (($x1074 (= Opp_1_1 6)))
 (=> $x1074 (xor Home_1_1 Home_5_1))))
(assert
 (let (($x1091 (= Opp_5_2 2)))
 (let (($x1092 (and (= Per_1_2 Per_5_2) $x1091)))
 (let (($x1089 (= Opp_1_2 6)))
 (=> $x1089 $x1092)))))
(assert
 (let (($x1089 (= Opp_1_2 6)))
 (let (($x1091 (= Opp_5_2 2)))
 (let (($x1092 (and (= Per_1_2 Per_5_2) $x1091)))
 (=> $x1092 $x1089)))))
(assert
 (let (($x1089 (= Opp_1_2 6)))
 (=> $x1089 (xor Home_1_2 Home_5_2))))
(assert
 (let (($x1106 (= Opp_5_3 2)))
 (let (($x1107 (and (= Per_1_3 Per_5_3) $x1106)))
 (let (($x1104 (= Opp_1_3 6)))
 (=> $x1104 $x1107)))))
(assert
 (let (($x1104 (= Opp_1_3 6)))
 (let (($x1106 (= Opp_5_3 2)))
 (let (($x1107 (and (= Per_1_3 Per_5_3) $x1106)))
 (=> $x1107 $x1104)))))
(assert
 (let (($x1104 (= Opp_1_3 6)))
 (=> $x1104 (xor Home_1_3 Home_5_3))))
(assert
 (let (($x1121 (= Opp_5_4 2)))
 (let (($x1122 (and (= Per_1_4 Per_5_4) $x1121)))
 (let (($x1119 (= Opp_1_4 6)))
 (=> $x1119 $x1122)))))
(assert
 (let (($x1119 (= Opp_1_4 6)))
 (let (($x1121 (= Opp_5_4 2)))
 (let (($x1122 (and (= Per_1_4 Per_5_4) $x1121)))
 (=> $x1122 $x1119)))))
(assert
 (let (($x1119 (= Opp_1_4 6)))
 (=> $x1119 (xor Home_1_4 Home_5_4))))
(assert
 (let (($x469 (= Opp_0_0 3)))
 (let (($x1135 (and (= Per_2_0 Per_0_0) $x469)))
 (let (($x471 (= Opp_2_0 1)))
 (=> $x471 $x1135)))))
(assert
 (let (($x471 (= Opp_2_0 1)))
 (let (($x469 (= Opp_0_0 3)))
 (let (($x1135 (and (= Per_2_0 Per_0_0) $x469)))
 (=> $x1135 $x471)))))
(assert
 (let (($x471 (= Opp_2_0 1)))
 (=> $x471 (xor Home_2_0 Home_0_0))))
(assert
 (let (($x484 (= Opp_0_1 3)))
 (let (($x1148 (and (= Per_2_1 Per_0_1) $x484)))
 (let (($x486 (= Opp_2_1 1)))
 (=> $x486 $x1148)))))
(assert
 (let (($x486 (= Opp_2_1 1)))
 (let (($x484 (= Opp_0_1 3)))
 (let (($x1148 (and (= Per_2_1 Per_0_1) $x484)))
 (=> $x1148 $x486)))))
(assert
 (let (($x486 (= Opp_2_1 1)))
 (=> $x486 (xor Home_2_1 Home_0_1))))
(assert
 (let (($x499 (= Opp_0_2 3)))
 (let (($x1161 (and (= Per_2_2 Per_0_2) $x499)))
 (let (($x501 (= Opp_2_2 1)))
 (=> $x501 $x1161)))))
(assert
 (let (($x501 (= Opp_2_2 1)))
 (let (($x499 (= Opp_0_2 3)))
 (let (($x1161 (and (= Per_2_2 Per_0_2) $x499)))
 (=> $x1161 $x501)))))
(assert
 (let (($x501 (= Opp_2_2 1)))
 (=> $x501 (xor Home_2_2 Home_0_2))))
(assert
 (let (($x514 (= Opp_0_3 3)))
 (let (($x1174 (and (= Per_2_3 Per_0_3) $x514)))
 (let (($x516 (= Opp_2_3 1)))
 (=> $x516 $x1174)))))
(assert
 (let (($x516 (= Opp_2_3 1)))
 (let (($x514 (= Opp_0_3 3)))
 (let (($x1174 (and (= Per_2_3 Per_0_3) $x514)))
 (=> $x1174 $x516)))))
(assert
 (let (($x516 (= Opp_2_3 1)))
 (=> $x516 (xor Home_2_3 Home_0_3))))
(assert
 (let (($x529 (= Opp_0_4 3)))
 (let (($x1187 (and (= Per_2_4 Per_0_4) $x529)))
 (let (($x531 (= Opp_2_4 1)))
 (=> $x531 $x1187)))))
(assert
 (let (($x531 (= Opp_2_4 1)))
 (let (($x529 (= Opp_0_4 3)))
 (let (($x1187 (and (= Per_2_4 Per_0_4) $x529)))
 (=> $x1187 $x531)))))
(assert
 (let (($x531 (= Opp_2_4 1)))
 (=> $x531 (xor Home_2_4 Home_0_4))))
(assert
 (let (($x834 (= Opp_1_0 3)))
 (let (($x1200 (and (= Per_2_0 Per_1_0) $x834)))
 (let (($x836 (= Opp_2_0 2)))
 (=> $x836 $x1200)))))
(assert
 (let (($x836 (= Opp_2_0 2)))
 (let (($x834 (= Opp_1_0 3)))
 (let (($x1200 (and (= Per_2_0 Per_1_0) $x834)))
 (=> $x1200 $x836)))))
(assert
 (let (($x836 (= Opp_2_0 2)))
 (=> $x836 (xor Home_2_0 Home_1_0))))
(assert
 (let (($x849 (= Opp_1_1 3)))
 (let (($x1213 (and (= Per_2_1 Per_1_1) $x849)))
 (let (($x851 (= Opp_2_1 2)))
 (=> $x851 $x1213)))))
(assert
 (let (($x851 (= Opp_2_1 2)))
 (let (($x849 (= Opp_1_1 3)))
 (let (($x1213 (and (= Per_2_1 Per_1_1) $x849)))
 (=> $x1213 $x851)))))
(assert
 (let (($x851 (= Opp_2_1 2)))
 (=> $x851 (xor Home_2_1 Home_1_1))))
(assert
 (let (($x864 (= Opp_1_2 3)))
 (let (($x1226 (and (= Per_2_2 Per_1_2) $x864)))
 (let (($x866 (= Opp_2_2 2)))
 (=> $x866 $x1226)))))
(assert
 (let (($x866 (= Opp_2_2 2)))
 (let (($x864 (= Opp_1_2 3)))
 (let (($x1226 (and (= Per_2_2 Per_1_2) $x864)))
 (=> $x1226 $x866)))))
(assert
 (let (($x866 (= Opp_2_2 2)))
 (=> $x866 (xor Home_2_2 Home_1_2))))
(assert
 (let (($x879 (= Opp_1_3 3)))
 (let (($x1239 (and (= Per_2_3 Per_1_3) $x879)))
 (let (($x881 (= Opp_2_3 2)))
 (=> $x881 $x1239)))))
(assert
 (let (($x881 (= Opp_2_3 2)))
 (let (($x879 (= Opp_1_3 3)))
 (let (($x1239 (and (= Per_2_3 Per_1_3) $x879)))
 (=> $x1239 $x881)))))
(assert
 (let (($x881 (= Opp_2_3 2)))
 (=> $x881 (xor Home_2_3 Home_1_3))))
(assert
 (let (($x894 (= Opp_1_4 3)))
 (let (($x1252 (and (= Per_2_4 Per_1_4) $x894)))
 (let (($x896 (= Opp_2_4 2)))
 (=> $x896 $x1252)))))
(assert
 (let (($x896 (= Opp_2_4 2)))
 (let (($x894 (= Opp_1_4 3)))
 (let (($x1252 (and (= Per_2_4 Per_1_4) $x894)))
 (=> $x1252 $x896)))))
(assert
 (let (($x896 (= Opp_2_4 2)))
 (=> $x896 (xor Home_2_4 Home_1_4))))
(assert
 (let (($x1266 (= Opp_3_0 3)))
 (let (($x1267 (and (= Per_2_0 Per_3_0) $x1266)))
 (let (($x1264 (= Opp_2_0 4)))
 (=> $x1264 $x1267)))))
(assert
 (let (($x1264 (= Opp_2_0 4)))
 (let (($x1266 (= Opp_3_0 3)))
 (let (($x1267 (and (= Per_2_0 Per_3_0) $x1266)))
 (=> $x1267 $x1264)))))
(assert
 (let (($x1264 (= Opp_2_0 4)))
 (=> $x1264 (xor Home_2_0 Home_3_0))))
(assert
 (let (($x1281 (= Opp_3_1 3)))
 (let (($x1282 (and (= Per_2_1 Per_3_1) $x1281)))
 (let (($x1279 (= Opp_2_1 4)))
 (=> $x1279 $x1282)))))
(assert
 (let (($x1279 (= Opp_2_1 4)))
 (let (($x1281 (= Opp_3_1 3)))
 (let (($x1282 (and (= Per_2_1 Per_3_1) $x1281)))
 (=> $x1282 $x1279)))))
(assert
 (let (($x1279 (= Opp_2_1 4)))
 (=> $x1279 (xor Home_2_1 Home_3_1))))
(assert
 (let (($x1296 (= Opp_3_2 3)))
 (let (($x1297 (and (= Per_2_2 Per_3_2) $x1296)))
 (let (($x1294 (= Opp_2_2 4)))
 (=> $x1294 $x1297)))))
(assert
 (let (($x1294 (= Opp_2_2 4)))
 (let (($x1296 (= Opp_3_2 3)))
 (let (($x1297 (and (= Per_2_2 Per_3_2) $x1296)))
 (=> $x1297 $x1294)))))
(assert
 (let (($x1294 (= Opp_2_2 4)))
 (=> $x1294 (xor Home_2_2 Home_3_2))))
(assert
 (let (($x1311 (= Opp_3_3 3)))
 (let (($x1312 (and (= Per_2_3 Per_3_3) $x1311)))
 (let (($x1309 (= Opp_2_3 4)))
 (=> $x1309 $x1312)))))
(assert
 (let (($x1309 (= Opp_2_3 4)))
 (let (($x1311 (= Opp_3_3 3)))
 (let (($x1312 (and (= Per_2_3 Per_3_3) $x1311)))
 (=> $x1312 $x1309)))))
(assert
 (let (($x1309 (= Opp_2_3 4)))
 (=> $x1309 (xor Home_2_3 Home_3_3))))
(assert
 (let (($x1326 (= Opp_3_4 3)))
 (let (($x1327 (and (= Per_2_4 Per_3_4) $x1326)))
 (let (($x1324 (= Opp_2_4 4)))
 (=> $x1324 $x1327)))))
(assert
 (let (($x1324 (= Opp_2_4 4)))
 (let (($x1326 (= Opp_3_4 3)))
 (let (($x1327 (and (= Per_2_4 Per_3_4) $x1326)))
 (=> $x1327 $x1324)))))
(assert
 (let (($x1324 (= Opp_2_4 4)))
 (=> $x1324 (xor Home_2_4 Home_3_4))))
(assert
 (let (($x1341 (= Opp_4_0 3)))
 (let (($x1342 (and (= Per_2_0 Per_4_0) $x1341)))
 (let (($x1339 (= Opp_2_0 5)))
 (=> $x1339 $x1342)))))
(assert
 (let (($x1339 (= Opp_2_0 5)))
 (let (($x1341 (= Opp_4_0 3)))
 (let (($x1342 (and (= Per_2_0 Per_4_0) $x1341)))
 (=> $x1342 $x1339)))))
(assert
 (let (($x1339 (= Opp_2_0 5)))
 (=> $x1339 (xor Home_2_0 Home_4_0))))
(assert
 (let (($x1356 (= Opp_4_1 3)))
 (let (($x1357 (and (= Per_2_1 Per_4_1) $x1356)))
 (let (($x1354 (= Opp_2_1 5)))
 (=> $x1354 $x1357)))))
(assert
 (let (($x1354 (= Opp_2_1 5)))
 (let (($x1356 (= Opp_4_1 3)))
 (let (($x1357 (and (= Per_2_1 Per_4_1) $x1356)))
 (=> $x1357 $x1354)))))
(assert
 (let (($x1354 (= Opp_2_1 5)))
 (=> $x1354 (xor Home_2_1 Home_4_1))))
(assert
 (let (($x1371 (= Opp_4_2 3)))
 (let (($x1372 (and (= Per_2_2 Per_4_2) $x1371)))
 (let (($x1369 (= Opp_2_2 5)))
 (=> $x1369 $x1372)))))
(assert
 (let (($x1369 (= Opp_2_2 5)))
 (let (($x1371 (= Opp_4_2 3)))
 (let (($x1372 (and (= Per_2_2 Per_4_2) $x1371)))
 (=> $x1372 $x1369)))))
(assert
 (let (($x1369 (= Opp_2_2 5)))
 (=> $x1369 (xor Home_2_2 Home_4_2))))
(assert
 (let (($x1386 (= Opp_4_3 3)))
 (let (($x1387 (and (= Per_2_3 Per_4_3) $x1386)))
 (let (($x1384 (= Opp_2_3 5)))
 (=> $x1384 $x1387)))))
(assert
 (let (($x1384 (= Opp_2_3 5)))
 (let (($x1386 (= Opp_4_3 3)))
 (let (($x1387 (and (= Per_2_3 Per_4_3) $x1386)))
 (=> $x1387 $x1384)))))
(assert
 (let (($x1384 (= Opp_2_3 5)))
 (=> $x1384 (xor Home_2_3 Home_4_3))))
(assert
 (let (($x1401 (= Opp_4_4 3)))
 (let (($x1402 (and (= Per_2_4 Per_4_4) $x1401)))
 (let (($x1399 (= Opp_2_4 5)))
 (=> $x1399 $x1402)))))
(assert
 (let (($x1399 (= Opp_2_4 5)))
 (let (($x1401 (= Opp_4_4 3)))
 (let (($x1402 (and (= Per_2_4 Per_4_4) $x1401)))
 (=> $x1402 $x1399)))))
(assert
 (let (($x1399 (= Opp_2_4 5)))
 (=> $x1399 (xor Home_2_4 Home_4_4))))
(assert
 (let (($x1416 (= Opp_5_0 3)))
 (let (($x1417 (and (= Per_2_0 Per_5_0) $x1416)))
 (let (($x1414 (= Opp_2_0 6)))
 (=> $x1414 $x1417)))))
(assert
 (let (($x1414 (= Opp_2_0 6)))
 (let (($x1416 (= Opp_5_0 3)))
 (let (($x1417 (and (= Per_2_0 Per_5_0) $x1416)))
 (=> $x1417 $x1414)))))
(assert
 (let (($x1414 (= Opp_2_0 6)))
 (=> $x1414 (xor Home_2_0 Home_5_0))))
(assert
 (let (($x1431 (= Opp_5_1 3)))
 (let (($x1432 (and (= Per_2_1 Per_5_1) $x1431)))
 (let (($x1429 (= Opp_2_1 6)))
 (=> $x1429 $x1432)))))
(assert
 (let (($x1429 (= Opp_2_1 6)))
 (let (($x1431 (= Opp_5_1 3)))
 (let (($x1432 (and (= Per_2_1 Per_5_1) $x1431)))
 (=> $x1432 $x1429)))))
(assert
 (let (($x1429 (= Opp_2_1 6)))
 (=> $x1429 (xor Home_2_1 Home_5_1))))
(assert
 (let (($x1446 (= Opp_5_2 3)))
 (let (($x1447 (and (= Per_2_2 Per_5_2) $x1446)))
 (let (($x1444 (= Opp_2_2 6)))
 (=> $x1444 $x1447)))))
(assert
 (let (($x1444 (= Opp_2_2 6)))
 (let (($x1446 (= Opp_5_2 3)))
 (let (($x1447 (and (= Per_2_2 Per_5_2) $x1446)))
 (=> $x1447 $x1444)))))
(assert
 (let (($x1444 (= Opp_2_2 6)))
 (=> $x1444 (xor Home_2_2 Home_5_2))))
(assert
 (let (($x1461 (= Opp_5_3 3)))
 (let (($x1462 (and (= Per_2_3 Per_5_3) $x1461)))
 (let (($x1459 (= Opp_2_3 6)))
 (=> $x1459 $x1462)))))
(assert
 (let (($x1459 (= Opp_2_3 6)))
 (let (($x1461 (= Opp_5_3 3)))
 (let (($x1462 (and (= Per_2_3 Per_5_3) $x1461)))
 (=> $x1462 $x1459)))))
(assert
 (let (($x1459 (= Opp_2_3 6)))
 (=> $x1459 (xor Home_2_3 Home_5_3))))
(assert
 (let (($x1476 (= Opp_5_4 3)))
 (let (($x1477 (and (= Per_2_4 Per_5_4) $x1476)))
 (let (($x1474 (= Opp_2_4 6)))
 (=> $x1474 $x1477)))))
(assert
 (let (($x1474 (= Opp_2_4 6)))
 (let (($x1476 (= Opp_5_4 3)))
 (let (($x1477 (and (= Per_2_4 Per_5_4) $x1476)))
 (=> $x1477 $x1474)))))
(assert
 (let (($x1474 (= Opp_2_4 6)))
 (=> $x1474 (xor Home_2_4 Home_5_4))))
(assert
 (let (($x544 (= Opp_0_0 4)))
 (let (($x1490 (and (= Per_3_0 Per_0_0) $x544)))
 (let (($x546 (= Opp_3_0 1)))
 (=> $x546 $x1490)))))
(assert
 (let (($x546 (= Opp_3_0 1)))
 (let (($x544 (= Opp_0_0 4)))
 (let (($x1490 (and (= Per_3_0 Per_0_0) $x544)))
 (=> $x1490 $x546)))))
(assert
 (let (($x546 (= Opp_3_0 1)))
 (=> $x546 (xor Home_3_0 Home_0_0))))
(assert
 (let (($x559 (= Opp_0_1 4)))
 (let (($x1503 (and (= Per_3_1 Per_0_1) $x559)))
 (let (($x561 (= Opp_3_1 1)))
 (=> $x561 $x1503)))))
(assert
 (let (($x561 (= Opp_3_1 1)))
 (let (($x559 (= Opp_0_1 4)))
 (let (($x1503 (and (= Per_3_1 Per_0_1) $x559)))
 (=> $x1503 $x561)))))
(assert
 (let (($x561 (= Opp_3_1 1)))
 (=> $x561 (xor Home_3_1 Home_0_1))))
(assert
 (let (($x574 (= Opp_0_2 4)))
 (let (($x1516 (and (= Per_3_2 Per_0_2) $x574)))
 (let (($x576 (= Opp_3_2 1)))
 (=> $x576 $x1516)))))
(assert
 (let (($x576 (= Opp_3_2 1)))
 (let (($x574 (= Opp_0_2 4)))
 (let (($x1516 (and (= Per_3_2 Per_0_2) $x574)))
 (=> $x1516 $x576)))))
(assert
 (let (($x576 (= Opp_3_2 1)))
 (=> $x576 (xor Home_3_2 Home_0_2))))
(assert
 (let (($x589 (= Opp_0_3 4)))
 (let (($x1529 (and (= Per_3_3 Per_0_3) $x589)))
 (let (($x591 (= Opp_3_3 1)))
 (=> $x591 $x1529)))))
(assert
 (let (($x591 (= Opp_3_3 1)))
 (let (($x589 (= Opp_0_3 4)))
 (let (($x1529 (and (= Per_3_3 Per_0_3) $x589)))
 (=> $x1529 $x591)))))
(assert
 (let (($x591 (= Opp_3_3 1)))
 (=> $x591 (xor Home_3_3 Home_0_3))))
(assert
 (let (($x604 (= Opp_0_4 4)))
 (let (($x1542 (and (= Per_3_4 Per_0_4) $x604)))
 (let (($x606 (= Opp_3_4 1)))
 (=> $x606 $x1542)))))
(assert
 (let (($x606 (= Opp_3_4 1)))
 (let (($x604 (= Opp_0_4 4)))
 (let (($x1542 (and (= Per_3_4 Per_0_4) $x604)))
 (=> $x1542 $x606)))))
(assert
 (let (($x606 (= Opp_3_4 1)))
 (=> $x606 (xor Home_3_4 Home_0_4))))
(assert
 (let (($x909 (= Opp_1_0 4)))
 (let (($x1555 (and (= Per_3_0 Per_1_0) $x909)))
 (let (($x911 (= Opp_3_0 2)))
 (=> $x911 $x1555)))))
(assert
 (let (($x911 (= Opp_3_0 2)))
 (let (($x909 (= Opp_1_0 4)))
 (let (($x1555 (and (= Per_3_0 Per_1_0) $x909)))
 (=> $x1555 $x911)))))
(assert
 (let (($x911 (= Opp_3_0 2)))
 (=> $x911 (xor Home_3_0 Home_1_0))))
(assert
 (let (($x924 (= Opp_1_1 4)))
 (let (($x1568 (and (= Per_3_1 Per_1_1) $x924)))
 (let (($x926 (= Opp_3_1 2)))
 (=> $x926 $x1568)))))
(assert
 (let (($x926 (= Opp_3_1 2)))
 (let (($x924 (= Opp_1_1 4)))
 (let (($x1568 (and (= Per_3_1 Per_1_1) $x924)))
 (=> $x1568 $x926)))))
(assert
 (let (($x926 (= Opp_3_1 2)))
 (=> $x926 (xor Home_3_1 Home_1_1))))
(assert
 (let (($x939 (= Opp_1_2 4)))
 (let (($x1581 (and (= Per_3_2 Per_1_2) $x939)))
 (let (($x941 (= Opp_3_2 2)))
 (=> $x941 $x1581)))))
(assert
 (let (($x941 (= Opp_3_2 2)))
 (let (($x939 (= Opp_1_2 4)))
 (let (($x1581 (and (= Per_3_2 Per_1_2) $x939)))
 (=> $x1581 $x941)))))
(assert
 (let (($x941 (= Opp_3_2 2)))
 (=> $x941 (xor Home_3_2 Home_1_2))))
(assert
 (let (($x954 (= Opp_1_3 4)))
 (let (($x1594 (and (= Per_3_3 Per_1_3) $x954)))
 (let (($x956 (= Opp_3_3 2)))
 (=> $x956 $x1594)))))
(assert
 (let (($x956 (= Opp_3_3 2)))
 (let (($x954 (= Opp_1_3 4)))
 (let (($x1594 (and (= Per_3_3 Per_1_3) $x954)))
 (=> $x1594 $x956)))))
(assert
 (let (($x956 (= Opp_3_3 2)))
 (=> $x956 (xor Home_3_3 Home_1_3))))
(assert
 (let (($x969 (= Opp_1_4 4)))
 (let (($x1607 (and (= Per_3_4 Per_1_4) $x969)))
 (let (($x971 (= Opp_3_4 2)))
 (=> $x971 $x1607)))))
(assert
 (let (($x971 (= Opp_3_4 2)))
 (let (($x969 (= Opp_1_4 4)))
 (let (($x1607 (and (= Per_3_4 Per_1_4) $x969)))
 (=> $x1607 $x971)))))
(assert
 (let (($x971 (= Opp_3_4 2)))
 (=> $x971 (xor Home_3_4 Home_1_4))))
(assert
 (let (($x1264 (= Opp_2_0 4)))
 (let (($x1620 (and (= Per_3_0 Per_2_0) $x1264)))
 (let (($x1266 (= Opp_3_0 3)))
 (=> $x1266 $x1620)))))
(assert
 (let (($x1266 (= Opp_3_0 3)))
 (let (($x1264 (= Opp_2_0 4)))
 (let (($x1620 (and (= Per_3_0 Per_2_0) $x1264)))
 (=> $x1620 $x1266)))))
(assert
 (let (($x1266 (= Opp_3_0 3)))
 (=> $x1266 (xor Home_3_0 Home_2_0))))
(assert
 (let (($x1279 (= Opp_2_1 4)))
 (let (($x1633 (and (= Per_3_1 Per_2_1) $x1279)))
 (let (($x1281 (= Opp_3_1 3)))
 (=> $x1281 $x1633)))))
(assert
 (let (($x1281 (= Opp_3_1 3)))
 (let (($x1279 (= Opp_2_1 4)))
 (let (($x1633 (and (= Per_3_1 Per_2_1) $x1279)))
 (=> $x1633 $x1281)))))
(assert
 (let (($x1281 (= Opp_3_1 3)))
 (=> $x1281 (xor Home_3_1 Home_2_1))))
(assert
 (let (($x1294 (= Opp_2_2 4)))
 (let (($x1646 (and (= Per_3_2 Per_2_2) $x1294)))
 (let (($x1296 (= Opp_3_2 3)))
 (=> $x1296 $x1646)))))
(assert
 (let (($x1296 (= Opp_3_2 3)))
 (let (($x1294 (= Opp_2_2 4)))
 (let (($x1646 (and (= Per_3_2 Per_2_2) $x1294)))
 (=> $x1646 $x1296)))))
(assert
 (let (($x1296 (= Opp_3_2 3)))
 (=> $x1296 (xor Home_3_2 Home_2_2))))
(assert
 (let (($x1309 (= Opp_2_3 4)))
 (let (($x1659 (and (= Per_3_3 Per_2_3) $x1309)))
 (let (($x1311 (= Opp_3_3 3)))
 (=> $x1311 $x1659)))))
(assert
 (let (($x1311 (= Opp_3_3 3)))
 (let (($x1309 (= Opp_2_3 4)))
 (let (($x1659 (and (= Per_3_3 Per_2_3) $x1309)))
 (=> $x1659 $x1311)))))
(assert
 (let (($x1311 (= Opp_3_3 3)))
 (=> $x1311 (xor Home_3_3 Home_2_3))))
(assert
 (let (($x1324 (= Opp_2_4 4)))
 (let (($x1672 (and (= Per_3_4 Per_2_4) $x1324)))
 (let (($x1326 (= Opp_3_4 3)))
 (=> $x1326 $x1672)))))
(assert
 (let (($x1326 (= Opp_3_4 3)))
 (let (($x1324 (= Opp_2_4 4)))
 (let (($x1672 (and (= Per_3_4 Per_2_4) $x1324)))
 (=> $x1672 $x1326)))))
(assert
 (let (($x1326 (= Opp_3_4 3)))
 (=> $x1326 (xor Home_3_4 Home_2_4))))
(assert
 (let (($x1686 (= Opp_4_0 4)))
 (let (($x1687 (and (= Per_3_0 Per_4_0) $x1686)))
 (let (($x1684 (= Opp_3_0 5)))
 (=> $x1684 $x1687)))))
(assert
 (let (($x1684 (= Opp_3_0 5)))
 (let (($x1686 (= Opp_4_0 4)))
 (let (($x1687 (and (= Per_3_0 Per_4_0) $x1686)))
 (=> $x1687 $x1684)))))
(assert
 (let (($x1684 (= Opp_3_0 5)))
 (=> $x1684 (xor Home_3_0 Home_4_0))))
(assert
 (let (($x1701 (= Opp_4_1 4)))
 (let (($x1702 (and (= Per_3_1 Per_4_1) $x1701)))
 (let (($x1699 (= Opp_3_1 5)))
 (=> $x1699 $x1702)))))
(assert
 (let (($x1699 (= Opp_3_1 5)))
 (let (($x1701 (= Opp_4_1 4)))
 (let (($x1702 (and (= Per_3_1 Per_4_1) $x1701)))
 (=> $x1702 $x1699)))))
(assert
 (let (($x1699 (= Opp_3_1 5)))
 (=> $x1699 (xor Home_3_1 Home_4_1))))
(assert
 (let (($x1716 (= Opp_4_2 4)))
 (let (($x1717 (and (= Per_3_2 Per_4_2) $x1716)))
 (let (($x1714 (= Opp_3_2 5)))
 (=> $x1714 $x1717)))))
(assert
 (let (($x1714 (= Opp_3_2 5)))
 (let (($x1716 (= Opp_4_2 4)))
 (let (($x1717 (and (= Per_3_2 Per_4_2) $x1716)))
 (=> $x1717 $x1714)))))
(assert
 (let (($x1714 (= Opp_3_2 5)))
 (=> $x1714 (xor Home_3_2 Home_4_2))))
(assert
 (let (($x1731 (= Opp_4_3 4)))
 (let (($x1732 (and (= Per_3_3 Per_4_3) $x1731)))
 (let (($x1729 (= Opp_3_3 5)))
 (=> $x1729 $x1732)))))
(assert
 (let (($x1729 (= Opp_3_3 5)))
 (let (($x1731 (= Opp_4_3 4)))
 (let (($x1732 (and (= Per_3_3 Per_4_3) $x1731)))
 (=> $x1732 $x1729)))))
(assert
 (let (($x1729 (= Opp_3_3 5)))
 (=> $x1729 (xor Home_3_3 Home_4_3))))
(assert
 (let (($x1746 (= Opp_4_4 4)))
 (let (($x1747 (and (= Per_3_4 Per_4_4) $x1746)))
 (let (($x1744 (= Opp_3_4 5)))
 (=> $x1744 $x1747)))))
(assert
 (let (($x1744 (= Opp_3_4 5)))
 (let (($x1746 (= Opp_4_4 4)))
 (let (($x1747 (and (= Per_3_4 Per_4_4) $x1746)))
 (=> $x1747 $x1744)))))
(assert
 (let (($x1744 (= Opp_3_4 5)))
 (=> $x1744 (xor Home_3_4 Home_4_4))))
(assert
 (let (($x1761 (= Opp_5_0 4)))
 (let (($x1762 (and (= Per_3_0 Per_5_0) $x1761)))
 (let (($x1759 (= Opp_3_0 6)))
 (=> $x1759 $x1762)))))
(assert
 (let (($x1759 (= Opp_3_0 6)))
 (let (($x1761 (= Opp_5_0 4)))
 (let (($x1762 (and (= Per_3_0 Per_5_0) $x1761)))
 (=> $x1762 $x1759)))))
(assert
 (let (($x1759 (= Opp_3_0 6)))
 (=> $x1759 (xor Home_3_0 Home_5_0))))
(assert
 (let (($x1776 (= Opp_5_1 4)))
 (let (($x1777 (and (= Per_3_1 Per_5_1) $x1776)))
 (let (($x1774 (= Opp_3_1 6)))
 (=> $x1774 $x1777)))))
(assert
 (let (($x1774 (= Opp_3_1 6)))
 (let (($x1776 (= Opp_5_1 4)))
 (let (($x1777 (and (= Per_3_1 Per_5_1) $x1776)))
 (=> $x1777 $x1774)))))
(assert
 (let (($x1774 (= Opp_3_1 6)))
 (=> $x1774 (xor Home_3_1 Home_5_1))))
(assert
 (let (($x1791 (= Opp_5_2 4)))
 (let (($x1792 (and (= Per_3_2 Per_5_2) $x1791)))
 (let (($x1789 (= Opp_3_2 6)))
 (=> $x1789 $x1792)))))
(assert
 (let (($x1789 (= Opp_3_2 6)))
 (let (($x1791 (= Opp_5_2 4)))
 (let (($x1792 (and (= Per_3_2 Per_5_2) $x1791)))
 (=> $x1792 $x1789)))))
(assert
 (let (($x1789 (= Opp_3_2 6)))
 (=> $x1789 (xor Home_3_2 Home_5_2))))
(assert
 (let (($x1806 (= Opp_5_3 4)))
 (let (($x1807 (and (= Per_3_3 Per_5_3) $x1806)))
 (let (($x1804 (= Opp_3_3 6)))
 (=> $x1804 $x1807)))))
(assert
 (let (($x1804 (= Opp_3_3 6)))
 (let (($x1806 (= Opp_5_3 4)))
 (let (($x1807 (and (= Per_3_3 Per_5_3) $x1806)))
 (=> $x1807 $x1804)))))
(assert
 (let (($x1804 (= Opp_3_3 6)))
 (=> $x1804 (xor Home_3_3 Home_5_3))))
(assert
 (let (($x1821 (= Opp_5_4 4)))
 (let (($x1822 (and (= Per_3_4 Per_5_4) $x1821)))
 (let (($x1819 (= Opp_3_4 6)))
 (=> $x1819 $x1822)))))
(assert
 (let (($x1819 (= Opp_3_4 6)))
 (let (($x1821 (= Opp_5_4 4)))
 (let (($x1822 (and (= Per_3_4 Per_5_4) $x1821)))
 (=> $x1822 $x1819)))))
(assert
 (let (($x1819 (= Opp_3_4 6)))
 (=> $x1819 (xor Home_3_4 Home_5_4))))
(assert
 (let (($x619 (= Opp_0_0 5)))
 (let (($x1835 (and (= Per_4_0 Per_0_0) $x619)))
 (let (($x621 (= Opp_4_0 1)))
 (=> $x621 $x1835)))))
(assert
 (let (($x621 (= Opp_4_0 1)))
 (let (($x619 (= Opp_0_0 5)))
 (let (($x1835 (and (= Per_4_0 Per_0_0) $x619)))
 (=> $x1835 $x621)))))
(assert
 (let (($x621 (= Opp_4_0 1)))
 (=> $x621 (xor Home_4_0 Home_0_0))))
(assert
 (let (($x634 (= Opp_0_1 5)))
 (let (($x1848 (and (= Per_4_1 Per_0_1) $x634)))
 (let (($x636 (= Opp_4_1 1)))
 (=> $x636 $x1848)))))
(assert
 (let (($x636 (= Opp_4_1 1)))
 (let (($x634 (= Opp_0_1 5)))
 (let (($x1848 (and (= Per_4_1 Per_0_1) $x634)))
 (=> $x1848 $x636)))))
(assert
 (let (($x636 (= Opp_4_1 1)))
 (=> $x636 (xor Home_4_1 Home_0_1))))
(assert
 (let (($x649 (= Opp_0_2 5)))
 (let (($x1861 (and (= Per_4_2 Per_0_2) $x649)))
 (let (($x651 (= Opp_4_2 1)))
 (=> $x651 $x1861)))))
(assert
 (let (($x651 (= Opp_4_2 1)))
 (let (($x649 (= Opp_0_2 5)))
 (let (($x1861 (and (= Per_4_2 Per_0_2) $x649)))
 (=> $x1861 $x651)))))
(assert
 (let (($x651 (= Opp_4_2 1)))
 (=> $x651 (xor Home_4_2 Home_0_2))))
(assert
 (let (($x664 (= Opp_0_3 5)))
 (let (($x1874 (and (= Per_4_3 Per_0_3) $x664)))
 (let (($x666 (= Opp_4_3 1)))
 (=> $x666 $x1874)))))
(assert
 (let (($x666 (= Opp_4_3 1)))
 (let (($x664 (= Opp_0_3 5)))
 (let (($x1874 (and (= Per_4_3 Per_0_3) $x664)))
 (=> $x1874 $x666)))))
(assert
 (let (($x666 (= Opp_4_3 1)))
 (=> $x666 (xor Home_4_3 Home_0_3))))
(assert
 (let (($x679 (= Opp_0_4 5)))
 (let (($x1887 (and (= Per_4_4 Per_0_4) $x679)))
 (let (($x681 (= Opp_4_4 1)))
 (=> $x681 $x1887)))))
(assert
 (let (($x681 (= Opp_4_4 1)))
 (let (($x679 (= Opp_0_4 5)))
 (let (($x1887 (and (= Per_4_4 Per_0_4) $x679)))
 (=> $x1887 $x681)))))
(assert
 (let (($x681 (= Opp_4_4 1)))
 (=> $x681 (xor Home_4_4 Home_0_4))))
(assert
 (let (($x984 (= Opp_1_0 5)))
 (let (($x1900 (and (= Per_4_0 Per_1_0) $x984)))
 (let (($x986 (= Opp_4_0 2)))
 (=> $x986 $x1900)))))
(assert
 (let (($x986 (= Opp_4_0 2)))
 (let (($x984 (= Opp_1_0 5)))
 (let (($x1900 (and (= Per_4_0 Per_1_0) $x984)))
 (=> $x1900 $x986)))))
(assert
 (let (($x986 (= Opp_4_0 2)))
 (=> $x986 (xor Home_4_0 Home_1_0))))
(assert
 (let (($x999 (= Opp_1_1 5)))
 (let (($x1913 (and (= Per_4_1 Per_1_1) $x999)))
 (let (($x1001 (= Opp_4_1 2)))
 (=> $x1001 $x1913)))))
(assert
 (let (($x1001 (= Opp_4_1 2)))
 (let (($x999 (= Opp_1_1 5)))
 (let (($x1913 (and (= Per_4_1 Per_1_1) $x999)))
 (=> $x1913 $x1001)))))
(assert
 (let (($x1001 (= Opp_4_1 2)))
 (=> $x1001 (xor Home_4_1 Home_1_1))))
(assert
 (let (($x1014 (= Opp_1_2 5)))
 (let (($x1926 (and (= Per_4_2 Per_1_2) $x1014)))
 (let (($x1016 (= Opp_4_2 2)))
 (=> $x1016 $x1926)))))
(assert
 (let (($x1016 (= Opp_4_2 2)))
 (let (($x1014 (= Opp_1_2 5)))
 (let (($x1926 (and (= Per_4_2 Per_1_2) $x1014)))
 (=> $x1926 $x1016)))))
(assert
 (let (($x1016 (= Opp_4_2 2)))
 (=> $x1016 (xor Home_4_2 Home_1_2))))
(assert
 (let (($x1029 (= Opp_1_3 5)))
 (let (($x1939 (and (= Per_4_3 Per_1_3) $x1029)))
 (let (($x1031 (= Opp_4_3 2)))
 (=> $x1031 $x1939)))))
(assert
 (let (($x1031 (= Opp_4_3 2)))
 (let (($x1029 (= Opp_1_3 5)))
 (let (($x1939 (and (= Per_4_3 Per_1_3) $x1029)))
 (=> $x1939 $x1031)))))
(assert
 (let (($x1031 (= Opp_4_3 2)))
 (=> $x1031 (xor Home_4_3 Home_1_3))))
(assert
 (let (($x1044 (= Opp_1_4 5)))
 (let (($x1952 (and (= Per_4_4 Per_1_4) $x1044)))
 (let (($x1046 (= Opp_4_4 2)))
 (=> $x1046 $x1952)))))
(assert
 (let (($x1046 (= Opp_4_4 2)))
 (let (($x1044 (= Opp_1_4 5)))
 (let (($x1952 (and (= Per_4_4 Per_1_4) $x1044)))
 (=> $x1952 $x1046)))))
(assert
 (let (($x1046 (= Opp_4_4 2)))
 (=> $x1046 (xor Home_4_4 Home_1_4))))
(assert
 (let (($x1339 (= Opp_2_0 5)))
 (let (($x1965 (and (= Per_4_0 Per_2_0) $x1339)))
 (let (($x1341 (= Opp_4_0 3)))
 (=> $x1341 $x1965)))))
(assert
 (let (($x1341 (= Opp_4_0 3)))
 (let (($x1339 (= Opp_2_0 5)))
 (let (($x1965 (and (= Per_4_0 Per_2_0) $x1339)))
 (=> $x1965 $x1341)))))
(assert
 (let (($x1341 (= Opp_4_0 3)))
 (=> $x1341 (xor Home_4_0 Home_2_0))))
(assert
 (let (($x1354 (= Opp_2_1 5)))
 (let (($x1978 (and (= Per_4_1 Per_2_1) $x1354)))
 (let (($x1356 (= Opp_4_1 3)))
 (=> $x1356 $x1978)))))
(assert
 (let (($x1356 (= Opp_4_1 3)))
 (let (($x1354 (= Opp_2_1 5)))
 (let (($x1978 (and (= Per_4_1 Per_2_1) $x1354)))
 (=> $x1978 $x1356)))))
(assert
 (let (($x1356 (= Opp_4_1 3)))
 (=> $x1356 (xor Home_4_1 Home_2_1))))
(assert
 (let (($x1369 (= Opp_2_2 5)))
 (let (($x1991 (and (= Per_4_2 Per_2_2) $x1369)))
 (let (($x1371 (= Opp_4_2 3)))
 (=> $x1371 $x1991)))))
(assert
 (let (($x1371 (= Opp_4_2 3)))
 (let (($x1369 (= Opp_2_2 5)))
 (let (($x1991 (and (= Per_4_2 Per_2_2) $x1369)))
 (=> $x1991 $x1371)))))
(assert
 (let (($x1371 (= Opp_4_2 3)))
 (=> $x1371 (xor Home_4_2 Home_2_2))))
(assert
 (let (($x1384 (= Opp_2_3 5)))
 (let (($x2004 (and (= Per_4_3 Per_2_3) $x1384)))
 (let (($x1386 (= Opp_4_3 3)))
 (=> $x1386 $x2004)))))
(assert
 (let (($x1386 (= Opp_4_3 3)))
 (let (($x1384 (= Opp_2_3 5)))
 (let (($x2004 (and (= Per_4_3 Per_2_3) $x1384)))
 (=> $x2004 $x1386)))))
(assert
 (let (($x1386 (= Opp_4_3 3)))
 (=> $x1386 (xor Home_4_3 Home_2_3))))
(assert
 (let (($x1399 (= Opp_2_4 5)))
 (let (($x2017 (and (= Per_4_4 Per_2_4) $x1399)))
 (let (($x1401 (= Opp_4_4 3)))
 (=> $x1401 $x2017)))))
(assert
 (let (($x1401 (= Opp_4_4 3)))
 (let (($x1399 (= Opp_2_4 5)))
 (let (($x2017 (and (= Per_4_4 Per_2_4) $x1399)))
 (=> $x2017 $x1401)))))
(assert
 (let (($x1401 (= Opp_4_4 3)))
 (=> $x1401 (xor Home_4_4 Home_2_4))))
(assert
 (let (($x1684 (= Opp_3_0 5)))
 (let (($x2030 (and (= Per_4_0 Per_3_0) $x1684)))
 (let (($x1686 (= Opp_4_0 4)))
 (=> $x1686 $x2030)))))
(assert
 (let (($x1686 (= Opp_4_0 4)))
 (let (($x1684 (= Opp_3_0 5)))
 (let (($x2030 (and (= Per_4_0 Per_3_0) $x1684)))
 (=> $x2030 $x1686)))))
(assert
 (let (($x1686 (= Opp_4_0 4)))
 (=> $x1686 (xor Home_4_0 Home_3_0))))
(assert
 (let (($x1699 (= Opp_3_1 5)))
 (let (($x2043 (and (= Per_4_1 Per_3_1) $x1699)))
 (let (($x1701 (= Opp_4_1 4)))
 (=> $x1701 $x2043)))))
(assert
 (let (($x1701 (= Opp_4_1 4)))
 (let (($x1699 (= Opp_3_1 5)))
 (let (($x2043 (and (= Per_4_1 Per_3_1) $x1699)))
 (=> $x2043 $x1701)))))
(assert
 (let (($x1701 (= Opp_4_1 4)))
 (=> $x1701 (xor Home_4_1 Home_3_1))))
(assert
 (let (($x1714 (= Opp_3_2 5)))
 (let (($x2056 (and (= Per_4_2 Per_3_2) $x1714)))
 (let (($x1716 (= Opp_4_2 4)))
 (=> $x1716 $x2056)))))
(assert
 (let (($x1716 (= Opp_4_2 4)))
 (let (($x1714 (= Opp_3_2 5)))
 (let (($x2056 (and (= Per_4_2 Per_3_2) $x1714)))
 (=> $x2056 $x1716)))))
(assert
 (let (($x1716 (= Opp_4_2 4)))
 (=> $x1716 (xor Home_4_2 Home_3_2))))
(assert
 (let (($x1729 (= Opp_3_3 5)))
 (let (($x2069 (and (= Per_4_3 Per_3_3) $x1729)))
 (let (($x1731 (= Opp_4_3 4)))
 (=> $x1731 $x2069)))))
(assert
 (let (($x1731 (= Opp_4_3 4)))
 (let (($x1729 (= Opp_3_3 5)))
 (let (($x2069 (and (= Per_4_3 Per_3_3) $x1729)))
 (=> $x2069 $x1731)))))
(assert
 (let (($x1731 (= Opp_4_3 4)))
 (=> $x1731 (xor Home_4_3 Home_3_3))))
(assert
 (let (($x1744 (= Opp_3_4 5)))
 (let (($x2082 (and (= Per_4_4 Per_3_4) $x1744)))
 (let (($x1746 (= Opp_4_4 4)))
 (=> $x1746 $x2082)))))
(assert
 (let (($x1746 (= Opp_4_4 4)))
 (let (($x1744 (= Opp_3_4 5)))
 (let (($x2082 (and (= Per_4_4 Per_3_4) $x1744)))
 (=> $x2082 $x1746)))))
(assert
 (let (($x1746 (= Opp_4_4 4)))
 (=> $x1746 (xor Home_4_4 Home_3_4))))
(assert
 (let (($x2096 (= Opp_5_0 5)))
 (let (($x2097 (and (= Per_4_0 Per_5_0) $x2096)))
 (let (($x2094 (= Opp_4_0 6)))
 (=> $x2094 $x2097)))))
(assert
 (let (($x2094 (= Opp_4_0 6)))
 (let (($x2096 (= Opp_5_0 5)))
 (let (($x2097 (and (= Per_4_0 Per_5_0) $x2096)))
 (=> $x2097 $x2094)))))
(assert
 (let (($x2094 (= Opp_4_0 6)))
 (=> $x2094 (xor Home_4_0 Home_5_0))))
(assert
 (let (($x2111 (= Opp_5_1 5)))
 (let (($x2112 (and (= Per_4_1 Per_5_1) $x2111)))
 (let (($x2109 (= Opp_4_1 6)))
 (=> $x2109 $x2112)))))
(assert
 (let (($x2109 (= Opp_4_1 6)))
 (let (($x2111 (= Opp_5_1 5)))
 (let (($x2112 (and (= Per_4_1 Per_5_1) $x2111)))
 (=> $x2112 $x2109)))))
(assert
 (let (($x2109 (= Opp_4_1 6)))
 (=> $x2109 (xor Home_4_1 Home_5_1))))
(assert
 (let (($x2126 (= Opp_5_2 5)))
 (let (($x2127 (and (= Per_4_2 Per_5_2) $x2126)))
 (let (($x2124 (= Opp_4_2 6)))
 (=> $x2124 $x2127)))))
(assert
 (let (($x2124 (= Opp_4_2 6)))
 (let (($x2126 (= Opp_5_2 5)))
 (let (($x2127 (and (= Per_4_2 Per_5_2) $x2126)))
 (=> $x2127 $x2124)))))
(assert
 (let (($x2124 (= Opp_4_2 6)))
 (=> $x2124 (xor Home_4_2 Home_5_2))))
(assert
 (let (($x2141 (= Opp_5_3 5)))
 (let (($x2142 (and (= Per_4_3 Per_5_3) $x2141)))
 (let (($x2139 (= Opp_4_3 6)))
 (=> $x2139 $x2142)))))
(assert
 (let (($x2139 (= Opp_4_3 6)))
 (let (($x2141 (= Opp_5_3 5)))
 (let (($x2142 (and (= Per_4_3 Per_5_3) $x2141)))
 (=> $x2142 $x2139)))))
(assert
 (let (($x2139 (= Opp_4_3 6)))
 (=> $x2139 (xor Home_4_3 Home_5_3))))
(assert
 (let (($x2156 (= Opp_5_4 5)))
 (let (($x2157 (and (= Per_4_4 Per_5_4) $x2156)))
 (let (($x2154 (= Opp_4_4 6)))
 (=> $x2154 $x2157)))))
(assert
 (let (($x2154 (= Opp_4_4 6)))
 (let (($x2156 (= Opp_5_4 5)))
 (let (($x2157 (and (= Per_4_4 Per_5_4) $x2156)))
 (=> $x2157 $x2154)))))
(assert
 (let (($x2154 (= Opp_4_4 6)))
 (=> $x2154 (xor Home_4_4 Home_5_4))))
(assert
 (let (($x694 (= Opp_0_0 6)))
 (let (($x2170 (and (= Per_5_0 Per_0_0) $x694)))
 (let (($x696 (= Opp_5_0 1)))
 (=> $x696 $x2170)))))
(assert
 (let (($x696 (= Opp_5_0 1)))
 (let (($x694 (= Opp_0_0 6)))
 (let (($x2170 (and (= Per_5_0 Per_0_0) $x694)))
 (=> $x2170 $x696)))))
(assert
 (let (($x696 (= Opp_5_0 1)))
 (=> $x696 (xor Home_5_0 Home_0_0))))
(assert
 (let (($x709 (= Opp_0_1 6)))
 (let (($x2183 (and (= Per_5_1 Per_0_1) $x709)))
 (let (($x711 (= Opp_5_1 1)))
 (=> $x711 $x2183)))))
(assert
 (let (($x711 (= Opp_5_1 1)))
 (let (($x709 (= Opp_0_1 6)))
 (let (($x2183 (and (= Per_5_1 Per_0_1) $x709)))
 (=> $x2183 $x711)))))
(assert
 (let (($x711 (= Opp_5_1 1)))
 (=> $x711 (xor Home_5_1 Home_0_1))))
(assert
 (let (($x724 (= Opp_0_2 6)))
 (let (($x2196 (and (= Per_5_2 Per_0_2) $x724)))
 (let (($x726 (= Opp_5_2 1)))
 (=> $x726 $x2196)))))
(assert
 (let (($x726 (= Opp_5_2 1)))
 (let (($x724 (= Opp_0_2 6)))
 (let (($x2196 (and (= Per_5_2 Per_0_2) $x724)))
 (=> $x2196 $x726)))))
(assert
 (let (($x726 (= Opp_5_2 1)))
 (=> $x726 (xor Home_5_2 Home_0_2))))
(assert
 (let (($x739 (= Opp_0_3 6)))
 (let (($x2209 (and (= Per_5_3 Per_0_3) $x739)))
 (let (($x741 (= Opp_5_3 1)))
 (=> $x741 $x2209)))))
(assert
 (let (($x741 (= Opp_5_3 1)))
 (let (($x739 (= Opp_0_3 6)))
 (let (($x2209 (and (= Per_5_3 Per_0_3) $x739)))
 (=> $x2209 $x741)))))
(assert
 (let (($x741 (= Opp_5_3 1)))
 (=> $x741 (xor Home_5_3 Home_0_3))))
(assert
 (let (($x754 (= Opp_0_4 6)))
 (let (($x2222 (and (= Per_5_4 Per_0_4) $x754)))
 (let (($x756 (= Opp_5_4 1)))
 (=> $x756 $x2222)))))
(assert
 (let (($x756 (= Opp_5_4 1)))
 (let (($x754 (= Opp_0_4 6)))
 (let (($x2222 (and (= Per_5_4 Per_0_4) $x754)))
 (=> $x2222 $x756)))))
(assert
 (let (($x756 (= Opp_5_4 1)))
 (=> $x756 (xor Home_5_4 Home_0_4))))
(assert
 (let (($x1059 (= Opp_1_0 6)))
 (let (($x2235 (and (= Per_5_0 Per_1_0) $x1059)))
 (let (($x1061 (= Opp_5_0 2)))
 (=> $x1061 $x2235)))))
(assert
 (let (($x1061 (= Opp_5_0 2)))
 (let (($x1059 (= Opp_1_0 6)))
 (let (($x2235 (and (= Per_5_0 Per_1_0) $x1059)))
 (=> $x2235 $x1061)))))
(assert
 (let (($x1061 (= Opp_5_0 2)))
 (=> $x1061 (xor Home_5_0 Home_1_0))))
(assert
 (let (($x1074 (= Opp_1_1 6)))
 (let (($x2248 (and (= Per_5_1 Per_1_1) $x1074)))
 (let (($x1076 (= Opp_5_1 2)))
 (=> $x1076 $x2248)))))
(assert
 (let (($x1076 (= Opp_5_1 2)))
 (let (($x1074 (= Opp_1_1 6)))
 (let (($x2248 (and (= Per_5_1 Per_1_1) $x1074)))
 (=> $x2248 $x1076)))))
(assert
 (let (($x1076 (= Opp_5_1 2)))
 (=> $x1076 (xor Home_5_1 Home_1_1))))
(assert
 (let (($x1089 (= Opp_1_2 6)))
 (let (($x2261 (and (= Per_5_2 Per_1_2) $x1089)))
 (let (($x1091 (= Opp_5_2 2)))
 (=> $x1091 $x2261)))))
(assert
 (let (($x1091 (= Opp_5_2 2)))
 (let (($x1089 (= Opp_1_2 6)))
 (let (($x2261 (and (= Per_5_2 Per_1_2) $x1089)))
 (=> $x2261 $x1091)))))
(assert
 (let (($x1091 (= Opp_5_2 2)))
 (=> $x1091 (xor Home_5_2 Home_1_2))))
(assert
 (let (($x1104 (= Opp_1_3 6)))
 (let (($x2274 (and (= Per_5_3 Per_1_3) $x1104)))
 (let (($x1106 (= Opp_5_3 2)))
 (=> $x1106 $x2274)))))
(assert
 (let (($x1106 (= Opp_5_3 2)))
 (let (($x1104 (= Opp_1_3 6)))
 (let (($x2274 (and (= Per_5_3 Per_1_3) $x1104)))
 (=> $x2274 $x1106)))))
(assert
 (let (($x1106 (= Opp_5_3 2)))
 (=> $x1106 (xor Home_5_3 Home_1_3))))
(assert
 (let (($x1119 (= Opp_1_4 6)))
 (let (($x2287 (and (= Per_5_4 Per_1_4) $x1119)))
 (let (($x1121 (= Opp_5_4 2)))
 (=> $x1121 $x2287)))))
(assert
 (let (($x1121 (= Opp_5_4 2)))
 (let (($x1119 (= Opp_1_4 6)))
 (let (($x2287 (and (= Per_5_4 Per_1_4) $x1119)))
 (=> $x2287 $x1121)))))
(assert
 (let (($x1121 (= Opp_5_4 2)))
 (=> $x1121 (xor Home_5_4 Home_1_4))))
(assert
 (let (($x1414 (= Opp_2_0 6)))
 (let (($x2300 (and (= Per_5_0 Per_2_0) $x1414)))
 (let (($x1416 (= Opp_5_0 3)))
 (=> $x1416 $x2300)))))
(assert
 (let (($x1416 (= Opp_5_0 3)))
 (let (($x1414 (= Opp_2_0 6)))
 (let (($x2300 (and (= Per_5_0 Per_2_0) $x1414)))
 (=> $x2300 $x1416)))))
(assert
 (let (($x1416 (= Opp_5_0 3)))
 (=> $x1416 (xor Home_5_0 Home_2_0))))
(assert
 (let (($x1429 (= Opp_2_1 6)))
 (let (($x2313 (and (= Per_5_1 Per_2_1) $x1429)))
 (let (($x1431 (= Opp_5_1 3)))
 (=> $x1431 $x2313)))))
(assert
 (let (($x1431 (= Opp_5_1 3)))
 (let (($x1429 (= Opp_2_1 6)))
 (let (($x2313 (and (= Per_5_1 Per_2_1) $x1429)))
 (=> $x2313 $x1431)))))
(assert
 (let (($x1431 (= Opp_5_1 3)))
 (=> $x1431 (xor Home_5_1 Home_2_1))))
(assert
 (let (($x1444 (= Opp_2_2 6)))
 (let (($x2326 (and (= Per_5_2 Per_2_2) $x1444)))
 (let (($x1446 (= Opp_5_2 3)))
 (=> $x1446 $x2326)))))
(assert
 (let (($x1446 (= Opp_5_2 3)))
 (let (($x1444 (= Opp_2_2 6)))
 (let (($x2326 (and (= Per_5_2 Per_2_2) $x1444)))
 (=> $x2326 $x1446)))))
(assert
 (let (($x1446 (= Opp_5_2 3)))
 (=> $x1446 (xor Home_5_2 Home_2_2))))
(assert
 (let (($x1459 (= Opp_2_3 6)))
 (let (($x2339 (and (= Per_5_3 Per_2_3) $x1459)))
 (let (($x1461 (= Opp_5_3 3)))
 (=> $x1461 $x2339)))))
(assert
 (let (($x1461 (= Opp_5_3 3)))
 (let (($x1459 (= Opp_2_3 6)))
 (let (($x2339 (and (= Per_5_3 Per_2_3) $x1459)))
 (=> $x2339 $x1461)))))
(assert
 (let (($x1461 (= Opp_5_3 3)))
 (=> $x1461 (xor Home_5_3 Home_2_3))))
(assert
 (let (($x1474 (= Opp_2_4 6)))
 (let (($x2352 (and (= Per_5_4 Per_2_4) $x1474)))
 (let (($x1476 (= Opp_5_4 3)))
 (=> $x1476 $x2352)))))
(assert
 (let (($x1476 (= Opp_5_4 3)))
 (let (($x1474 (= Opp_2_4 6)))
 (let (($x2352 (and (= Per_5_4 Per_2_4) $x1474)))
 (=> $x2352 $x1476)))))
(assert
 (let (($x1476 (= Opp_5_4 3)))
 (=> $x1476 (xor Home_5_4 Home_2_4))))
(assert
 (let (($x1759 (= Opp_3_0 6)))
 (let (($x2365 (and (= Per_5_0 Per_3_0) $x1759)))
 (let (($x1761 (= Opp_5_0 4)))
 (=> $x1761 $x2365)))))
(assert
 (let (($x1761 (= Opp_5_0 4)))
 (let (($x1759 (= Opp_3_0 6)))
 (let (($x2365 (and (= Per_5_0 Per_3_0) $x1759)))
 (=> $x2365 $x1761)))))
(assert
 (let (($x1761 (= Opp_5_0 4)))
 (=> $x1761 (xor Home_5_0 Home_3_0))))
(assert
 (let (($x1774 (= Opp_3_1 6)))
 (let (($x2378 (and (= Per_5_1 Per_3_1) $x1774)))
 (let (($x1776 (= Opp_5_1 4)))
 (=> $x1776 $x2378)))))
(assert
 (let (($x1776 (= Opp_5_1 4)))
 (let (($x1774 (= Opp_3_1 6)))
 (let (($x2378 (and (= Per_5_1 Per_3_1) $x1774)))
 (=> $x2378 $x1776)))))
(assert
 (let (($x1776 (= Opp_5_1 4)))
 (=> $x1776 (xor Home_5_1 Home_3_1))))
(assert
 (let (($x1789 (= Opp_3_2 6)))
 (let (($x2391 (and (= Per_5_2 Per_3_2) $x1789)))
 (let (($x1791 (= Opp_5_2 4)))
 (=> $x1791 $x2391)))))
(assert
 (let (($x1791 (= Opp_5_2 4)))
 (let (($x1789 (= Opp_3_2 6)))
 (let (($x2391 (and (= Per_5_2 Per_3_2) $x1789)))
 (=> $x2391 $x1791)))))
(assert
 (let (($x1791 (= Opp_5_2 4)))
 (=> $x1791 (xor Home_5_2 Home_3_2))))
(assert
 (let (($x1804 (= Opp_3_3 6)))
 (let (($x2404 (and (= Per_5_3 Per_3_3) $x1804)))
 (let (($x1806 (= Opp_5_3 4)))
 (=> $x1806 $x2404)))))
(assert
 (let (($x1806 (= Opp_5_3 4)))
 (let (($x1804 (= Opp_3_3 6)))
 (let (($x2404 (and (= Per_5_3 Per_3_3) $x1804)))
 (=> $x2404 $x1806)))))
(assert
 (let (($x1806 (= Opp_5_3 4)))
 (=> $x1806 (xor Home_5_3 Home_3_3))))
(assert
 (let (($x1819 (= Opp_3_4 6)))
 (let (($x2417 (and (= Per_5_4 Per_3_4) $x1819)))
 (let (($x1821 (= Opp_5_4 4)))
 (=> $x1821 $x2417)))))
(assert
 (let (($x1821 (= Opp_5_4 4)))
 (let (($x1819 (= Opp_3_4 6)))
 (let (($x2417 (and (= Per_5_4 Per_3_4) $x1819)))
 (=> $x2417 $x1821)))))
(assert
 (let (($x1821 (= Opp_5_4 4)))
 (=> $x1821 (xor Home_5_4 Home_3_4))))
(assert
 (let (($x2094 (= Opp_4_0 6)))
 (let (($x2430 (and (= Per_5_0 Per_4_0) $x2094)))
 (let (($x2096 (= Opp_5_0 5)))
 (=> $x2096 $x2430)))))
(assert
 (let (($x2096 (= Opp_5_0 5)))
 (let (($x2094 (= Opp_4_0 6)))
 (let (($x2430 (and (= Per_5_0 Per_4_0) $x2094)))
 (=> $x2430 $x2096)))))
(assert
 (let (($x2096 (= Opp_5_0 5)))
 (=> $x2096 (xor Home_5_0 Home_4_0))))
(assert
 (let (($x2109 (= Opp_4_1 6)))
 (let (($x2443 (and (= Per_5_1 Per_4_1) $x2109)))
 (let (($x2111 (= Opp_5_1 5)))
 (=> $x2111 $x2443)))))
(assert
 (let (($x2111 (= Opp_5_1 5)))
 (let (($x2109 (= Opp_4_1 6)))
 (let (($x2443 (and (= Per_5_1 Per_4_1) $x2109)))
 (=> $x2443 $x2111)))))
(assert
 (let (($x2111 (= Opp_5_1 5)))
 (=> $x2111 (xor Home_5_1 Home_4_1))))
(assert
 (let (($x2124 (= Opp_4_2 6)))
 (let (($x2456 (and (= Per_5_2 Per_4_2) $x2124)))
 (let (($x2126 (= Opp_5_2 5)))
 (=> $x2126 $x2456)))))
(assert
 (let (($x2126 (= Opp_5_2 5)))
 (let (($x2124 (= Opp_4_2 6)))
 (let (($x2456 (and (= Per_5_2 Per_4_2) $x2124)))
 (=> $x2456 $x2126)))))
(assert
 (let (($x2126 (= Opp_5_2 5)))
 (=> $x2126 (xor Home_5_2 Home_4_2))))
(assert
 (let (($x2139 (= Opp_4_3 6)))
 (let (($x2469 (and (= Per_5_3 Per_4_3) $x2139)))
 (let (($x2141 (= Opp_5_3 5)))
 (=> $x2141 $x2469)))))
(assert
 (let (($x2141 (= Opp_5_3 5)))
 (let (($x2139 (= Opp_4_3 6)))
 (let (($x2469 (and (= Per_5_3 Per_4_3) $x2139)))
 (=> $x2469 $x2141)))))
(assert
 (let (($x2141 (= Opp_5_3 5)))
 (=> $x2141 (xor Home_5_3 Home_4_3))))
(assert
 (let (($x2154 (= Opp_4_4 6)))
 (let (($x2482 (and (= Per_5_4 Per_4_4) $x2154)))
 (let (($x2156 (= Opp_5_4 5)))
 (=> $x2156 $x2482)))))
(assert
 (let (($x2156 (= Opp_5_4 5)))
 (let (($x2154 (= Opp_4_4 6)))
 (let (($x2482 (and (= Per_5_4 Per_4_4) $x2154)))
 (=> $x2482 $x2156)))))
(assert
 (let (($x2156 (= Opp_5_4 5)))
 (=> $x2156 (xor Home_5_4 Home_4_4))))
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
 (let (($x2511 (= Per_5_0 1)))
 (let ((?x2512 (ite $x2511 1 0)))
 (let ((?x2510 (ite (= Per_4_0 1) 1 0)))
 (let ((?x2508 (ite (= Per_3_0 1) 1 0)))
 (let ((?x2506 (ite (= Per_2_0 1) 1 0)))
 (let ((?x2504 (ite (= Per_1_0 1) 1 0)))
 (let (($x2500 (= Per_0_0 1)))
 (let ((?x2502 (ite $x2500 1 0)))
 (= (+ ?x2502 ?x2504 ?x2506 ?x2508 ?x2510 ?x2512) 2))))))))))
(assert
 (let ((?x2526 (ite (= Per_5_0 2) 1 0)))
 (let (($x2523 (= Per_4_0 2)))
 (let ((?x2524 (ite $x2523 1 0)))
 (let ((?x2522 (ite (= Per_3_0 2) 1 0)))
 (let ((?x2520 (ite (= Per_2_0 2) 1 0)))
 (let (($x2517 (= Per_1_0 2)))
 (let ((?x2518 (ite $x2517 1 0)))
 (let ((?x2516 (ite (= Per_0_0 2) 1 0)))
 (= (+ ?x2516 ?x2518 ?x2520 ?x2522 ?x2524 ?x2526) 2))))))))))
(assert
 (let ((?x2540 (ite (= Per_5_0 3) 1 0)))
 (let ((?x2538 (ite (= Per_4_0 3) 1 0)))
 (let (($x2535 (= Per_3_0 3)))
 (let ((?x2536 (ite $x2535 1 0)))
 (let (($x2533 (= Per_2_0 3)))
 (let ((?x2534 (ite $x2533 1 0)))
 (let ((?x2532 (ite (= Per_1_0 3) 1 0)))
 (let ((?x2530 (ite (= Per_0_0 3) 1 0)))
 (= (+ ?x2530 ?x2532 ?x2534 ?x2536 ?x2538 ?x2540) 2))))))))))
(assert
 (let ((?x2554 (ite (= Per_5_1 1) 1 0)))
 (let ((?x2552 (ite (= Per_4_1 1) 1 0)))
 (let ((?x2550 (ite (= Per_3_1 1) 1 0)))
 (let ((?x2548 (ite (= Per_2_1 1) 1 0)))
 (let ((?x2546 (ite (= Per_1_1 1) 1 0)))
 (let ((?x2544 (ite (= Per_0_1 1) 1 0)))
 (= (+ ?x2544 ?x2546 ?x2548 ?x2550 ?x2552 ?x2554) 2))))))))
(assert
 (let ((?x2568 (ite (= Per_5_1 2) 1 0)))
 (let ((?x2566 (ite (= Per_4_1 2) 1 0)))
 (let ((?x2564 (ite (= Per_3_1 2) 1 0)))
 (let ((?x2562 (ite (= Per_2_1 2) 1 0)))
 (let ((?x2560 (ite (= Per_1_1 2) 1 0)))
 (let ((?x2558 (ite (= Per_0_1 2) 1 0)))
 (= (+ ?x2558 ?x2560 ?x2562 ?x2564 ?x2566 ?x2568) 2))))))))
(assert
 (let ((?x2582 (ite (= Per_5_1 3) 1 0)))
 (let ((?x2580 (ite (= Per_4_1 3) 1 0)))
 (let ((?x2578 (ite (= Per_3_1 3) 1 0)))
 (let ((?x2576 (ite (= Per_2_1 3) 1 0)))
 (let ((?x2574 (ite (= Per_1_1 3) 1 0)))
 (let ((?x2572 (ite (= Per_0_1 3) 1 0)))
 (= (+ ?x2572 ?x2574 ?x2576 ?x2578 ?x2580 ?x2582) 2))))))))
(assert
 (let ((?x2596 (ite (= Per_5_2 1) 1 0)))
 (let ((?x2594 (ite (= Per_4_2 1) 1 0)))
 (let ((?x2592 (ite (= Per_3_2 1) 1 0)))
 (let ((?x2590 (ite (= Per_2_2 1) 1 0)))
 (let ((?x2588 (ite (= Per_1_2 1) 1 0)))
 (let ((?x2586 (ite (= Per_0_2 1) 1 0)))
 (= (+ ?x2586 ?x2588 ?x2590 ?x2592 ?x2594 ?x2596) 2))))))))
(assert
 (let ((?x2610 (ite (= Per_5_2 2) 1 0)))
 (let ((?x2608 (ite (= Per_4_2 2) 1 0)))
 (let ((?x2606 (ite (= Per_3_2 2) 1 0)))
 (let ((?x2604 (ite (= Per_2_2 2) 1 0)))
 (let ((?x2602 (ite (= Per_1_2 2) 1 0)))
 (let ((?x2600 (ite (= Per_0_2 2) 1 0)))
 (= (+ ?x2600 ?x2602 ?x2604 ?x2606 ?x2608 ?x2610) 2))))))))
(assert
 (let ((?x2624 (ite (= Per_5_2 3) 1 0)))
 (let ((?x2622 (ite (= Per_4_2 3) 1 0)))
 (let ((?x2620 (ite (= Per_3_2 3) 1 0)))
 (let ((?x2618 (ite (= Per_2_2 3) 1 0)))
 (let ((?x2616 (ite (= Per_1_2 3) 1 0)))
 (let ((?x2614 (ite (= Per_0_2 3) 1 0)))
 (= (+ ?x2614 ?x2616 ?x2618 ?x2620 ?x2622 ?x2624) 2))))))))
(assert
 (let ((?x2638 (ite (= Per_5_3 1) 1 0)))
 (let ((?x2636 (ite (= Per_4_3 1) 1 0)))
 (let ((?x2634 (ite (= Per_3_3 1) 1 0)))
 (let ((?x2632 (ite (= Per_2_3 1) 1 0)))
 (let ((?x2630 (ite (= Per_1_3 1) 1 0)))
 (let ((?x2628 (ite (= Per_0_3 1) 1 0)))
 (= (+ ?x2628 ?x2630 ?x2632 ?x2634 ?x2636 ?x2638) 2))))))))
(assert
 (let ((?x2652 (ite (= Per_5_3 2) 1 0)))
 (let ((?x2650 (ite (= Per_4_3 2) 1 0)))
 (let ((?x2648 (ite (= Per_3_3 2) 1 0)))
 (let ((?x2646 (ite (= Per_2_3 2) 1 0)))
 (let ((?x2644 (ite (= Per_1_3 2) 1 0)))
 (let ((?x2642 (ite (= Per_0_3 2) 1 0)))
 (= (+ ?x2642 ?x2644 ?x2646 ?x2648 ?x2650 ?x2652) 2))))))))
(assert
 (let ((?x2666 (ite (= Per_5_3 3) 1 0)))
 (let ((?x2664 (ite (= Per_4_3 3) 1 0)))
 (let ((?x2662 (ite (= Per_3_3 3) 1 0)))
 (let ((?x2660 (ite (= Per_2_3 3) 1 0)))
 (let ((?x2658 (ite (= Per_1_3 3) 1 0)))
 (let ((?x2656 (ite (= Per_0_3 3) 1 0)))
 (= (+ ?x2656 ?x2658 ?x2660 ?x2662 ?x2664 ?x2666) 2))))))))
(assert
 (let ((?x2680 (ite (= Per_5_4 1) 1 0)))
 (let ((?x2678 (ite (= Per_4_4 1) 1 0)))
 (let ((?x2676 (ite (= Per_3_4 1) 1 0)))
 (let ((?x2674 (ite (= Per_2_4 1) 1 0)))
 (let ((?x2672 (ite (= Per_1_4 1) 1 0)))
 (let ((?x2670 (ite (= Per_0_4 1) 1 0)))
 (= (+ ?x2670 ?x2672 ?x2674 ?x2676 ?x2678 ?x2680) 2))))))))
(assert
 (let ((?x2694 (ite (= Per_5_4 2) 1 0)))
 (let ((?x2692 (ite (= Per_4_4 2) 1 0)))
 (let ((?x2690 (ite (= Per_3_4 2) 1 0)))
 (let ((?x2688 (ite (= Per_2_4 2) 1 0)))
 (let ((?x2686 (ite (= Per_1_4 2) 1 0)))
 (let ((?x2684 (ite (= Per_0_4 2) 1 0)))
 (= (+ ?x2684 ?x2686 ?x2688 ?x2690 ?x2692 ?x2694) 2))))))))
(assert
 (let ((?x2708 (ite (= Per_5_4 3) 1 0)))
 (let ((?x2706 (ite (= Per_4_4 3) 1 0)))
 (let ((?x2704 (ite (= Per_3_4 3) 1 0)))
 (let ((?x2702 (ite (= Per_2_4 3) 1 0)))
 (let ((?x2700 (ite (= Per_1_4 3) 1 0)))
 (let ((?x2698 (ite (= Per_0_4 3) 1 0)))
 (= (+ ?x2698 ?x2700 ?x2702 ?x2704 ?x2706 ?x2708) 2))))))))
(assert
 (let ((?x2670 (ite (= Per_0_4 1) 1 0)))
 (let ((?x2628 (ite (= Per_0_3 1) 1 0)))
 (let ((?x2586 (ite (= Per_0_2 1) 1 0)))
 (let ((?x2544 (ite (= Per_0_1 1) 1 0)))
 (let (($x2500 (= Per_0_0 1)))
 (let ((?x2502 (ite $x2500 1 0)))
 (<= (+ ?x2502 ?x2544 ?x2586 ?x2628 ?x2670) 2))))))))
(assert
 (let ((?x2684 (ite (= Per_0_4 2) 1 0)))
 (let ((?x2642 (ite (= Per_0_3 2) 1 0)))
 (let ((?x2600 (ite (= Per_0_2 2) 1 0)))
 (let ((?x2558 (ite (= Per_0_1 2) 1 0)))
 (let ((?x2516 (ite (= Per_0_0 2) 1 0)))
 (<= (+ ?x2516 ?x2558 ?x2600 ?x2642 ?x2684) 2)))))))
(assert
 (let ((?x2698 (ite (= Per_0_4 3) 1 0)))
 (let ((?x2656 (ite (= Per_0_3 3) 1 0)))
 (let ((?x2614 (ite (= Per_0_2 3) 1 0)))
 (let ((?x2572 (ite (= Per_0_1 3) 1 0)))
 (let ((?x2530 (ite (= Per_0_0 3) 1 0)))
 (<= (+ ?x2530 ?x2572 ?x2614 ?x2656 ?x2698) 2)))))))
(assert
 (let ((?x2672 (ite (= Per_1_4 1) 1 0)))
 (let ((?x2630 (ite (= Per_1_3 1) 1 0)))
 (let ((?x2588 (ite (= Per_1_2 1) 1 0)))
 (let ((?x2546 (ite (= Per_1_1 1) 1 0)))
 (let ((?x2504 (ite (= Per_1_0 1) 1 0)))
 (<= (+ ?x2504 ?x2546 ?x2588 ?x2630 ?x2672) 2)))))))
(assert
 (let ((?x2686 (ite (= Per_1_4 2) 1 0)))
 (let ((?x2644 (ite (= Per_1_3 2) 1 0)))
 (let ((?x2602 (ite (= Per_1_2 2) 1 0)))
 (let ((?x2560 (ite (= Per_1_1 2) 1 0)))
 (let (($x2517 (= Per_1_0 2)))
 (let ((?x2518 (ite $x2517 1 0)))
 (<= (+ ?x2518 ?x2560 ?x2602 ?x2644 ?x2686) 2))))))))
(assert
 (let ((?x2700 (ite (= Per_1_4 3) 1 0)))
 (let ((?x2658 (ite (= Per_1_3 3) 1 0)))
 (let ((?x2616 (ite (= Per_1_2 3) 1 0)))
 (let ((?x2574 (ite (= Per_1_1 3) 1 0)))
 (let ((?x2532 (ite (= Per_1_0 3) 1 0)))
 (<= (+ ?x2532 ?x2574 ?x2616 ?x2658 ?x2700) 2)))))))
(assert
 (let ((?x2674 (ite (= Per_2_4 1) 1 0)))
 (let ((?x2632 (ite (= Per_2_3 1) 1 0)))
 (let ((?x2590 (ite (= Per_2_2 1) 1 0)))
 (let ((?x2548 (ite (= Per_2_1 1) 1 0)))
 (let ((?x2506 (ite (= Per_2_0 1) 1 0)))
 (<= (+ ?x2506 ?x2548 ?x2590 ?x2632 ?x2674) 2)))))))
(assert
 (let ((?x2688 (ite (= Per_2_4 2) 1 0)))
 (let ((?x2646 (ite (= Per_2_3 2) 1 0)))
 (let ((?x2604 (ite (= Per_2_2 2) 1 0)))
 (let ((?x2562 (ite (= Per_2_1 2) 1 0)))
 (let ((?x2520 (ite (= Per_2_0 2) 1 0)))
 (<= (+ ?x2520 ?x2562 ?x2604 ?x2646 ?x2688) 2)))))))
(assert
 (let ((?x2702 (ite (= Per_2_4 3) 1 0)))
 (let ((?x2660 (ite (= Per_2_3 3) 1 0)))
 (let ((?x2618 (ite (= Per_2_2 3) 1 0)))
 (let ((?x2576 (ite (= Per_2_1 3) 1 0)))
 (let (($x2533 (= Per_2_0 3)))
 (let ((?x2534 (ite $x2533 1 0)))
 (<= (+ ?x2534 ?x2576 ?x2618 ?x2660 ?x2702) 2))))))))
(assert
 (let ((?x2676 (ite (= Per_3_4 1) 1 0)))
 (let ((?x2634 (ite (= Per_3_3 1) 1 0)))
 (let ((?x2592 (ite (= Per_3_2 1) 1 0)))
 (let ((?x2550 (ite (= Per_3_1 1) 1 0)))
 (let ((?x2508 (ite (= Per_3_0 1) 1 0)))
 (<= (+ ?x2508 ?x2550 ?x2592 ?x2634 ?x2676) 2)))))))
(assert
 (let ((?x2690 (ite (= Per_3_4 2) 1 0)))
 (let ((?x2648 (ite (= Per_3_3 2) 1 0)))
 (let ((?x2606 (ite (= Per_3_2 2) 1 0)))
 (let ((?x2564 (ite (= Per_3_1 2) 1 0)))
 (let ((?x2522 (ite (= Per_3_0 2) 1 0)))
 (<= (+ ?x2522 ?x2564 ?x2606 ?x2648 ?x2690) 2)))))))
(assert
 (let ((?x2704 (ite (= Per_3_4 3) 1 0)))
 (let ((?x2662 (ite (= Per_3_3 3) 1 0)))
 (let ((?x2620 (ite (= Per_3_2 3) 1 0)))
 (let ((?x2578 (ite (= Per_3_1 3) 1 0)))
 (let (($x2535 (= Per_3_0 3)))
 (let ((?x2536 (ite $x2535 1 0)))
 (<= (+ ?x2536 ?x2578 ?x2620 ?x2662 ?x2704) 2))))))))
(assert
 (let ((?x2678 (ite (= Per_4_4 1) 1 0)))
 (let ((?x2636 (ite (= Per_4_3 1) 1 0)))
 (let ((?x2594 (ite (= Per_4_2 1) 1 0)))
 (let ((?x2552 (ite (= Per_4_1 1) 1 0)))
 (let ((?x2510 (ite (= Per_4_0 1) 1 0)))
 (<= (+ ?x2510 ?x2552 ?x2594 ?x2636 ?x2678) 2)))))))
(assert
 (let ((?x2692 (ite (= Per_4_4 2) 1 0)))
 (let ((?x2650 (ite (= Per_4_3 2) 1 0)))
 (let ((?x2608 (ite (= Per_4_2 2) 1 0)))
 (let ((?x2566 (ite (= Per_4_1 2) 1 0)))
 (let (($x2523 (= Per_4_0 2)))
 (let ((?x2524 (ite $x2523 1 0)))
 (<= (+ ?x2524 ?x2566 ?x2608 ?x2650 ?x2692) 2))))))))
(assert
 (let ((?x2706 (ite (= Per_4_4 3) 1 0)))
 (let ((?x2664 (ite (= Per_4_3 3) 1 0)))
 (let ((?x2622 (ite (= Per_4_2 3) 1 0)))
 (let ((?x2580 (ite (= Per_4_1 3) 1 0)))
 (let ((?x2538 (ite (= Per_4_0 3) 1 0)))
 (<= (+ ?x2538 ?x2580 ?x2622 ?x2664 ?x2706) 2)))))))
(assert
 (let ((?x2680 (ite (= Per_5_4 1) 1 0)))
 (let ((?x2638 (ite (= Per_5_3 1) 1 0)))
 (let ((?x2596 (ite (= Per_5_2 1) 1 0)))
 (let ((?x2554 (ite (= Per_5_1 1) 1 0)))
 (let (($x2511 (= Per_5_0 1)))
 (let ((?x2512 (ite $x2511 1 0)))
 (<= (+ ?x2512 ?x2554 ?x2596 ?x2638 ?x2680) 2))))))))
(assert
 (let ((?x2694 (ite (= Per_5_4 2) 1 0)))
 (let ((?x2652 (ite (= Per_5_3 2) 1 0)))
 (let ((?x2610 (ite (= Per_5_2 2) 1 0)))
 (let ((?x2568 (ite (= Per_5_1 2) 1 0)))
 (let ((?x2526 (ite (= Per_5_0 2) 1 0)))
 (<= (+ ?x2526 ?x2568 ?x2610 ?x2652 ?x2694) 2)))))))
(assert
 (let ((?x2708 (ite (= Per_5_4 3) 1 0)))
 (let ((?x2666 (ite (= Per_5_3 3) 1 0)))
 (let ((?x2624 (ite (= Per_5_2 3) 1 0)))
 (let ((?x2582 (ite (= Per_5_1 3) 1 0)))
 (let ((?x2540 (ite (= Per_5_0 3) 1 0)))
 (<= (+ ?x2540 ?x2582 ?x2624 ?x2666 ?x2708) 2)))))))
(assert
 (let ((?x2751 (ite Home_0_4 1 0)))
 (let ((?x2750 (ite Home_0_3 1 0)))
 (let ((?x2749 (ite Home_0_2 1 0)))
 (let ((?x2748 (ite Home_0_1 1 0)))
 (let ((?x2747 (ite Home_0_0 1 0)))
 (let ((?x2752 (+ ?x2747 ?x2748 ?x2749 ?x2750 ?x2751)))
 (= ?x2752 (+ 2 (ite High_0 1 0))))))))))
(assert
 (let ((?x2757 (ite Home_1_4 1 0)))
 (let ((?x2756 (ite Home_1_3 1 0)))
 (let ((?x2755 (ite Home_1_2 1 0)))
 (let ((?x2754 (ite Home_1_1 1 0)))
 (let ((?x2753 (ite Home_1_0 1 0)))
 (let ((?x2758 (+ ?x2753 ?x2754 ?x2755 ?x2756 ?x2757)))
 (= ?x2758 (+ 2 (ite High_1 1 0))))))))))
(assert
 (let ((?x2763 (ite Home_2_4 1 0)))
 (let ((?x2762 (ite Home_2_3 1 0)))
 (let ((?x2761 (ite Home_2_2 1 0)))
 (let ((?x2760 (ite Home_2_1 1 0)))
 (let ((?x2759 (ite Home_2_0 1 0)))
 (let ((?x2764 (+ ?x2759 ?x2760 ?x2761 ?x2762 ?x2763)))
 (= ?x2764 (+ 2 (ite High_2 1 0))))))))))
(assert
 (let ((?x2769 (ite Home_3_4 1 0)))
 (let ((?x2768 (ite Home_3_3 1 0)))
 (let ((?x2767 (ite Home_3_2 1 0)))
 (let ((?x2766 (ite Home_3_1 1 0)))
 (let ((?x2765 (ite Home_3_0 1 0)))
 (let ((?x2770 (+ ?x2765 ?x2766 ?x2767 ?x2768 ?x2769)))
 (= ?x2770 (+ 2 (ite High_3 1 0))))))))))
(assert
 (let ((?x2775 (ite Home_4_4 1 0)))
 (let ((?x2774 (ite Home_4_3 1 0)))
 (let ((?x2773 (ite Home_4_2 1 0)))
 (let ((?x2772 (ite Home_4_1 1 0)))
 (let ((?x2771 (ite Home_4_0 1 0)))
 (let ((?x2776 (+ ?x2771 ?x2772 ?x2773 ?x2774 ?x2775)))
 (= ?x2776 (+ 2 (ite High_4 1 0))))))))))
(assert
 (let ((?x2781 (ite Home_5_4 1 0)))
 (let ((?x2780 (ite Home_5_3 1 0)))
 (let ((?x2779 (ite Home_5_2 1 0)))
 (let ((?x2778 (ite Home_5_1 1 0)))
 (let ((?x2777 (ite Home_5_0 1 0)))
 (let ((?x2782 (+ ?x2777 ?x2778 ?x2779 ?x2780 ?x2781)))
 (= ?x2782 (+ 2 (ite High_5 1 0))))))))))
(assert
 (let ((?x2814 (ite High_5 1 0)))
 (let ((?x2808 (ite High_4 1 0)))
 (let ((?x2802 (ite High_3 1 0)))
 (let ((?x2796 (ite High_2 1 0)))
 (let ((?x2790 (ite High_1 1 0)))
 (let ((?x2783 (ite High_0 1 0)))
 (= (+ ?x2783 ?x2790 ?x2796 ?x2802 ?x2808 ?x2814) 3))))))))
(assert
 (= Home_0_0 true))
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
 (> Opp_0_0 Opp_0_1))
(assert
 (> Opp_0_1 Opp_0_2))
(assert
 (> Opp_0_2 Opp_0_3))
(assert
 (> Opp_0_3 Opp_0_4))
(check-sat)
(get-model)
