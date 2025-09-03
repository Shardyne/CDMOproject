(set-logic QF_LIA)
(set-option :produce-models true)
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
(assert
 (let (($x44 (<= Per_0_0 2)))
 (let (($x42 (>= Per_0_0 1)))
 (and $x42 $x44))))
(assert
 (let (($x65 (<= Opp_0_0 4)))
 (let (($x63 (>= Opp_0_0 1)))
 (and $x63 $x65))))
(assert
 (and (distinct Opp_0_0 1) true))
(assert
 (let (($x71 (<= Per_0_1 2)))
 (let (($x70 (>= Per_0_1 1)))
 (and $x70 $x71))))
(assert
 (let (($x74 (<= Opp_0_1 4)))
 (let (($x73 (>= Opp_0_1 1)))
 (and $x73 $x74))))
(assert
 (and (distinct Opp_0_1 1) true))
(assert
 (let (($x80 (<= Per_0_2 2)))
 (let (($x79 (>= Per_0_2 1)))
 (and $x79 $x80))))
(assert
 (let (($x83 (<= Opp_0_2 4)))
 (let (($x82 (>= Opp_0_2 1)))
 (and $x82 $x83))))
(assert
 (and (distinct Opp_0_2 1) true))
(assert
 (let (($x89 (<= Per_1_0 2)))
 (let (($x88 (>= Per_1_0 1)))
 (and $x88 $x89))))
(assert
 (let (($x92 (<= Opp_1_0 4)))
 (let (($x91 (>= Opp_1_0 1)))
 (and $x91 $x92))))
(assert
 (and (distinct Opp_1_0 2) true))
(assert
 (let (($x98 (<= Per_1_1 2)))
 (let (($x97 (>= Per_1_1 1)))
 (and $x97 $x98))))
(assert
 (let (($x101 (<= Opp_1_1 4)))
 (let (($x100 (>= Opp_1_1 1)))
 (and $x100 $x101))))
(assert
 (and (distinct Opp_1_1 2) true))
(assert
 (let (($x107 (<= Per_1_2 2)))
 (let (($x106 (>= Per_1_2 1)))
 (and $x106 $x107))))
(assert
 (let (($x110 (<= Opp_1_2 4)))
 (let (($x109 (>= Opp_1_2 1)))
 (and $x109 $x110))))
(assert
 (and (distinct Opp_1_2 2) true))
(assert
 (let (($x116 (<= Per_2_0 2)))
 (let (($x115 (>= Per_2_0 1)))
 (and $x115 $x116))))
(assert
 (let (($x119 (<= Opp_2_0 4)))
 (let (($x118 (>= Opp_2_0 1)))
 (and $x118 $x119))))
(assert
 (and (distinct Opp_2_0 3) true))
(assert
 (let (($x126 (<= Per_2_1 2)))
 (let (($x125 (>= Per_2_1 1)))
 (and $x125 $x126))))
(assert
 (let (($x129 (<= Opp_2_1 4)))
 (let (($x128 (>= Opp_2_1 1)))
 (and $x128 $x129))))
(assert
 (and (distinct Opp_2_1 3) true))
(assert
 (let (($x135 (<= Per_2_2 2)))
 (let (($x134 (>= Per_2_2 1)))
 (and $x134 $x135))))
(assert
 (let (($x138 (<= Opp_2_2 4)))
 (let (($x137 (>= Opp_2_2 1)))
 (and $x137 $x138))))
(assert
 (and (distinct Opp_2_2 3) true))
(assert
 (let (($x144 (<= Per_3_0 2)))
 (let (($x143 (>= Per_3_0 1)))
 (and $x143 $x144))))
(assert
 (let (($x147 (<= Opp_3_0 4)))
 (let (($x146 (>= Opp_3_0 1)))
 (and $x146 $x147))))
(assert
 (and (distinct Opp_3_0 4) true))
(assert
 (let (($x153 (<= Per_3_1 2)))
 (let (($x152 (>= Per_3_1 1)))
 (and $x152 $x153))))
(assert
 (let (($x156 (<= Opp_3_1 4)))
 (let (($x155 (>= Opp_3_1 1)))
 (and $x155 $x156))))
(assert
 (and (distinct Opp_3_1 4) true))
(assert
 (let (($x162 (<= Per_3_2 2)))
 (let (($x161 (>= Per_3_2 1)))
 (and $x161 $x162))))
(assert
 (let (($x165 (<= Opp_3_2 4)))
 (let (($x164 (>= Opp_3_2 1)))
 (and $x164 $x165))))
(assert
 (and (distinct Opp_3_2 4) true))
(assert
 (let (($x172 (= Opp_1_0 1)))
 (let (($x173 (and (= Per_0_0 Per_1_0) $x172)))
 (let (($x170 (= Opp_0_0 2)))
 (=> $x170 $x173)))))
(assert
 (let (($x170 (= Opp_0_0 2)))
 (let (($x172 (= Opp_1_0 1)))
 (let (($x173 (and (= Per_0_0 Per_1_0) $x172)))
 (=> $x173 $x170)))))
(assert
 (let (($x170 (= Opp_0_0 2)))
 (=> $x170 (xor Home_0_0 Home_1_0))))
(assert
 (let (($x187 (= Opp_1_1 1)))
 (let (($x188 (and (= Per_0_1 Per_1_1) $x187)))
 (let (($x185 (= Opp_0_1 2)))
 (=> $x185 $x188)))))
(assert
 (let (($x185 (= Opp_0_1 2)))
 (let (($x187 (= Opp_1_1 1)))
 (let (($x188 (and (= Per_0_1 Per_1_1) $x187)))
 (=> $x188 $x185)))))
(assert
 (let (($x185 (= Opp_0_1 2)))
 (=> $x185 (xor Home_0_1 Home_1_1))))
(assert
 (let (($x202 (= Opp_1_2 1)))
 (let (($x203 (and (= Per_0_2 Per_1_2) $x202)))
 (let (($x200 (= Opp_0_2 2)))
 (=> $x200 $x203)))))
(assert
 (let (($x200 (= Opp_0_2 2)))
 (let (($x202 (= Opp_1_2 1)))
 (let (($x203 (and (= Per_0_2 Per_1_2) $x202)))
 (=> $x203 $x200)))))
(assert
 (let (($x200 (= Opp_0_2 2)))
 (=> $x200 (xor Home_0_2 Home_1_2))))
(assert
 (let (($x217 (= Opp_2_0 1)))
 (let (($x218 (and (= Per_0_0 Per_2_0) $x217)))
 (let (($x215 (= Opp_0_0 3)))
 (=> $x215 $x218)))))
(assert
 (let (($x215 (= Opp_0_0 3)))
 (let (($x217 (= Opp_2_0 1)))
 (let (($x218 (and (= Per_0_0 Per_2_0) $x217)))
 (=> $x218 $x215)))))
(assert
 (let (($x215 (= Opp_0_0 3)))
 (=> $x215 (xor Home_0_0 Home_2_0))))
(assert
 (let (($x232 (= Opp_2_1 1)))
 (let (($x233 (and (= Per_0_1 Per_2_1) $x232)))
 (let (($x230 (= Opp_0_1 3)))
 (=> $x230 $x233)))))
(assert
 (let (($x230 (= Opp_0_1 3)))
 (let (($x232 (= Opp_2_1 1)))
 (let (($x233 (and (= Per_0_1 Per_2_1) $x232)))
 (=> $x233 $x230)))))
(assert
 (let (($x230 (= Opp_0_1 3)))
 (=> $x230 (xor Home_0_1 Home_2_1))))
(assert
 (let (($x247 (= Opp_2_2 1)))
 (let (($x248 (and (= Per_0_2 Per_2_2) $x247)))
 (let (($x245 (= Opp_0_2 3)))
 (=> $x245 $x248)))))
(assert
 (let (($x245 (= Opp_0_2 3)))
 (let (($x247 (= Opp_2_2 1)))
 (let (($x248 (and (= Per_0_2 Per_2_2) $x247)))
 (=> $x248 $x245)))))
(assert
 (let (($x245 (= Opp_0_2 3)))
 (=> $x245 (xor Home_0_2 Home_2_2))))
(assert
 (let (($x262 (= Opp_3_0 1)))
 (let (($x263 (and (= Per_0_0 Per_3_0) $x262)))
 (let (($x260 (= Opp_0_0 4)))
 (=> $x260 $x263)))))
(assert
 (let (($x260 (= Opp_0_0 4)))
 (let (($x262 (= Opp_3_0 1)))
 (let (($x263 (and (= Per_0_0 Per_3_0) $x262)))
 (=> $x263 $x260)))))
(assert
 (let (($x260 (= Opp_0_0 4)))
 (=> $x260 (xor Home_0_0 Home_3_0))))
(assert
 (let (($x277 (= Opp_3_1 1)))
 (let (($x278 (and (= Per_0_1 Per_3_1) $x277)))
 (let (($x275 (= Opp_0_1 4)))
 (=> $x275 $x278)))))
(assert
 (let (($x275 (= Opp_0_1 4)))
 (let (($x277 (= Opp_3_1 1)))
 (let (($x278 (and (= Per_0_1 Per_3_1) $x277)))
 (=> $x278 $x275)))))
(assert
 (let (($x275 (= Opp_0_1 4)))
 (=> $x275 (xor Home_0_1 Home_3_1))))
(assert
 (let (($x292 (= Opp_3_2 1)))
 (let (($x293 (and (= Per_0_2 Per_3_2) $x292)))
 (let (($x290 (= Opp_0_2 4)))
 (=> $x290 $x293)))))
(assert
 (let (($x290 (= Opp_0_2 4)))
 (let (($x292 (= Opp_3_2 1)))
 (let (($x293 (and (= Per_0_2 Per_3_2) $x292)))
 (=> $x293 $x290)))))
(assert
 (let (($x290 (= Opp_0_2 4)))
 (=> $x290 (xor Home_0_2 Home_3_2))))
(assert
 (let (($x170 (= Opp_0_0 2)))
 (let (($x306 (and (= Per_1_0 Per_0_0) $x170)))
 (let (($x172 (= Opp_1_0 1)))
 (=> $x172 $x306)))))
(assert
 (let (($x172 (= Opp_1_0 1)))
 (let (($x170 (= Opp_0_0 2)))
 (let (($x306 (and (= Per_1_0 Per_0_0) $x170)))
 (=> $x306 $x172)))))
(assert
 (let (($x172 (= Opp_1_0 1)))
 (=> $x172 (xor Home_1_0 Home_0_0))))
(assert
 (let (($x185 (= Opp_0_1 2)))
 (let (($x319 (and (= Per_1_1 Per_0_1) $x185)))
 (let (($x187 (= Opp_1_1 1)))
 (=> $x187 $x319)))))
(assert
 (let (($x187 (= Opp_1_1 1)))
 (let (($x185 (= Opp_0_1 2)))
 (let (($x319 (and (= Per_1_1 Per_0_1) $x185)))
 (=> $x319 $x187)))))
(assert
 (let (($x187 (= Opp_1_1 1)))
 (=> $x187 (xor Home_1_1 Home_0_1))))
(assert
 (let (($x200 (= Opp_0_2 2)))
 (let (($x332 (and (= Per_1_2 Per_0_2) $x200)))
 (let (($x202 (= Opp_1_2 1)))
 (=> $x202 $x332)))))
(assert
 (let (($x202 (= Opp_1_2 1)))
 (let (($x200 (= Opp_0_2 2)))
 (let (($x332 (and (= Per_1_2 Per_0_2) $x200)))
 (=> $x332 $x202)))))
(assert
 (let (($x202 (= Opp_1_2 1)))
 (=> $x202 (xor Home_1_2 Home_0_2))))
(assert
 (let (($x346 (= Opp_2_0 2)))
 (let (($x347 (and (= Per_1_0 Per_2_0) $x346)))
 (let (($x344 (= Opp_1_0 3)))
 (=> $x344 $x347)))))
(assert
 (let (($x344 (= Opp_1_0 3)))
 (let (($x346 (= Opp_2_0 2)))
 (let (($x347 (and (= Per_1_0 Per_2_0) $x346)))
 (=> $x347 $x344)))))
(assert
 (let (($x344 (= Opp_1_0 3)))
 (=> $x344 (xor Home_1_0 Home_2_0))))
(assert
 (let (($x361 (= Opp_2_1 2)))
 (let (($x362 (and (= Per_1_1 Per_2_1) $x361)))
 (let (($x359 (= Opp_1_1 3)))
 (=> $x359 $x362)))))
(assert
 (let (($x359 (= Opp_1_1 3)))
 (let (($x361 (= Opp_2_1 2)))
 (let (($x362 (and (= Per_1_1 Per_2_1) $x361)))
 (=> $x362 $x359)))))
(assert
 (let (($x359 (= Opp_1_1 3)))
 (=> $x359 (xor Home_1_1 Home_2_1))))
(assert
 (let (($x376 (= Opp_2_2 2)))
 (let (($x377 (and (= Per_1_2 Per_2_2) $x376)))
 (let (($x374 (= Opp_1_2 3)))
 (=> $x374 $x377)))))
(assert
 (let (($x374 (= Opp_1_2 3)))
 (let (($x376 (= Opp_2_2 2)))
 (let (($x377 (and (= Per_1_2 Per_2_2) $x376)))
 (=> $x377 $x374)))))
(assert
 (let (($x374 (= Opp_1_2 3)))
 (=> $x374 (xor Home_1_2 Home_2_2))))
(assert
 (let (($x391 (= Opp_3_0 2)))
 (let (($x392 (and (= Per_1_0 Per_3_0) $x391)))
 (let (($x389 (= Opp_1_0 4)))
 (=> $x389 $x392)))))
(assert
 (let (($x389 (= Opp_1_0 4)))
 (let (($x391 (= Opp_3_0 2)))
 (let (($x392 (and (= Per_1_0 Per_3_0) $x391)))
 (=> $x392 $x389)))))
(assert
 (let (($x389 (= Opp_1_0 4)))
 (=> $x389 (xor Home_1_0 Home_3_0))))
(assert
 (let (($x406 (= Opp_3_1 2)))
 (let (($x407 (and (= Per_1_1 Per_3_1) $x406)))
 (let (($x404 (= Opp_1_1 4)))
 (=> $x404 $x407)))))
(assert
 (let (($x404 (= Opp_1_1 4)))
 (let (($x406 (= Opp_3_1 2)))
 (let (($x407 (and (= Per_1_1 Per_3_1) $x406)))
 (=> $x407 $x404)))))
(assert
 (let (($x404 (= Opp_1_1 4)))
 (=> $x404 (xor Home_1_1 Home_3_1))))
(assert
 (let (($x421 (= Opp_3_2 2)))
 (let (($x422 (and (= Per_1_2 Per_3_2) $x421)))
 (let (($x419 (= Opp_1_2 4)))
 (=> $x419 $x422)))))
(assert
 (let (($x419 (= Opp_1_2 4)))
 (let (($x421 (= Opp_3_2 2)))
 (let (($x422 (and (= Per_1_2 Per_3_2) $x421)))
 (=> $x422 $x419)))))
(assert
 (let (($x419 (= Opp_1_2 4)))
 (=> $x419 (xor Home_1_2 Home_3_2))))
(assert
 (let (($x215 (= Opp_0_0 3)))
 (let (($x435 (and (= Per_2_0 Per_0_0) $x215)))
 (let (($x217 (= Opp_2_0 1)))
 (=> $x217 $x435)))))
(assert
 (let (($x217 (= Opp_2_0 1)))
 (let (($x215 (= Opp_0_0 3)))
 (let (($x435 (and (= Per_2_0 Per_0_0) $x215)))
 (=> $x435 $x217)))))
(assert
 (let (($x217 (= Opp_2_0 1)))
 (=> $x217 (xor Home_2_0 Home_0_0))))
(assert
 (let (($x230 (= Opp_0_1 3)))
 (let (($x448 (and (= Per_2_1 Per_0_1) $x230)))
 (let (($x232 (= Opp_2_1 1)))
 (=> $x232 $x448)))))
(assert
 (let (($x232 (= Opp_2_1 1)))
 (let (($x230 (= Opp_0_1 3)))
 (let (($x448 (and (= Per_2_1 Per_0_1) $x230)))
 (=> $x448 $x232)))))
(assert
 (let (($x232 (= Opp_2_1 1)))
 (=> $x232 (xor Home_2_1 Home_0_1))))
(assert
 (let (($x245 (= Opp_0_2 3)))
 (let (($x461 (and (= Per_2_2 Per_0_2) $x245)))
 (let (($x247 (= Opp_2_2 1)))
 (=> $x247 $x461)))))
(assert
 (let (($x247 (= Opp_2_2 1)))
 (let (($x245 (= Opp_0_2 3)))
 (let (($x461 (and (= Per_2_2 Per_0_2) $x245)))
 (=> $x461 $x247)))))
(assert
 (let (($x247 (= Opp_2_2 1)))
 (=> $x247 (xor Home_2_2 Home_0_2))))
(assert
 (let (($x344 (= Opp_1_0 3)))
 (let (($x474 (and (= Per_2_0 Per_1_0) $x344)))
 (let (($x346 (= Opp_2_0 2)))
 (=> $x346 $x474)))))
(assert
 (let (($x346 (= Opp_2_0 2)))
 (let (($x344 (= Opp_1_0 3)))
 (let (($x474 (and (= Per_2_0 Per_1_0) $x344)))
 (=> $x474 $x346)))))
(assert
 (let (($x346 (= Opp_2_0 2)))
 (=> $x346 (xor Home_2_0 Home_1_0))))
(assert
 (let (($x359 (= Opp_1_1 3)))
 (let (($x487 (and (= Per_2_1 Per_1_1) $x359)))
 (let (($x361 (= Opp_2_1 2)))
 (=> $x361 $x487)))))
(assert
 (let (($x361 (= Opp_2_1 2)))
 (let (($x359 (= Opp_1_1 3)))
 (let (($x487 (and (= Per_2_1 Per_1_1) $x359)))
 (=> $x487 $x361)))))
(assert
 (let (($x361 (= Opp_2_1 2)))
 (=> $x361 (xor Home_2_1 Home_1_1))))
(assert
 (let (($x374 (= Opp_1_2 3)))
 (let (($x500 (and (= Per_2_2 Per_1_2) $x374)))
 (let (($x376 (= Opp_2_2 2)))
 (=> $x376 $x500)))))
(assert
 (let (($x376 (= Opp_2_2 2)))
 (let (($x374 (= Opp_1_2 3)))
 (let (($x500 (and (= Per_2_2 Per_1_2) $x374)))
 (=> $x500 $x376)))))
(assert
 (let (($x376 (= Opp_2_2 2)))
 (=> $x376 (xor Home_2_2 Home_1_2))))
(assert
 (let (($x514 (= Opp_3_0 3)))
 (let (($x515 (and (= Per_2_0 Per_3_0) $x514)))
 (let (($x512 (= Opp_2_0 4)))
 (=> $x512 $x515)))))
(assert
 (let (($x512 (= Opp_2_0 4)))
 (let (($x514 (= Opp_3_0 3)))
 (let (($x515 (and (= Per_2_0 Per_3_0) $x514)))
 (=> $x515 $x512)))))
(assert
 (let (($x512 (= Opp_2_0 4)))
 (=> $x512 (xor Home_2_0 Home_3_0))))
(assert
 (let (($x529 (= Opp_3_1 3)))
 (let (($x530 (and (= Per_2_1 Per_3_1) $x529)))
 (let (($x527 (= Opp_2_1 4)))
 (=> $x527 $x530)))))
(assert
 (let (($x527 (= Opp_2_1 4)))
 (let (($x529 (= Opp_3_1 3)))
 (let (($x530 (and (= Per_2_1 Per_3_1) $x529)))
 (=> $x530 $x527)))))
(assert
 (let (($x527 (= Opp_2_1 4)))
 (=> $x527 (xor Home_2_1 Home_3_1))))
(assert
 (let (($x544 (= Opp_3_2 3)))
 (let (($x545 (and (= Per_2_2 Per_3_2) $x544)))
 (let (($x542 (= Opp_2_2 4)))
 (=> $x542 $x545)))))
(assert
 (let (($x542 (= Opp_2_2 4)))
 (let (($x544 (= Opp_3_2 3)))
 (let (($x545 (and (= Per_2_2 Per_3_2) $x544)))
 (=> $x545 $x542)))))
(assert
 (let (($x542 (= Opp_2_2 4)))
 (=> $x542 (xor Home_2_2 Home_3_2))))
(assert
 (let (($x260 (= Opp_0_0 4)))
 (let (($x558 (and (= Per_3_0 Per_0_0) $x260)))
 (let (($x262 (= Opp_3_0 1)))
 (=> $x262 $x558)))))
(assert
 (let (($x262 (= Opp_3_0 1)))
 (let (($x260 (= Opp_0_0 4)))
 (let (($x558 (and (= Per_3_0 Per_0_0) $x260)))
 (=> $x558 $x262)))))
(assert
 (let (($x262 (= Opp_3_0 1)))
 (=> $x262 (xor Home_3_0 Home_0_0))))
(assert
 (let (($x275 (= Opp_0_1 4)))
 (let (($x571 (and (= Per_3_1 Per_0_1) $x275)))
 (let (($x277 (= Opp_3_1 1)))
 (=> $x277 $x571)))))
(assert
 (let (($x277 (= Opp_3_1 1)))
 (let (($x275 (= Opp_0_1 4)))
 (let (($x571 (and (= Per_3_1 Per_0_1) $x275)))
 (=> $x571 $x277)))))
(assert
 (let (($x277 (= Opp_3_1 1)))
 (=> $x277 (xor Home_3_1 Home_0_1))))
(assert
 (let (($x290 (= Opp_0_2 4)))
 (let (($x584 (and (= Per_3_2 Per_0_2) $x290)))
 (let (($x292 (= Opp_3_2 1)))
 (=> $x292 $x584)))))
(assert
 (let (($x292 (= Opp_3_2 1)))
 (let (($x290 (= Opp_0_2 4)))
 (let (($x584 (and (= Per_3_2 Per_0_2) $x290)))
 (=> $x584 $x292)))))
(assert
 (let (($x292 (= Opp_3_2 1)))
 (=> $x292 (xor Home_3_2 Home_0_2))))
(assert
 (let (($x389 (= Opp_1_0 4)))
 (let (($x597 (and (= Per_3_0 Per_1_0) $x389)))
 (let (($x391 (= Opp_3_0 2)))
 (=> $x391 $x597)))))
(assert
 (let (($x391 (= Opp_3_0 2)))
 (let (($x389 (= Opp_1_0 4)))
 (let (($x597 (and (= Per_3_0 Per_1_0) $x389)))
 (=> $x597 $x391)))))
(assert
 (let (($x391 (= Opp_3_0 2)))
 (=> $x391 (xor Home_3_0 Home_1_0))))
(assert
 (let (($x404 (= Opp_1_1 4)))
 (let (($x610 (and (= Per_3_1 Per_1_1) $x404)))
 (let (($x406 (= Opp_3_1 2)))
 (=> $x406 $x610)))))
(assert
 (let (($x406 (= Opp_3_1 2)))
 (let (($x404 (= Opp_1_1 4)))
 (let (($x610 (and (= Per_3_1 Per_1_1) $x404)))
 (=> $x610 $x406)))))
(assert
 (let (($x406 (= Opp_3_1 2)))
 (=> $x406 (xor Home_3_1 Home_1_1))))
(assert
 (let (($x419 (= Opp_1_2 4)))
 (let (($x623 (and (= Per_3_2 Per_1_2) $x419)))
 (let (($x421 (= Opp_3_2 2)))
 (=> $x421 $x623)))))
(assert
 (let (($x421 (= Opp_3_2 2)))
 (let (($x419 (= Opp_1_2 4)))
 (let (($x623 (and (= Per_3_2 Per_1_2) $x419)))
 (=> $x623 $x421)))))
(assert
 (let (($x421 (= Opp_3_2 2)))
 (=> $x421 (xor Home_3_2 Home_1_2))))
(assert
 (let (($x512 (= Opp_2_0 4)))
 (let (($x636 (and (= Per_3_0 Per_2_0) $x512)))
 (let (($x514 (= Opp_3_0 3)))
 (=> $x514 $x636)))))
(assert
 (let (($x514 (= Opp_3_0 3)))
 (let (($x512 (= Opp_2_0 4)))
 (let (($x636 (and (= Per_3_0 Per_2_0) $x512)))
 (=> $x636 $x514)))))
(assert
 (let (($x514 (= Opp_3_0 3)))
 (=> $x514 (xor Home_3_0 Home_2_0))))
(assert
 (let (($x527 (= Opp_2_1 4)))
 (let (($x649 (and (= Per_3_1 Per_2_1) $x527)))
 (let (($x529 (= Opp_3_1 3)))
 (=> $x529 $x649)))))
(assert
 (let (($x529 (= Opp_3_1 3)))
 (let (($x527 (= Opp_2_1 4)))
 (let (($x649 (and (= Per_3_1 Per_2_1) $x527)))
 (=> $x649 $x529)))))
(assert
 (let (($x529 (= Opp_3_1 3)))
 (=> $x529 (xor Home_3_1 Home_2_1))))
(assert
 (let (($x542 (= Opp_2_2 4)))
 (let (($x662 (and (= Per_3_2 Per_2_2) $x542)))
 (let (($x544 (= Opp_3_2 3)))
 (=> $x544 $x662)))))
(assert
 (let (($x544 (= Opp_3_2 3)))
 (let (($x542 (= Opp_2_2 4)))
 (let (($x662 (and (= Per_3_2 Per_2_2) $x542)))
 (=> $x662 $x544)))))
(assert
 (let (($x544 (= Opp_3_2 3)))
 (=> $x544 (xor Home_3_2 Home_2_2))))
(assert
 Home_0_0)
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
(assert
 (and (distinct Opp_0_0 Opp_0_1 Opp_0_2) true))
(assert
 (and (distinct Opp_1_0 Opp_1_1 Opp_1_2) true))
(assert
 (and (distinct Opp_2_0 Opp_2_1 Opp_2_2) true))
(assert
 (and (distinct Opp_3_0 Opp_3_1 Opp_3_2) true))
(assert
 (let (($x675 (= Per_3_0 1)))
 (let ((?x703 (ite $x675 1 0)))
 (let ((?x702 (ite (= Per_2_0 1) 1 0)))
 (let ((?x700 (ite (= Per_1_0 1) 1 0)))
 (let (($x674 (= Per_0_0 1)))
 (let ((?x698 (ite $x674 1 0)))
 (= (+ ?x698 ?x700 ?x702 ?x703) 2))))))))
(assert
 (let ((?x711 (ite (= Per_3_0 2) 1 0)))
 (let (($x677 (= Per_2_0 2)))
 (let ((?x709 (ite $x677 1 0)))
 (let (($x676 (= Per_1_0 2)))
 (let ((?x708 (ite $x676 1 0)))
 (let ((?x707 (ite (= Per_0_0 2) 1 0)))
 (= (+ ?x707 ?x708 ?x709 ?x711) 2))))))))
(assert
 (let ((?x721 (ite (= Per_3_1 1) 1 0)))
 (let ((?x719 (ite (= Per_2_1 1) 1 0)))
 (let ((?x717 (ite (= Per_1_1 1) 1 0)))
 (let ((?x715 (ite (= Per_0_1 1) 1 0)))
 (= (+ ?x715 ?x717 ?x719 ?x721) 2))))))
(assert
 (let ((?x731 (ite (= Per_3_1 2) 1 0)))
 (let ((?x729 (ite (= Per_2_1 2) 1 0)))
 (let ((?x727 (ite (= Per_1_1 2) 1 0)))
 (let ((?x725 (ite (= Per_0_1 2) 1 0)))
 (= (+ ?x725 ?x727 ?x729 ?x731) 2))))))
(assert
 (let ((?x741 (ite (= Per_3_2 1) 1 0)))
 (let ((?x739 (ite (= Per_2_2 1) 1 0)))
 (let ((?x737 (ite (= Per_1_2 1) 1 0)))
 (let ((?x735 (ite (= Per_0_2 1) 1 0)))
 (= (+ ?x735 ?x737 ?x739 ?x741) 2))))))
(assert
 (let ((?x751 (ite (= Per_3_2 2) 1 0)))
 (let ((?x749 (ite (= Per_2_2 2) 1 0)))
 (let ((?x747 (ite (= Per_1_2 2) 1 0)))
 (let ((?x745 (ite (= Per_0_2 2) 1 0)))
 (= (+ ?x745 ?x747 ?x749 ?x751) 2))))))
(assert
 (let ((?x735 (ite (= Per_0_2 1) 1 0)))
 (let ((?x715 (ite (= Per_0_1 1) 1 0)))
 (let (($x674 (= Per_0_0 1)))
 (let ((?x698 (ite $x674 1 0)))
 (<= (+ ?x698 ?x715 ?x735) 2))))))
(assert
 (let ((?x745 (ite (= Per_0_2 2) 1 0)))
 (let ((?x725 (ite (= Per_0_1 2) 1 0)))
 (let ((?x707 (ite (= Per_0_0 2) 1 0)))
 (<= (+ ?x707 ?x725 ?x745) 2)))))
(assert
 (let ((?x737 (ite (= Per_1_2 1) 1 0)))
 (let ((?x717 (ite (= Per_1_1 1) 1 0)))
 (let ((?x700 (ite (= Per_1_0 1) 1 0)))
 (<= (+ ?x700 ?x717 ?x737) 2)))))
(assert
 (let ((?x747 (ite (= Per_1_2 2) 1 0)))
 (let ((?x727 (ite (= Per_1_1 2) 1 0)))
 (let (($x676 (= Per_1_0 2)))
 (let ((?x708 (ite $x676 1 0)))
 (<= (+ ?x708 ?x727 ?x747) 2))))))
(assert
 (let ((?x739 (ite (= Per_2_2 1) 1 0)))
 (let ((?x719 (ite (= Per_2_1 1) 1 0)))
 (let ((?x702 (ite (= Per_2_0 1) 1 0)))
 (<= (+ ?x702 ?x719 ?x739) 2)))))
(assert
 (let ((?x749 (ite (= Per_2_2 2) 1 0)))
 (let ((?x729 (ite (= Per_2_1 2) 1 0)))
 (let (($x677 (= Per_2_0 2)))
 (let ((?x709 (ite $x677 1 0)))
 (<= (+ ?x709 ?x729 ?x749) 2))))))
(assert
 (let ((?x741 (ite (= Per_3_2 1) 1 0)))
 (let ((?x721 (ite (= Per_3_1 1) 1 0)))
 (let (($x675 (= Per_3_0 1)))
 (let ((?x703 (ite $x675 1 0)))
 (<= (+ ?x703 ?x721 ?x741) 2))))))
(assert
 (let ((?x751 (ite (= Per_3_2 2) 1 0)))
 (let ((?x731 (ite (= Per_3_1 2) 1 0)))
 (let ((?x711 (ite (= Per_3_0 2) 1 0)))
 (<= (+ ?x711 ?x731 ?x751) 2)))))
(assert
 (let ((?x784 (ite Home_3_2 1 0)))
(let ((?x783 (ite Home_3_1 1 0)))
(let ((?x782 (ite Home_3_0 1 0)))
(let ((?x785 (+ ?x782 ?x783 ?x784)))
(let ((?x802 (- (* 2 ?x785) 3)))
(let ((?x780 (ite Home_2_2 1 0)))
(let ((?x779 (ite Home_2_1 1 0)))
(let ((?x778 (ite Home_2_0 1 0)))
(let ((?x781 (+ ?x778 ?x779 ?x780)))
(let ((?x797 (- (* 2 ?x781) 3)))
(let ((?x776 (ite Home_1_2 1 0)))
(let ((?x775 (ite Home_1_1 1 0)))
(let ((?x774 (ite Home_1_0 1 0)))
(let ((?x777 (+ ?x774 ?x775 ?x776)))
(let ((?x792 (- (* 2 ?x777) 3)))
(let ((?x772 (ite Home_0_2 1 0)))
(let ((?x771 (ite Home_0_1 1 0)))
(let ((?x770 (ite Home_0_0 1 0)))
(let ((?x773 (+ ?x770 ?x771 ?x772)))
(let ((?x787 (- (* 2 ?x773) 3)))
(let ((?x806 (+ (ite (> ?x787 0) ?x787 (- ?x787)) (ite (> ?x792 0) ?x792 (- ?x792)) (ite (> ?x797 0) ?x797 (- ?x797)) (ite (> ?x802 0) ?x802 (- ?x802)))))
(< ?x806 100)))))))))))))))))))))))

(check-sat)
(get-objectives)
