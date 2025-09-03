(set-logic QF_LIA)
(set-option :produce-models true)
(set-option :timeout 300000); benchmark generated from python API
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
(assert
 (let (($x98 (<= Per_0_0 3)))
 (let (($x96 (>= Per_0_0 1)))
 (and $x96 $x98))))
(assert
 (let (($x119 (<= Opp_0_0 6)))
 (let (($x117 (>= Opp_0_0 1)))
 (and $x117 $x119))))
(assert
 (and (distinct Opp_0_0 1) true))
(assert
 (let (($x125 (<= Per_0_1 3)))
 (let (($x124 (>= Per_0_1 1)))
 (and $x124 $x125))))
(assert
 (let (($x128 (<= Opp_0_1 6)))
 (let (($x127 (>= Opp_0_1 1)))
 (and $x127 $x128))))
(assert
 (and (distinct Opp_0_1 1) true))
(assert
 (let (($x134 (<= Per_0_2 3)))
 (let (($x133 (>= Per_0_2 1)))
 (and $x133 $x134))))
(assert
 (let (($x137 (<= Opp_0_2 6)))
 (let (($x136 (>= Opp_0_2 1)))
 (and $x136 $x137))))
(assert
 (and (distinct Opp_0_2 1) true))
(assert
 (let (($x143 (<= Per_0_3 3)))
 (let (($x142 (>= Per_0_3 1)))
 (and $x142 $x143))))
(assert
 (let (($x146 (<= Opp_0_3 6)))
 (let (($x145 (>= Opp_0_3 1)))
 (and $x145 $x146))))
(assert
 (and (distinct Opp_0_3 1) true))
(assert
 (let (($x152 (<= Per_0_4 3)))
 (let (($x151 (>= Per_0_4 1)))
 (and $x151 $x152))))
(assert
 (let (($x155 (<= Opp_0_4 6)))
 (let (($x154 (>= Opp_0_4 1)))
 (and $x154 $x155))))
(assert
 (and (distinct Opp_0_4 1) true))
(assert
 (let (($x161 (<= Per_1_0 3)))
 (let (($x160 (>= Per_1_0 1)))
 (and $x160 $x161))))
(assert
 (let (($x164 (<= Opp_1_0 6)))
 (let (($x163 (>= Opp_1_0 1)))
 (and $x163 $x164))))
(assert
 (and (distinct Opp_1_0 2) true))
(assert
 (let (($x171 (<= Per_1_1 3)))
 (let (($x170 (>= Per_1_1 1)))
 (and $x170 $x171))))
(assert
 (let (($x174 (<= Opp_1_1 6)))
 (let (($x173 (>= Opp_1_1 1)))
 (and $x173 $x174))))
(assert
 (and (distinct Opp_1_1 2) true))
(assert
 (let (($x180 (<= Per_1_2 3)))
 (let (($x179 (>= Per_1_2 1)))
 (and $x179 $x180))))
(assert
 (let (($x183 (<= Opp_1_2 6)))
 (let (($x182 (>= Opp_1_2 1)))
 (and $x182 $x183))))
(assert
 (and (distinct Opp_1_2 2) true))
(assert
 (let (($x189 (<= Per_1_3 3)))
 (let (($x188 (>= Per_1_3 1)))
 (and $x188 $x189))))
(assert
 (let (($x192 (<= Opp_1_3 6)))
 (let (($x191 (>= Opp_1_3 1)))
 (and $x191 $x192))))
(assert
 (and (distinct Opp_1_3 2) true))
(assert
 (let (($x198 (<= Per_1_4 3)))
 (let (($x197 (>= Per_1_4 1)))
 (and $x197 $x198))))
(assert
 (let (($x201 (<= Opp_1_4 6)))
 (let (($x200 (>= Opp_1_4 1)))
 (and $x200 $x201))))
(assert
 (and (distinct Opp_1_4 2) true))
(assert
 (let (($x207 (<= Per_2_0 3)))
 (let (($x206 (>= Per_2_0 1)))
 (and $x206 $x207))))
(assert
 (let (($x210 (<= Opp_2_0 6)))
 (let (($x209 (>= Opp_2_0 1)))
 (and $x209 $x210))))
(assert
 (and (distinct Opp_2_0 3) true))
(assert
 (let (($x216 (<= Per_2_1 3)))
 (let (($x215 (>= Per_2_1 1)))
 (and $x215 $x216))))
(assert
 (let (($x219 (<= Opp_2_1 6)))
 (let (($x218 (>= Opp_2_1 1)))
 (and $x218 $x219))))
(assert
 (and (distinct Opp_2_1 3) true))
(assert
 (let (($x225 (<= Per_2_2 3)))
 (let (($x224 (>= Per_2_2 1)))
 (and $x224 $x225))))
(assert
 (let (($x228 (<= Opp_2_2 6)))
 (let (($x227 (>= Opp_2_2 1)))
 (and $x227 $x228))))
(assert
 (and (distinct Opp_2_2 3) true))
(assert
 (let (($x234 (<= Per_2_3 3)))
 (let (($x233 (>= Per_2_3 1)))
 (and $x233 $x234))))
(assert
 (let (($x237 (<= Opp_2_3 6)))
 (let (($x236 (>= Opp_2_3 1)))
 (and $x236 $x237))))
(assert
 (and (distinct Opp_2_3 3) true))
(assert
 (let (($x243 (<= Per_2_4 3)))
 (let (($x242 (>= Per_2_4 1)))
 (and $x242 $x243))))
(assert
 (let (($x246 (<= Opp_2_4 6)))
 (let (($x245 (>= Opp_2_4 1)))
 (and $x245 $x246))))
(assert
 (and (distinct Opp_2_4 3) true))
(assert
 (let (($x252 (<= Per_3_0 3)))
 (let (($x251 (>= Per_3_0 1)))
 (and $x251 $x252))))
(assert
 (let (($x255 (<= Opp_3_0 6)))
 (let (($x254 (>= Opp_3_0 1)))
 (and $x254 $x255))))
(assert
 (and (distinct Opp_3_0 4) true))
(assert
 (let (($x262 (<= Per_3_1 3)))
 (let (($x261 (>= Per_3_1 1)))
 (and $x261 $x262))))
(assert
 (let (($x265 (<= Opp_3_1 6)))
 (let (($x264 (>= Opp_3_1 1)))
 (and $x264 $x265))))
(assert
 (and (distinct Opp_3_1 4) true))
(assert
 (let (($x271 (<= Per_3_2 3)))
 (let (($x270 (>= Per_3_2 1)))
 (and $x270 $x271))))
(assert
 (let (($x274 (<= Opp_3_2 6)))
 (let (($x273 (>= Opp_3_2 1)))
 (and $x273 $x274))))
(assert
 (and (distinct Opp_3_2 4) true))
(assert
 (let (($x280 (<= Per_3_3 3)))
 (let (($x279 (>= Per_3_3 1)))
 (and $x279 $x280))))
(assert
 (let (($x283 (<= Opp_3_3 6)))
 (let (($x282 (>= Opp_3_3 1)))
 (and $x282 $x283))))
(assert
 (and (distinct Opp_3_3 4) true))
(assert
 (let (($x289 (<= Per_3_4 3)))
 (let (($x288 (>= Per_3_4 1)))
 (and $x288 $x289))))
(assert
 (let (($x292 (<= Opp_3_4 6)))
 (let (($x291 (>= Opp_3_4 1)))
 (and $x291 $x292))))
(assert
 (and (distinct Opp_3_4 4) true))
(assert
 (let (($x298 (<= Per_4_0 3)))
 (let (($x297 (>= Per_4_0 1)))
 (and $x297 $x298))))
(assert
 (let (($x301 (<= Opp_4_0 6)))
 (let (($x300 (>= Opp_4_0 1)))
 (and $x300 $x301))))
(assert
 (and (distinct Opp_4_0 5) true))
(assert
 (let (($x308 (<= Per_4_1 3)))
 (let (($x307 (>= Per_4_1 1)))
 (and $x307 $x308))))
(assert
 (let (($x311 (<= Opp_4_1 6)))
 (let (($x310 (>= Opp_4_1 1)))
 (and $x310 $x311))))
(assert
 (and (distinct Opp_4_1 5) true))
(assert
 (let (($x317 (<= Per_4_2 3)))
 (let (($x316 (>= Per_4_2 1)))
 (and $x316 $x317))))
(assert
 (let (($x320 (<= Opp_4_2 6)))
 (let (($x319 (>= Opp_4_2 1)))
 (and $x319 $x320))))
(assert
 (and (distinct Opp_4_2 5) true))
(assert
 (let (($x326 (<= Per_4_3 3)))
 (let (($x325 (>= Per_4_3 1)))
 (and $x325 $x326))))
(assert
 (let (($x329 (<= Opp_4_3 6)))
 (let (($x328 (>= Opp_4_3 1)))
 (and $x328 $x329))))
(assert
 (and (distinct Opp_4_3 5) true))
(assert
 (let (($x335 (<= Per_4_4 3)))
 (let (($x334 (>= Per_4_4 1)))
 (and $x334 $x335))))
(assert
 (let (($x338 (<= Opp_4_4 6)))
 (let (($x337 (>= Opp_4_4 1)))
 (and $x337 $x338))))
(assert
 (and (distinct Opp_4_4 5) true))
(assert
 (let (($x344 (<= Per_5_0 3)))
 (let (($x343 (>= Per_5_0 1)))
 (and $x343 $x344))))
(assert
 (let (($x347 (<= Opp_5_0 6)))
 (let (($x346 (>= Opp_5_0 1)))
 (and $x346 $x347))))
(assert
 (and (distinct Opp_5_0 6) true))
(assert
 (let (($x353 (<= Per_5_1 3)))
 (let (($x352 (>= Per_5_1 1)))
 (and $x352 $x353))))
(assert
 (let (($x356 (<= Opp_5_1 6)))
 (let (($x355 (>= Opp_5_1 1)))
 (and $x355 $x356))))
(assert
 (and (distinct Opp_5_1 6) true))
(assert
 (let (($x362 (<= Per_5_2 3)))
 (let (($x361 (>= Per_5_2 1)))
 (and $x361 $x362))))
(assert
 (let (($x365 (<= Opp_5_2 6)))
 (let (($x364 (>= Opp_5_2 1)))
 (and $x364 $x365))))
(assert
 (and (distinct Opp_5_2 6) true))
(assert
 (let (($x371 (<= Per_5_3 3)))
 (let (($x370 (>= Per_5_3 1)))
 (and $x370 $x371))))
(assert
 (let (($x374 (<= Opp_5_3 6)))
 (let (($x373 (>= Opp_5_3 1)))
 (and $x373 $x374))))
(assert
 (and (distinct Opp_5_3 6) true))
(assert
 (let (($x380 (<= Per_5_4 3)))
 (let (($x379 (>= Per_5_4 1)))
 (and $x379 $x380))))
(assert
 (let (($x383 (<= Opp_5_4 6)))
 (let (($x382 (>= Opp_5_4 1)))
 (and $x382 $x383))))
(assert
 (and (distinct Opp_5_4 6) true))
(assert
 (let (($x390 (= Opp_1_0 1)))
 (let (($x391 (and (= Per_0_0 Per_1_0) $x390)))
 (let (($x388 (= Opp_0_0 2)))
 (=> $x388 $x391)))))
(assert
 (let (($x388 (= Opp_0_0 2)))
 (let (($x390 (= Opp_1_0 1)))
 (let (($x391 (and (= Per_0_0 Per_1_0) $x390)))
 (=> $x391 $x388)))))
(assert
 (let (($x388 (= Opp_0_0 2)))
 (=> $x388 (xor Home_0_0 Home_1_0))))
(assert
 (let (($x405 (= Opp_1_1 1)))
 (let (($x406 (and (= Per_0_1 Per_1_1) $x405)))
 (let (($x403 (= Opp_0_1 2)))
 (=> $x403 $x406)))))
(assert
 (let (($x403 (= Opp_0_1 2)))
 (let (($x405 (= Opp_1_1 1)))
 (let (($x406 (and (= Per_0_1 Per_1_1) $x405)))
 (=> $x406 $x403)))))
(assert
 (let (($x403 (= Opp_0_1 2)))
 (=> $x403 (xor Home_0_1 Home_1_1))))
(assert
 (let (($x420 (= Opp_1_2 1)))
 (let (($x421 (and (= Per_0_2 Per_1_2) $x420)))
 (let (($x418 (= Opp_0_2 2)))
 (=> $x418 $x421)))))
(assert
 (let (($x418 (= Opp_0_2 2)))
 (let (($x420 (= Opp_1_2 1)))
 (let (($x421 (and (= Per_0_2 Per_1_2) $x420)))
 (=> $x421 $x418)))))
(assert
 (let (($x418 (= Opp_0_2 2)))
 (=> $x418 (xor Home_0_2 Home_1_2))))
(assert
 (let (($x435 (= Opp_1_3 1)))
 (let (($x436 (and (= Per_0_3 Per_1_3) $x435)))
 (let (($x433 (= Opp_0_3 2)))
 (=> $x433 $x436)))))
(assert
 (let (($x433 (= Opp_0_3 2)))
 (let (($x435 (= Opp_1_3 1)))
 (let (($x436 (and (= Per_0_3 Per_1_3) $x435)))
 (=> $x436 $x433)))))
(assert
 (let (($x433 (= Opp_0_3 2)))
 (=> $x433 (xor Home_0_3 Home_1_3))))
(assert
 (let (($x450 (= Opp_1_4 1)))
 (let (($x451 (and (= Per_0_4 Per_1_4) $x450)))
 (let (($x448 (= Opp_0_4 2)))
 (=> $x448 $x451)))))
(assert
 (let (($x448 (= Opp_0_4 2)))
 (let (($x450 (= Opp_1_4 1)))
 (let (($x451 (and (= Per_0_4 Per_1_4) $x450)))
 (=> $x451 $x448)))))
(assert
 (let (($x448 (= Opp_0_4 2)))
 (=> $x448 (xor Home_0_4 Home_1_4))))
(assert
 (let (($x465 (= Opp_2_0 1)))
 (let (($x466 (and (= Per_0_0 Per_2_0) $x465)))
 (let (($x463 (= Opp_0_0 3)))
 (=> $x463 $x466)))))
(assert
 (let (($x463 (= Opp_0_0 3)))
 (let (($x465 (= Opp_2_0 1)))
 (let (($x466 (and (= Per_0_0 Per_2_0) $x465)))
 (=> $x466 $x463)))))
(assert
 (let (($x463 (= Opp_0_0 3)))
 (=> $x463 (xor Home_0_0 Home_2_0))))
(assert
 (let (($x480 (= Opp_2_1 1)))
 (let (($x481 (and (= Per_0_1 Per_2_1) $x480)))
 (let (($x478 (= Opp_0_1 3)))
 (=> $x478 $x481)))))
(assert
 (let (($x478 (= Opp_0_1 3)))
 (let (($x480 (= Opp_2_1 1)))
 (let (($x481 (and (= Per_0_1 Per_2_1) $x480)))
 (=> $x481 $x478)))))
(assert
 (let (($x478 (= Opp_0_1 3)))
 (=> $x478 (xor Home_0_1 Home_2_1))))
(assert
 (let (($x495 (= Opp_2_2 1)))
 (let (($x496 (and (= Per_0_2 Per_2_2) $x495)))
 (let (($x493 (= Opp_0_2 3)))
 (=> $x493 $x496)))))
(assert
 (let (($x493 (= Opp_0_2 3)))
 (let (($x495 (= Opp_2_2 1)))
 (let (($x496 (and (= Per_0_2 Per_2_2) $x495)))
 (=> $x496 $x493)))))
(assert
 (let (($x493 (= Opp_0_2 3)))
 (=> $x493 (xor Home_0_2 Home_2_2))))
(assert
 (let (($x510 (= Opp_2_3 1)))
 (let (($x511 (and (= Per_0_3 Per_2_3) $x510)))
 (let (($x508 (= Opp_0_3 3)))
 (=> $x508 $x511)))))
(assert
 (let (($x508 (= Opp_0_3 3)))
 (let (($x510 (= Opp_2_3 1)))
 (let (($x511 (and (= Per_0_3 Per_2_3) $x510)))
 (=> $x511 $x508)))))
(assert
 (let (($x508 (= Opp_0_3 3)))
 (=> $x508 (xor Home_0_3 Home_2_3))))
(assert
 (let (($x525 (= Opp_2_4 1)))
 (let (($x526 (and (= Per_0_4 Per_2_4) $x525)))
 (let (($x523 (= Opp_0_4 3)))
 (=> $x523 $x526)))))
(assert
 (let (($x523 (= Opp_0_4 3)))
 (let (($x525 (= Opp_2_4 1)))
 (let (($x526 (and (= Per_0_4 Per_2_4) $x525)))
 (=> $x526 $x523)))))
(assert
 (let (($x523 (= Opp_0_4 3)))
 (=> $x523 (xor Home_0_4 Home_2_4))))
(assert
 (let (($x540 (= Opp_3_0 1)))
 (let (($x541 (and (= Per_0_0 Per_3_0) $x540)))
 (let (($x538 (= Opp_0_0 4)))
 (=> $x538 $x541)))))
(assert
 (let (($x538 (= Opp_0_0 4)))
 (let (($x540 (= Opp_3_0 1)))
 (let (($x541 (and (= Per_0_0 Per_3_0) $x540)))
 (=> $x541 $x538)))))
(assert
 (let (($x538 (= Opp_0_0 4)))
 (=> $x538 (xor Home_0_0 Home_3_0))))
(assert
 (let (($x555 (= Opp_3_1 1)))
 (let (($x556 (and (= Per_0_1 Per_3_1) $x555)))
 (let (($x553 (= Opp_0_1 4)))
 (=> $x553 $x556)))))
(assert
 (let (($x553 (= Opp_0_1 4)))
 (let (($x555 (= Opp_3_1 1)))
 (let (($x556 (and (= Per_0_1 Per_3_1) $x555)))
 (=> $x556 $x553)))))
(assert
 (let (($x553 (= Opp_0_1 4)))
 (=> $x553 (xor Home_0_1 Home_3_1))))
(assert
 (let (($x570 (= Opp_3_2 1)))
 (let (($x571 (and (= Per_0_2 Per_3_2) $x570)))
 (let (($x568 (= Opp_0_2 4)))
 (=> $x568 $x571)))))
(assert
 (let (($x568 (= Opp_0_2 4)))
 (let (($x570 (= Opp_3_2 1)))
 (let (($x571 (and (= Per_0_2 Per_3_2) $x570)))
 (=> $x571 $x568)))))
(assert
 (let (($x568 (= Opp_0_2 4)))
 (=> $x568 (xor Home_0_2 Home_3_2))))
(assert
 (let (($x585 (= Opp_3_3 1)))
 (let (($x586 (and (= Per_0_3 Per_3_3) $x585)))
 (let (($x583 (= Opp_0_3 4)))
 (=> $x583 $x586)))))
(assert
 (let (($x583 (= Opp_0_3 4)))
 (let (($x585 (= Opp_3_3 1)))
 (let (($x586 (and (= Per_0_3 Per_3_3) $x585)))
 (=> $x586 $x583)))))
(assert
 (let (($x583 (= Opp_0_3 4)))
 (=> $x583 (xor Home_0_3 Home_3_3))))
(assert
 (let (($x600 (= Opp_3_4 1)))
 (let (($x601 (and (= Per_0_4 Per_3_4) $x600)))
 (let (($x598 (= Opp_0_4 4)))
 (=> $x598 $x601)))))
(assert
 (let (($x598 (= Opp_0_4 4)))
 (let (($x600 (= Opp_3_4 1)))
 (let (($x601 (and (= Per_0_4 Per_3_4) $x600)))
 (=> $x601 $x598)))))
(assert
 (let (($x598 (= Opp_0_4 4)))
 (=> $x598 (xor Home_0_4 Home_3_4))))
(assert
 (let (($x615 (= Opp_4_0 1)))
 (let (($x616 (and (= Per_0_0 Per_4_0) $x615)))
 (let (($x613 (= Opp_0_0 5)))
 (=> $x613 $x616)))))
(assert
 (let (($x613 (= Opp_0_0 5)))
 (let (($x615 (= Opp_4_0 1)))
 (let (($x616 (and (= Per_0_0 Per_4_0) $x615)))
 (=> $x616 $x613)))))
(assert
 (let (($x613 (= Opp_0_0 5)))
 (=> $x613 (xor Home_0_0 Home_4_0))))
(assert
 (let (($x630 (= Opp_4_1 1)))
 (let (($x631 (and (= Per_0_1 Per_4_1) $x630)))
 (let (($x628 (= Opp_0_1 5)))
 (=> $x628 $x631)))))
(assert
 (let (($x628 (= Opp_0_1 5)))
 (let (($x630 (= Opp_4_1 1)))
 (let (($x631 (and (= Per_0_1 Per_4_1) $x630)))
 (=> $x631 $x628)))))
(assert
 (let (($x628 (= Opp_0_1 5)))
 (=> $x628 (xor Home_0_1 Home_4_1))))
(assert
 (let (($x645 (= Opp_4_2 1)))
 (let (($x646 (and (= Per_0_2 Per_4_2) $x645)))
 (let (($x643 (= Opp_0_2 5)))
 (=> $x643 $x646)))))
(assert
 (let (($x643 (= Opp_0_2 5)))
 (let (($x645 (= Opp_4_2 1)))
 (let (($x646 (and (= Per_0_2 Per_4_2) $x645)))
 (=> $x646 $x643)))))
(assert
 (let (($x643 (= Opp_0_2 5)))
 (=> $x643 (xor Home_0_2 Home_4_2))))
(assert
 (let (($x660 (= Opp_4_3 1)))
 (let (($x661 (and (= Per_0_3 Per_4_3) $x660)))
 (let (($x658 (= Opp_0_3 5)))
 (=> $x658 $x661)))))
(assert
 (let (($x658 (= Opp_0_3 5)))
 (let (($x660 (= Opp_4_3 1)))
 (let (($x661 (and (= Per_0_3 Per_4_3) $x660)))
 (=> $x661 $x658)))))
(assert
 (let (($x658 (= Opp_0_3 5)))
 (=> $x658 (xor Home_0_3 Home_4_3))))
(assert
 (let (($x675 (= Opp_4_4 1)))
 (let (($x676 (and (= Per_0_4 Per_4_4) $x675)))
 (let (($x673 (= Opp_0_4 5)))
 (=> $x673 $x676)))))
(assert
 (let (($x673 (= Opp_0_4 5)))
 (let (($x675 (= Opp_4_4 1)))
 (let (($x676 (and (= Per_0_4 Per_4_4) $x675)))
 (=> $x676 $x673)))))
(assert
 (let (($x673 (= Opp_0_4 5)))
 (=> $x673 (xor Home_0_4 Home_4_4))))
(assert
 (let (($x690 (= Opp_5_0 1)))
 (let (($x691 (and (= Per_0_0 Per_5_0) $x690)))
 (let (($x688 (= Opp_0_0 6)))
 (=> $x688 $x691)))))
(assert
 (let (($x688 (= Opp_0_0 6)))
 (let (($x690 (= Opp_5_0 1)))
 (let (($x691 (and (= Per_0_0 Per_5_0) $x690)))
 (=> $x691 $x688)))))
(assert
 (let (($x688 (= Opp_0_0 6)))
 (=> $x688 (xor Home_0_0 Home_5_0))))
(assert
 (let (($x705 (= Opp_5_1 1)))
 (let (($x706 (and (= Per_0_1 Per_5_1) $x705)))
 (let (($x703 (= Opp_0_1 6)))
 (=> $x703 $x706)))))
(assert
 (let (($x703 (= Opp_0_1 6)))
 (let (($x705 (= Opp_5_1 1)))
 (let (($x706 (and (= Per_0_1 Per_5_1) $x705)))
 (=> $x706 $x703)))))
(assert
 (let (($x703 (= Opp_0_1 6)))
 (=> $x703 (xor Home_0_1 Home_5_1))))
(assert
 (let (($x720 (= Opp_5_2 1)))
 (let (($x721 (and (= Per_0_2 Per_5_2) $x720)))
 (let (($x718 (= Opp_0_2 6)))
 (=> $x718 $x721)))))
(assert
 (let (($x718 (= Opp_0_2 6)))
 (let (($x720 (= Opp_5_2 1)))
 (let (($x721 (and (= Per_0_2 Per_5_2) $x720)))
 (=> $x721 $x718)))))
(assert
 (let (($x718 (= Opp_0_2 6)))
 (=> $x718 (xor Home_0_2 Home_5_2))))
(assert
 (let (($x735 (= Opp_5_3 1)))
 (let (($x736 (and (= Per_0_3 Per_5_3) $x735)))
 (let (($x733 (= Opp_0_3 6)))
 (=> $x733 $x736)))))
(assert
 (let (($x733 (= Opp_0_3 6)))
 (let (($x735 (= Opp_5_3 1)))
 (let (($x736 (and (= Per_0_3 Per_5_3) $x735)))
 (=> $x736 $x733)))))
(assert
 (let (($x733 (= Opp_0_3 6)))
 (=> $x733 (xor Home_0_3 Home_5_3))))
(assert
 (let (($x750 (= Opp_5_4 1)))
 (let (($x751 (and (= Per_0_4 Per_5_4) $x750)))
 (let (($x748 (= Opp_0_4 6)))
 (=> $x748 $x751)))))
(assert
 (let (($x748 (= Opp_0_4 6)))
 (let (($x750 (= Opp_5_4 1)))
 (let (($x751 (and (= Per_0_4 Per_5_4) $x750)))
 (=> $x751 $x748)))))
(assert
 (let (($x748 (= Opp_0_4 6)))
 (=> $x748 (xor Home_0_4 Home_5_4))))
(assert
 (let (($x388 (= Opp_0_0 2)))
 (let (($x764 (and (= Per_1_0 Per_0_0) $x388)))
 (let (($x390 (= Opp_1_0 1)))
 (=> $x390 $x764)))))
(assert
 (let (($x390 (= Opp_1_0 1)))
 (let (($x388 (= Opp_0_0 2)))
 (let (($x764 (and (= Per_1_0 Per_0_0) $x388)))
 (=> $x764 $x390)))))
(assert
 (let (($x390 (= Opp_1_0 1)))
 (=> $x390 (xor Home_1_0 Home_0_0))))
(assert
 (let (($x403 (= Opp_0_1 2)))
 (let (($x777 (and (= Per_1_1 Per_0_1) $x403)))
 (let (($x405 (= Opp_1_1 1)))
 (=> $x405 $x777)))))
(assert
 (let (($x405 (= Opp_1_1 1)))
 (let (($x403 (= Opp_0_1 2)))
 (let (($x777 (and (= Per_1_1 Per_0_1) $x403)))
 (=> $x777 $x405)))))
(assert
 (let (($x405 (= Opp_1_1 1)))
 (=> $x405 (xor Home_1_1 Home_0_1))))
(assert
 (let (($x418 (= Opp_0_2 2)))
 (let (($x790 (and (= Per_1_2 Per_0_2) $x418)))
 (let (($x420 (= Opp_1_2 1)))
 (=> $x420 $x790)))))
(assert
 (let (($x420 (= Opp_1_2 1)))
 (let (($x418 (= Opp_0_2 2)))
 (let (($x790 (and (= Per_1_2 Per_0_2) $x418)))
 (=> $x790 $x420)))))
(assert
 (let (($x420 (= Opp_1_2 1)))
 (=> $x420 (xor Home_1_2 Home_0_2))))
(assert
 (let (($x433 (= Opp_0_3 2)))
 (let (($x803 (and (= Per_1_3 Per_0_3) $x433)))
 (let (($x435 (= Opp_1_3 1)))
 (=> $x435 $x803)))))
(assert
 (let (($x435 (= Opp_1_3 1)))
 (let (($x433 (= Opp_0_3 2)))
 (let (($x803 (and (= Per_1_3 Per_0_3) $x433)))
 (=> $x803 $x435)))))
(assert
 (let (($x435 (= Opp_1_3 1)))
 (=> $x435 (xor Home_1_3 Home_0_3))))
(assert
 (let (($x448 (= Opp_0_4 2)))
 (let (($x816 (and (= Per_1_4 Per_0_4) $x448)))
 (let (($x450 (= Opp_1_4 1)))
 (=> $x450 $x816)))))
(assert
 (let (($x450 (= Opp_1_4 1)))
 (let (($x448 (= Opp_0_4 2)))
 (let (($x816 (and (= Per_1_4 Per_0_4) $x448)))
 (=> $x816 $x450)))))
(assert
 (let (($x450 (= Opp_1_4 1)))
 (=> $x450 (xor Home_1_4 Home_0_4))))
(assert
 (let (($x830 (= Opp_2_0 2)))
 (let (($x831 (and (= Per_1_0 Per_2_0) $x830)))
 (let (($x828 (= Opp_1_0 3)))
 (=> $x828 $x831)))))
(assert
 (let (($x828 (= Opp_1_0 3)))
 (let (($x830 (= Opp_2_0 2)))
 (let (($x831 (and (= Per_1_0 Per_2_0) $x830)))
 (=> $x831 $x828)))))
(assert
 (let (($x828 (= Opp_1_0 3)))
 (=> $x828 (xor Home_1_0 Home_2_0))))
(assert
 (let (($x845 (= Opp_2_1 2)))
 (let (($x846 (and (= Per_1_1 Per_2_1) $x845)))
 (let (($x843 (= Opp_1_1 3)))
 (=> $x843 $x846)))))
(assert
 (let (($x843 (= Opp_1_1 3)))
 (let (($x845 (= Opp_2_1 2)))
 (let (($x846 (and (= Per_1_1 Per_2_1) $x845)))
 (=> $x846 $x843)))))
(assert
 (let (($x843 (= Opp_1_1 3)))
 (=> $x843 (xor Home_1_1 Home_2_1))))
(assert
 (let (($x860 (= Opp_2_2 2)))
 (let (($x861 (and (= Per_1_2 Per_2_2) $x860)))
 (let (($x858 (= Opp_1_2 3)))
 (=> $x858 $x861)))))
(assert
 (let (($x858 (= Opp_1_2 3)))
 (let (($x860 (= Opp_2_2 2)))
 (let (($x861 (and (= Per_1_2 Per_2_2) $x860)))
 (=> $x861 $x858)))))
(assert
 (let (($x858 (= Opp_1_2 3)))
 (=> $x858 (xor Home_1_2 Home_2_2))))
(assert
 (let (($x875 (= Opp_2_3 2)))
 (let (($x876 (and (= Per_1_3 Per_2_3) $x875)))
 (let (($x873 (= Opp_1_3 3)))
 (=> $x873 $x876)))))
(assert
 (let (($x873 (= Opp_1_3 3)))
 (let (($x875 (= Opp_2_3 2)))
 (let (($x876 (and (= Per_1_3 Per_2_3) $x875)))
 (=> $x876 $x873)))))
(assert
 (let (($x873 (= Opp_1_3 3)))
 (=> $x873 (xor Home_1_3 Home_2_3))))
(assert
 (let (($x890 (= Opp_2_4 2)))
 (let (($x891 (and (= Per_1_4 Per_2_4) $x890)))
 (let (($x888 (= Opp_1_4 3)))
 (=> $x888 $x891)))))
(assert
 (let (($x888 (= Opp_1_4 3)))
 (let (($x890 (= Opp_2_4 2)))
 (let (($x891 (and (= Per_1_4 Per_2_4) $x890)))
 (=> $x891 $x888)))))
(assert
 (let (($x888 (= Opp_1_4 3)))
 (=> $x888 (xor Home_1_4 Home_2_4))))
(assert
 (let (($x905 (= Opp_3_0 2)))
 (let (($x906 (and (= Per_1_0 Per_3_0) $x905)))
 (let (($x903 (= Opp_1_0 4)))
 (=> $x903 $x906)))))
(assert
 (let (($x903 (= Opp_1_0 4)))
 (let (($x905 (= Opp_3_0 2)))
 (let (($x906 (and (= Per_1_0 Per_3_0) $x905)))
 (=> $x906 $x903)))))
(assert
 (let (($x903 (= Opp_1_0 4)))
 (=> $x903 (xor Home_1_0 Home_3_0))))
(assert
 (let (($x920 (= Opp_3_1 2)))
 (let (($x921 (and (= Per_1_1 Per_3_1) $x920)))
 (let (($x918 (= Opp_1_1 4)))
 (=> $x918 $x921)))))
(assert
 (let (($x918 (= Opp_1_1 4)))
 (let (($x920 (= Opp_3_1 2)))
 (let (($x921 (and (= Per_1_1 Per_3_1) $x920)))
 (=> $x921 $x918)))))
(assert
 (let (($x918 (= Opp_1_1 4)))
 (=> $x918 (xor Home_1_1 Home_3_1))))
(assert
 (let (($x935 (= Opp_3_2 2)))
 (let (($x936 (and (= Per_1_2 Per_3_2) $x935)))
 (let (($x933 (= Opp_1_2 4)))
 (=> $x933 $x936)))))
(assert
 (let (($x933 (= Opp_1_2 4)))
 (let (($x935 (= Opp_3_2 2)))
 (let (($x936 (and (= Per_1_2 Per_3_2) $x935)))
 (=> $x936 $x933)))))
(assert
 (let (($x933 (= Opp_1_2 4)))
 (=> $x933 (xor Home_1_2 Home_3_2))))
(assert
 (let (($x950 (= Opp_3_3 2)))
 (let (($x951 (and (= Per_1_3 Per_3_3) $x950)))
 (let (($x948 (= Opp_1_3 4)))
 (=> $x948 $x951)))))
(assert
 (let (($x948 (= Opp_1_3 4)))
 (let (($x950 (= Opp_3_3 2)))
 (let (($x951 (and (= Per_1_3 Per_3_3) $x950)))
 (=> $x951 $x948)))))
(assert
 (let (($x948 (= Opp_1_3 4)))
 (=> $x948 (xor Home_1_3 Home_3_3))))
(assert
 (let (($x965 (= Opp_3_4 2)))
 (let (($x966 (and (= Per_1_4 Per_3_4) $x965)))
 (let (($x963 (= Opp_1_4 4)))
 (=> $x963 $x966)))))
(assert
 (let (($x963 (= Opp_1_4 4)))
 (let (($x965 (= Opp_3_4 2)))
 (let (($x966 (and (= Per_1_4 Per_3_4) $x965)))
 (=> $x966 $x963)))))
(assert
 (let (($x963 (= Opp_1_4 4)))
 (=> $x963 (xor Home_1_4 Home_3_4))))
(assert
 (let (($x980 (= Opp_4_0 2)))
 (let (($x981 (and (= Per_1_0 Per_4_0) $x980)))
 (let (($x978 (= Opp_1_0 5)))
 (=> $x978 $x981)))))
(assert
 (let (($x978 (= Opp_1_0 5)))
 (let (($x980 (= Opp_4_0 2)))
 (let (($x981 (and (= Per_1_0 Per_4_0) $x980)))
 (=> $x981 $x978)))))
(assert
 (let (($x978 (= Opp_1_0 5)))
 (=> $x978 (xor Home_1_0 Home_4_0))))
(assert
 (let (($x995 (= Opp_4_1 2)))
 (let (($x996 (and (= Per_1_1 Per_4_1) $x995)))
 (let (($x993 (= Opp_1_1 5)))
 (=> $x993 $x996)))))
(assert
 (let (($x993 (= Opp_1_1 5)))
 (let (($x995 (= Opp_4_1 2)))
 (let (($x996 (and (= Per_1_1 Per_4_1) $x995)))
 (=> $x996 $x993)))))
(assert
 (let (($x993 (= Opp_1_1 5)))
 (=> $x993 (xor Home_1_1 Home_4_1))))
(assert
 (let (($x1010 (= Opp_4_2 2)))
 (let (($x1011 (and (= Per_1_2 Per_4_2) $x1010)))
 (let (($x1008 (= Opp_1_2 5)))
 (=> $x1008 $x1011)))))
(assert
 (let (($x1008 (= Opp_1_2 5)))
 (let (($x1010 (= Opp_4_2 2)))
 (let (($x1011 (and (= Per_1_2 Per_4_2) $x1010)))
 (=> $x1011 $x1008)))))
(assert
 (let (($x1008 (= Opp_1_2 5)))
 (=> $x1008 (xor Home_1_2 Home_4_2))))
(assert
 (let (($x1025 (= Opp_4_3 2)))
 (let (($x1026 (and (= Per_1_3 Per_4_3) $x1025)))
 (let (($x1023 (= Opp_1_3 5)))
 (=> $x1023 $x1026)))))
(assert
 (let (($x1023 (= Opp_1_3 5)))
 (let (($x1025 (= Opp_4_3 2)))
 (let (($x1026 (and (= Per_1_3 Per_4_3) $x1025)))
 (=> $x1026 $x1023)))))
(assert
 (let (($x1023 (= Opp_1_3 5)))
 (=> $x1023 (xor Home_1_3 Home_4_3))))
(assert
 (let (($x1040 (= Opp_4_4 2)))
 (let (($x1041 (and (= Per_1_4 Per_4_4) $x1040)))
 (let (($x1038 (= Opp_1_4 5)))
 (=> $x1038 $x1041)))))
(assert
 (let (($x1038 (= Opp_1_4 5)))
 (let (($x1040 (= Opp_4_4 2)))
 (let (($x1041 (and (= Per_1_4 Per_4_4) $x1040)))
 (=> $x1041 $x1038)))))
(assert
 (let (($x1038 (= Opp_1_4 5)))
 (=> $x1038 (xor Home_1_4 Home_4_4))))
(assert
 (let (($x1055 (= Opp_5_0 2)))
 (let (($x1056 (and (= Per_1_0 Per_5_0) $x1055)))
 (let (($x1053 (= Opp_1_0 6)))
 (=> $x1053 $x1056)))))
(assert
 (let (($x1053 (= Opp_1_0 6)))
 (let (($x1055 (= Opp_5_0 2)))
 (let (($x1056 (and (= Per_1_0 Per_5_0) $x1055)))
 (=> $x1056 $x1053)))))
(assert
 (let (($x1053 (= Opp_1_0 6)))
 (=> $x1053 (xor Home_1_0 Home_5_0))))
(assert
 (let (($x1070 (= Opp_5_1 2)))
 (let (($x1071 (and (= Per_1_1 Per_5_1) $x1070)))
 (let (($x1068 (= Opp_1_1 6)))
 (=> $x1068 $x1071)))))
(assert
 (let (($x1068 (= Opp_1_1 6)))
 (let (($x1070 (= Opp_5_1 2)))
 (let (($x1071 (and (= Per_1_1 Per_5_1) $x1070)))
 (=> $x1071 $x1068)))))
(assert
 (let (($x1068 (= Opp_1_1 6)))
 (=> $x1068 (xor Home_1_1 Home_5_1))))
(assert
 (let (($x1085 (= Opp_5_2 2)))
 (let (($x1086 (and (= Per_1_2 Per_5_2) $x1085)))
 (let (($x1083 (= Opp_1_2 6)))
 (=> $x1083 $x1086)))))
(assert
 (let (($x1083 (= Opp_1_2 6)))
 (let (($x1085 (= Opp_5_2 2)))
 (let (($x1086 (and (= Per_1_2 Per_5_2) $x1085)))
 (=> $x1086 $x1083)))))
(assert
 (let (($x1083 (= Opp_1_2 6)))
 (=> $x1083 (xor Home_1_2 Home_5_2))))
(assert
 (let (($x1100 (= Opp_5_3 2)))
 (let (($x1101 (and (= Per_1_3 Per_5_3) $x1100)))
 (let (($x1098 (= Opp_1_3 6)))
 (=> $x1098 $x1101)))))
(assert
 (let (($x1098 (= Opp_1_3 6)))
 (let (($x1100 (= Opp_5_3 2)))
 (let (($x1101 (and (= Per_1_3 Per_5_3) $x1100)))
 (=> $x1101 $x1098)))))
(assert
 (let (($x1098 (= Opp_1_3 6)))
 (=> $x1098 (xor Home_1_3 Home_5_3))))
(assert
 (let (($x1115 (= Opp_5_4 2)))
 (let (($x1116 (and (= Per_1_4 Per_5_4) $x1115)))
 (let (($x1113 (= Opp_1_4 6)))
 (=> $x1113 $x1116)))))
(assert
 (let (($x1113 (= Opp_1_4 6)))
 (let (($x1115 (= Opp_5_4 2)))
 (let (($x1116 (and (= Per_1_4 Per_5_4) $x1115)))
 (=> $x1116 $x1113)))))
(assert
 (let (($x1113 (= Opp_1_4 6)))
 (=> $x1113 (xor Home_1_4 Home_5_4))))
(assert
 (let (($x463 (= Opp_0_0 3)))
 (let (($x1129 (and (= Per_2_0 Per_0_0) $x463)))
 (let (($x465 (= Opp_2_0 1)))
 (=> $x465 $x1129)))))
(assert
 (let (($x465 (= Opp_2_0 1)))
 (let (($x463 (= Opp_0_0 3)))
 (let (($x1129 (and (= Per_2_0 Per_0_0) $x463)))
 (=> $x1129 $x465)))))
(assert
 (let (($x465 (= Opp_2_0 1)))
 (=> $x465 (xor Home_2_0 Home_0_0))))
(assert
 (let (($x478 (= Opp_0_1 3)))
 (let (($x1142 (and (= Per_2_1 Per_0_1) $x478)))
 (let (($x480 (= Opp_2_1 1)))
 (=> $x480 $x1142)))))
(assert
 (let (($x480 (= Opp_2_1 1)))
 (let (($x478 (= Opp_0_1 3)))
 (let (($x1142 (and (= Per_2_1 Per_0_1) $x478)))
 (=> $x1142 $x480)))))
(assert
 (let (($x480 (= Opp_2_1 1)))
 (=> $x480 (xor Home_2_1 Home_0_1))))
(assert
 (let (($x493 (= Opp_0_2 3)))
 (let (($x1155 (and (= Per_2_2 Per_0_2) $x493)))
 (let (($x495 (= Opp_2_2 1)))
 (=> $x495 $x1155)))))
(assert
 (let (($x495 (= Opp_2_2 1)))
 (let (($x493 (= Opp_0_2 3)))
 (let (($x1155 (and (= Per_2_2 Per_0_2) $x493)))
 (=> $x1155 $x495)))))
(assert
 (let (($x495 (= Opp_2_2 1)))
 (=> $x495 (xor Home_2_2 Home_0_2))))
(assert
 (let (($x508 (= Opp_0_3 3)))
 (let (($x1168 (and (= Per_2_3 Per_0_3) $x508)))
 (let (($x510 (= Opp_2_3 1)))
 (=> $x510 $x1168)))))
(assert
 (let (($x510 (= Opp_2_3 1)))
 (let (($x508 (= Opp_0_3 3)))
 (let (($x1168 (and (= Per_2_3 Per_0_3) $x508)))
 (=> $x1168 $x510)))))
(assert
 (let (($x510 (= Opp_2_3 1)))
 (=> $x510 (xor Home_2_3 Home_0_3))))
(assert
 (let (($x523 (= Opp_0_4 3)))
 (let (($x1181 (and (= Per_2_4 Per_0_4) $x523)))
 (let (($x525 (= Opp_2_4 1)))
 (=> $x525 $x1181)))))
(assert
 (let (($x525 (= Opp_2_4 1)))
 (let (($x523 (= Opp_0_4 3)))
 (let (($x1181 (and (= Per_2_4 Per_0_4) $x523)))
 (=> $x1181 $x525)))))
(assert
 (let (($x525 (= Opp_2_4 1)))
 (=> $x525 (xor Home_2_4 Home_0_4))))
(assert
 (let (($x828 (= Opp_1_0 3)))
 (let (($x1194 (and (= Per_2_0 Per_1_0) $x828)))
 (let (($x830 (= Opp_2_0 2)))
 (=> $x830 $x1194)))))
(assert
 (let (($x830 (= Opp_2_0 2)))
 (let (($x828 (= Opp_1_0 3)))
 (let (($x1194 (and (= Per_2_0 Per_1_0) $x828)))
 (=> $x1194 $x830)))))
(assert
 (let (($x830 (= Opp_2_0 2)))
 (=> $x830 (xor Home_2_0 Home_1_0))))
(assert
 (let (($x843 (= Opp_1_1 3)))
 (let (($x1207 (and (= Per_2_1 Per_1_1) $x843)))
 (let (($x845 (= Opp_2_1 2)))
 (=> $x845 $x1207)))))
(assert
 (let (($x845 (= Opp_2_1 2)))
 (let (($x843 (= Opp_1_1 3)))
 (let (($x1207 (and (= Per_2_1 Per_1_1) $x843)))
 (=> $x1207 $x845)))))
(assert
 (let (($x845 (= Opp_2_1 2)))
 (=> $x845 (xor Home_2_1 Home_1_1))))
(assert
 (let (($x858 (= Opp_1_2 3)))
 (let (($x1220 (and (= Per_2_2 Per_1_2) $x858)))
 (let (($x860 (= Opp_2_2 2)))
 (=> $x860 $x1220)))))
(assert
 (let (($x860 (= Opp_2_2 2)))
 (let (($x858 (= Opp_1_2 3)))
 (let (($x1220 (and (= Per_2_2 Per_1_2) $x858)))
 (=> $x1220 $x860)))))
(assert
 (let (($x860 (= Opp_2_2 2)))
 (=> $x860 (xor Home_2_2 Home_1_2))))
(assert
 (let (($x873 (= Opp_1_3 3)))
 (let (($x1233 (and (= Per_2_3 Per_1_3) $x873)))
 (let (($x875 (= Opp_2_3 2)))
 (=> $x875 $x1233)))))
(assert
 (let (($x875 (= Opp_2_3 2)))
 (let (($x873 (= Opp_1_3 3)))
 (let (($x1233 (and (= Per_2_3 Per_1_3) $x873)))
 (=> $x1233 $x875)))))
(assert
 (let (($x875 (= Opp_2_3 2)))
 (=> $x875 (xor Home_2_3 Home_1_3))))
(assert
 (let (($x888 (= Opp_1_4 3)))
 (let (($x1246 (and (= Per_2_4 Per_1_4) $x888)))
 (let (($x890 (= Opp_2_4 2)))
 (=> $x890 $x1246)))))
(assert
 (let (($x890 (= Opp_2_4 2)))
 (let (($x888 (= Opp_1_4 3)))
 (let (($x1246 (and (= Per_2_4 Per_1_4) $x888)))
 (=> $x1246 $x890)))))
(assert
 (let (($x890 (= Opp_2_4 2)))
 (=> $x890 (xor Home_2_4 Home_1_4))))
(assert
 (let (($x1260 (= Opp_3_0 3)))
 (let (($x1261 (and (= Per_2_0 Per_3_0) $x1260)))
 (let (($x1258 (= Opp_2_0 4)))
 (=> $x1258 $x1261)))))
(assert
 (let (($x1258 (= Opp_2_0 4)))
 (let (($x1260 (= Opp_3_0 3)))
 (let (($x1261 (and (= Per_2_0 Per_3_0) $x1260)))
 (=> $x1261 $x1258)))))
(assert
 (let (($x1258 (= Opp_2_0 4)))
 (=> $x1258 (xor Home_2_0 Home_3_0))))
(assert
 (let (($x1275 (= Opp_3_1 3)))
 (let (($x1276 (and (= Per_2_1 Per_3_1) $x1275)))
 (let (($x1273 (= Opp_2_1 4)))
 (=> $x1273 $x1276)))))
(assert
 (let (($x1273 (= Opp_2_1 4)))
 (let (($x1275 (= Opp_3_1 3)))
 (let (($x1276 (and (= Per_2_1 Per_3_1) $x1275)))
 (=> $x1276 $x1273)))))
(assert
 (let (($x1273 (= Opp_2_1 4)))
 (=> $x1273 (xor Home_2_1 Home_3_1))))
(assert
 (let (($x1290 (= Opp_3_2 3)))
 (let (($x1291 (and (= Per_2_2 Per_3_2) $x1290)))
 (let (($x1288 (= Opp_2_2 4)))
 (=> $x1288 $x1291)))))
(assert
 (let (($x1288 (= Opp_2_2 4)))
 (let (($x1290 (= Opp_3_2 3)))
 (let (($x1291 (and (= Per_2_2 Per_3_2) $x1290)))
 (=> $x1291 $x1288)))))
(assert
 (let (($x1288 (= Opp_2_2 4)))
 (=> $x1288 (xor Home_2_2 Home_3_2))))
(assert
 (let (($x1305 (= Opp_3_3 3)))
 (let (($x1306 (and (= Per_2_3 Per_3_3) $x1305)))
 (let (($x1303 (= Opp_2_3 4)))
 (=> $x1303 $x1306)))))
(assert
 (let (($x1303 (= Opp_2_3 4)))
 (let (($x1305 (= Opp_3_3 3)))
 (let (($x1306 (and (= Per_2_3 Per_3_3) $x1305)))
 (=> $x1306 $x1303)))))
(assert
 (let (($x1303 (= Opp_2_3 4)))
 (=> $x1303 (xor Home_2_3 Home_3_3))))
(assert
 (let (($x1320 (= Opp_3_4 3)))
 (let (($x1321 (and (= Per_2_4 Per_3_4) $x1320)))
 (let (($x1318 (= Opp_2_4 4)))
 (=> $x1318 $x1321)))))
(assert
 (let (($x1318 (= Opp_2_4 4)))
 (let (($x1320 (= Opp_3_4 3)))
 (let (($x1321 (and (= Per_2_4 Per_3_4) $x1320)))
 (=> $x1321 $x1318)))))
(assert
 (let (($x1318 (= Opp_2_4 4)))
 (=> $x1318 (xor Home_2_4 Home_3_4))))
(assert
 (let (($x1335 (= Opp_4_0 3)))
 (let (($x1336 (and (= Per_2_0 Per_4_0) $x1335)))
 (let (($x1333 (= Opp_2_0 5)))
 (=> $x1333 $x1336)))))
(assert
 (let (($x1333 (= Opp_2_0 5)))
 (let (($x1335 (= Opp_4_0 3)))
 (let (($x1336 (and (= Per_2_0 Per_4_0) $x1335)))
 (=> $x1336 $x1333)))))
(assert
 (let (($x1333 (= Opp_2_0 5)))
 (=> $x1333 (xor Home_2_0 Home_4_0))))
(assert
 (let (($x1350 (= Opp_4_1 3)))
 (let (($x1351 (and (= Per_2_1 Per_4_1) $x1350)))
 (let (($x1348 (= Opp_2_1 5)))
 (=> $x1348 $x1351)))))
(assert
 (let (($x1348 (= Opp_2_1 5)))
 (let (($x1350 (= Opp_4_1 3)))
 (let (($x1351 (and (= Per_2_1 Per_4_1) $x1350)))
 (=> $x1351 $x1348)))))
(assert
 (let (($x1348 (= Opp_2_1 5)))
 (=> $x1348 (xor Home_2_1 Home_4_1))))
(assert
 (let (($x1365 (= Opp_4_2 3)))
 (let (($x1366 (and (= Per_2_2 Per_4_2) $x1365)))
 (let (($x1363 (= Opp_2_2 5)))
 (=> $x1363 $x1366)))))
(assert
 (let (($x1363 (= Opp_2_2 5)))
 (let (($x1365 (= Opp_4_2 3)))
 (let (($x1366 (and (= Per_2_2 Per_4_2) $x1365)))
 (=> $x1366 $x1363)))))
(assert
 (let (($x1363 (= Opp_2_2 5)))
 (=> $x1363 (xor Home_2_2 Home_4_2))))
(assert
 (let (($x1380 (= Opp_4_3 3)))
 (let (($x1381 (and (= Per_2_3 Per_4_3) $x1380)))
 (let (($x1378 (= Opp_2_3 5)))
 (=> $x1378 $x1381)))))
(assert
 (let (($x1378 (= Opp_2_3 5)))
 (let (($x1380 (= Opp_4_3 3)))
 (let (($x1381 (and (= Per_2_3 Per_4_3) $x1380)))
 (=> $x1381 $x1378)))))
(assert
 (let (($x1378 (= Opp_2_3 5)))
 (=> $x1378 (xor Home_2_3 Home_4_3))))
(assert
 (let (($x1395 (= Opp_4_4 3)))
 (let (($x1396 (and (= Per_2_4 Per_4_4) $x1395)))
 (let (($x1393 (= Opp_2_4 5)))
 (=> $x1393 $x1396)))))
(assert
 (let (($x1393 (= Opp_2_4 5)))
 (let (($x1395 (= Opp_4_4 3)))
 (let (($x1396 (and (= Per_2_4 Per_4_4) $x1395)))
 (=> $x1396 $x1393)))))
(assert
 (let (($x1393 (= Opp_2_4 5)))
 (=> $x1393 (xor Home_2_4 Home_4_4))))
(assert
 (let (($x1410 (= Opp_5_0 3)))
 (let (($x1411 (and (= Per_2_0 Per_5_0) $x1410)))
 (let (($x1408 (= Opp_2_0 6)))
 (=> $x1408 $x1411)))))
(assert
 (let (($x1408 (= Opp_2_0 6)))
 (let (($x1410 (= Opp_5_0 3)))
 (let (($x1411 (and (= Per_2_0 Per_5_0) $x1410)))
 (=> $x1411 $x1408)))))
(assert
 (let (($x1408 (= Opp_2_0 6)))
 (=> $x1408 (xor Home_2_0 Home_5_0))))
(assert
 (let (($x1425 (= Opp_5_1 3)))
 (let (($x1426 (and (= Per_2_1 Per_5_1) $x1425)))
 (let (($x1423 (= Opp_2_1 6)))
 (=> $x1423 $x1426)))))
(assert
 (let (($x1423 (= Opp_2_1 6)))
 (let (($x1425 (= Opp_5_1 3)))
 (let (($x1426 (and (= Per_2_1 Per_5_1) $x1425)))
 (=> $x1426 $x1423)))))
(assert
 (let (($x1423 (= Opp_2_1 6)))
 (=> $x1423 (xor Home_2_1 Home_5_1))))
(assert
 (let (($x1440 (= Opp_5_2 3)))
 (let (($x1441 (and (= Per_2_2 Per_5_2) $x1440)))
 (let (($x1438 (= Opp_2_2 6)))
 (=> $x1438 $x1441)))))
(assert
 (let (($x1438 (= Opp_2_2 6)))
 (let (($x1440 (= Opp_5_2 3)))
 (let (($x1441 (and (= Per_2_2 Per_5_2) $x1440)))
 (=> $x1441 $x1438)))))
(assert
 (let (($x1438 (= Opp_2_2 6)))
 (=> $x1438 (xor Home_2_2 Home_5_2))))
(assert
 (let (($x1455 (= Opp_5_3 3)))
 (let (($x1456 (and (= Per_2_3 Per_5_3) $x1455)))
 (let (($x1453 (= Opp_2_3 6)))
 (=> $x1453 $x1456)))))
(assert
 (let (($x1453 (= Opp_2_3 6)))
 (let (($x1455 (= Opp_5_3 3)))
 (let (($x1456 (and (= Per_2_3 Per_5_3) $x1455)))
 (=> $x1456 $x1453)))))
(assert
 (let (($x1453 (= Opp_2_3 6)))
 (=> $x1453 (xor Home_2_3 Home_5_3))))
(assert
 (let (($x1470 (= Opp_5_4 3)))
 (let (($x1471 (and (= Per_2_4 Per_5_4) $x1470)))
 (let (($x1468 (= Opp_2_4 6)))
 (=> $x1468 $x1471)))))
(assert
 (let (($x1468 (= Opp_2_4 6)))
 (let (($x1470 (= Opp_5_4 3)))
 (let (($x1471 (and (= Per_2_4 Per_5_4) $x1470)))
 (=> $x1471 $x1468)))))
(assert
 (let (($x1468 (= Opp_2_4 6)))
 (=> $x1468 (xor Home_2_4 Home_5_4))))
(assert
 (let (($x538 (= Opp_0_0 4)))
 (let (($x1484 (and (= Per_3_0 Per_0_0) $x538)))
 (let (($x540 (= Opp_3_0 1)))
 (=> $x540 $x1484)))))
(assert
 (let (($x540 (= Opp_3_0 1)))
 (let (($x538 (= Opp_0_0 4)))
 (let (($x1484 (and (= Per_3_0 Per_0_0) $x538)))
 (=> $x1484 $x540)))))
(assert
 (let (($x540 (= Opp_3_0 1)))
 (=> $x540 (xor Home_3_0 Home_0_0))))
(assert
 (let (($x553 (= Opp_0_1 4)))
 (let (($x1497 (and (= Per_3_1 Per_0_1) $x553)))
 (let (($x555 (= Opp_3_1 1)))
 (=> $x555 $x1497)))))
(assert
 (let (($x555 (= Opp_3_1 1)))
 (let (($x553 (= Opp_0_1 4)))
 (let (($x1497 (and (= Per_3_1 Per_0_1) $x553)))
 (=> $x1497 $x555)))))
(assert
 (let (($x555 (= Opp_3_1 1)))
 (=> $x555 (xor Home_3_1 Home_0_1))))
(assert
 (let (($x568 (= Opp_0_2 4)))
 (let (($x1510 (and (= Per_3_2 Per_0_2) $x568)))
 (let (($x570 (= Opp_3_2 1)))
 (=> $x570 $x1510)))))
(assert
 (let (($x570 (= Opp_3_2 1)))
 (let (($x568 (= Opp_0_2 4)))
 (let (($x1510 (and (= Per_3_2 Per_0_2) $x568)))
 (=> $x1510 $x570)))))
(assert
 (let (($x570 (= Opp_3_2 1)))
 (=> $x570 (xor Home_3_2 Home_0_2))))
(assert
 (let (($x583 (= Opp_0_3 4)))
 (let (($x1523 (and (= Per_3_3 Per_0_3) $x583)))
 (let (($x585 (= Opp_3_3 1)))
 (=> $x585 $x1523)))))
(assert
 (let (($x585 (= Opp_3_3 1)))
 (let (($x583 (= Opp_0_3 4)))
 (let (($x1523 (and (= Per_3_3 Per_0_3) $x583)))
 (=> $x1523 $x585)))))
(assert
 (let (($x585 (= Opp_3_3 1)))
 (=> $x585 (xor Home_3_3 Home_0_3))))
(assert
 (let (($x598 (= Opp_0_4 4)))
 (let (($x1536 (and (= Per_3_4 Per_0_4) $x598)))
 (let (($x600 (= Opp_3_4 1)))
 (=> $x600 $x1536)))))
(assert
 (let (($x600 (= Opp_3_4 1)))
 (let (($x598 (= Opp_0_4 4)))
 (let (($x1536 (and (= Per_3_4 Per_0_4) $x598)))
 (=> $x1536 $x600)))))
(assert
 (let (($x600 (= Opp_3_4 1)))
 (=> $x600 (xor Home_3_4 Home_0_4))))
(assert
 (let (($x903 (= Opp_1_0 4)))
 (let (($x1549 (and (= Per_3_0 Per_1_0) $x903)))
 (let (($x905 (= Opp_3_0 2)))
 (=> $x905 $x1549)))))
(assert
 (let (($x905 (= Opp_3_0 2)))
 (let (($x903 (= Opp_1_0 4)))
 (let (($x1549 (and (= Per_3_0 Per_1_0) $x903)))
 (=> $x1549 $x905)))))
(assert
 (let (($x905 (= Opp_3_0 2)))
 (=> $x905 (xor Home_3_0 Home_1_0))))
(assert
 (let (($x918 (= Opp_1_1 4)))
 (let (($x1562 (and (= Per_3_1 Per_1_1) $x918)))
 (let (($x920 (= Opp_3_1 2)))
 (=> $x920 $x1562)))))
(assert
 (let (($x920 (= Opp_3_1 2)))
 (let (($x918 (= Opp_1_1 4)))
 (let (($x1562 (and (= Per_3_1 Per_1_1) $x918)))
 (=> $x1562 $x920)))))
(assert
 (let (($x920 (= Opp_3_1 2)))
 (=> $x920 (xor Home_3_1 Home_1_1))))
(assert
 (let (($x933 (= Opp_1_2 4)))
 (let (($x1575 (and (= Per_3_2 Per_1_2) $x933)))
 (let (($x935 (= Opp_3_2 2)))
 (=> $x935 $x1575)))))
(assert
 (let (($x935 (= Opp_3_2 2)))
 (let (($x933 (= Opp_1_2 4)))
 (let (($x1575 (and (= Per_3_2 Per_1_2) $x933)))
 (=> $x1575 $x935)))))
(assert
 (let (($x935 (= Opp_3_2 2)))
 (=> $x935 (xor Home_3_2 Home_1_2))))
(assert
 (let (($x948 (= Opp_1_3 4)))
 (let (($x1588 (and (= Per_3_3 Per_1_3) $x948)))
 (let (($x950 (= Opp_3_3 2)))
 (=> $x950 $x1588)))))
(assert
 (let (($x950 (= Opp_3_3 2)))
 (let (($x948 (= Opp_1_3 4)))
 (let (($x1588 (and (= Per_3_3 Per_1_3) $x948)))
 (=> $x1588 $x950)))))
(assert
 (let (($x950 (= Opp_3_3 2)))
 (=> $x950 (xor Home_3_3 Home_1_3))))
(assert
 (let (($x963 (= Opp_1_4 4)))
 (let (($x1601 (and (= Per_3_4 Per_1_4) $x963)))
 (let (($x965 (= Opp_3_4 2)))
 (=> $x965 $x1601)))))
(assert
 (let (($x965 (= Opp_3_4 2)))
 (let (($x963 (= Opp_1_4 4)))
 (let (($x1601 (and (= Per_3_4 Per_1_4) $x963)))
 (=> $x1601 $x965)))))
(assert
 (let (($x965 (= Opp_3_4 2)))
 (=> $x965 (xor Home_3_4 Home_1_4))))
(assert
 (let (($x1258 (= Opp_2_0 4)))
 (let (($x1614 (and (= Per_3_0 Per_2_0) $x1258)))
 (let (($x1260 (= Opp_3_0 3)))
 (=> $x1260 $x1614)))))
(assert
 (let (($x1260 (= Opp_3_0 3)))
 (let (($x1258 (= Opp_2_0 4)))
 (let (($x1614 (and (= Per_3_0 Per_2_0) $x1258)))
 (=> $x1614 $x1260)))))
(assert
 (let (($x1260 (= Opp_3_0 3)))
 (=> $x1260 (xor Home_3_0 Home_2_0))))
(assert
 (let (($x1273 (= Opp_2_1 4)))
 (let (($x1627 (and (= Per_3_1 Per_2_1) $x1273)))
 (let (($x1275 (= Opp_3_1 3)))
 (=> $x1275 $x1627)))))
(assert
 (let (($x1275 (= Opp_3_1 3)))
 (let (($x1273 (= Opp_2_1 4)))
 (let (($x1627 (and (= Per_3_1 Per_2_1) $x1273)))
 (=> $x1627 $x1275)))))
(assert
 (let (($x1275 (= Opp_3_1 3)))
 (=> $x1275 (xor Home_3_1 Home_2_1))))
(assert
 (let (($x1288 (= Opp_2_2 4)))
 (let (($x1640 (and (= Per_3_2 Per_2_2) $x1288)))
 (let (($x1290 (= Opp_3_2 3)))
 (=> $x1290 $x1640)))))
(assert
 (let (($x1290 (= Opp_3_2 3)))
 (let (($x1288 (= Opp_2_2 4)))
 (let (($x1640 (and (= Per_3_2 Per_2_2) $x1288)))
 (=> $x1640 $x1290)))))
(assert
 (let (($x1290 (= Opp_3_2 3)))
 (=> $x1290 (xor Home_3_2 Home_2_2))))
(assert
 (let (($x1303 (= Opp_2_3 4)))
 (let (($x1653 (and (= Per_3_3 Per_2_3) $x1303)))
 (let (($x1305 (= Opp_3_3 3)))
 (=> $x1305 $x1653)))))
(assert
 (let (($x1305 (= Opp_3_3 3)))
 (let (($x1303 (= Opp_2_3 4)))
 (let (($x1653 (and (= Per_3_3 Per_2_3) $x1303)))
 (=> $x1653 $x1305)))))
(assert
 (let (($x1305 (= Opp_3_3 3)))
 (=> $x1305 (xor Home_3_3 Home_2_3))))
(assert
 (let (($x1318 (= Opp_2_4 4)))
 (let (($x1666 (and (= Per_3_4 Per_2_4) $x1318)))
 (let (($x1320 (= Opp_3_4 3)))
 (=> $x1320 $x1666)))))
(assert
 (let (($x1320 (= Opp_3_4 3)))
 (let (($x1318 (= Opp_2_4 4)))
 (let (($x1666 (and (= Per_3_4 Per_2_4) $x1318)))
 (=> $x1666 $x1320)))))
(assert
 (let (($x1320 (= Opp_3_4 3)))
 (=> $x1320 (xor Home_3_4 Home_2_4))))
(assert
 (let (($x1680 (= Opp_4_0 4)))
 (let (($x1681 (and (= Per_3_0 Per_4_0) $x1680)))
 (let (($x1678 (= Opp_3_0 5)))
 (=> $x1678 $x1681)))))
(assert
 (let (($x1678 (= Opp_3_0 5)))
 (let (($x1680 (= Opp_4_0 4)))
 (let (($x1681 (and (= Per_3_0 Per_4_0) $x1680)))
 (=> $x1681 $x1678)))))
(assert
 (let (($x1678 (= Opp_3_0 5)))
 (=> $x1678 (xor Home_3_0 Home_4_0))))
(assert
 (let (($x1695 (= Opp_4_1 4)))
 (let (($x1696 (and (= Per_3_1 Per_4_1) $x1695)))
 (let (($x1693 (= Opp_3_1 5)))
 (=> $x1693 $x1696)))))
(assert
 (let (($x1693 (= Opp_3_1 5)))
 (let (($x1695 (= Opp_4_1 4)))
 (let (($x1696 (and (= Per_3_1 Per_4_1) $x1695)))
 (=> $x1696 $x1693)))))
(assert
 (let (($x1693 (= Opp_3_1 5)))
 (=> $x1693 (xor Home_3_1 Home_4_1))))
(assert
 (let (($x1710 (= Opp_4_2 4)))
 (let (($x1711 (and (= Per_3_2 Per_4_2) $x1710)))
 (let (($x1708 (= Opp_3_2 5)))
 (=> $x1708 $x1711)))))
(assert
 (let (($x1708 (= Opp_3_2 5)))
 (let (($x1710 (= Opp_4_2 4)))
 (let (($x1711 (and (= Per_3_2 Per_4_2) $x1710)))
 (=> $x1711 $x1708)))))
(assert
 (let (($x1708 (= Opp_3_2 5)))
 (=> $x1708 (xor Home_3_2 Home_4_2))))
(assert
 (let (($x1725 (= Opp_4_3 4)))
 (let (($x1726 (and (= Per_3_3 Per_4_3) $x1725)))
 (let (($x1723 (= Opp_3_3 5)))
 (=> $x1723 $x1726)))))
(assert
 (let (($x1723 (= Opp_3_3 5)))
 (let (($x1725 (= Opp_4_3 4)))
 (let (($x1726 (and (= Per_3_3 Per_4_3) $x1725)))
 (=> $x1726 $x1723)))))
(assert
 (let (($x1723 (= Opp_3_3 5)))
 (=> $x1723 (xor Home_3_3 Home_4_3))))
(assert
 (let (($x1740 (= Opp_4_4 4)))
 (let (($x1741 (and (= Per_3_4 Per_4_4) $x1740)))
 (let (($x1738 (= Opp_3_4 5)))
 (=> $x1738 $x1741)))))
(assert
 (let (($x1738 (= Opp_3_4 5)))
 (let (($x1740 (= Opp_4_4 4)))
 (let (($x1741 (and (= Per_3_4 Per_4_4) $x1740)))
 (=> $x1741 $x1738)))))
(assert
 (let (($x1738 (= Opp_3_4 5)))
 (=> $x1738 (xor Home_3_4 Home_4_4))))
(assert
 (let (($x1755 (= Opp_5_0 4)))
 (let (($x1756 (and (= Per_3_0 Per_5_0) $x1755)))
 (let (($x1753 (= Opp_3_0 6)))
 (=> $x1753 $x1756)))))
(assert
 (let (($x1753 (= Opp_3_0 6)))
 (let (($x1755 (= Opp_5_0 4)))
 (let (($x1756 (and (= Per_3_0 Per_5_0) $x1755)))
 (=> $x1756 $x1753)))))
(assert
 (let (($x1753 (= Opp_3_0 6)))
 (=> $x1753 (xor Home_3_0 Home_5_0))))
(assert
 (let (($x1770 (= Opp_5_1 4)))
 (let (($x1771 (and (= Per_3_1 Per_5_1) $x1770)))
 (let (($x1768 (= Opp_3_1 6)))
 (=> $x1768 $x1771)))))
(assert
 (let (($x1768 (= Opp_3_1 6)))
 (let (($x1770 (= Opp_5_1 4)))
 (let (($x1771 (and (= Per_3_1 Per_5_1) $x1770)))
 (=> $x1771 $x1768)))))
(assert
 (let (($x1768 (= Opp_3_1 6)))
 (=> $x1768 (xor Home_3_1 Home_5_1))))
(assert
 (let (($x1785 (= Opp_5_2 4)))
 (let (($x1786 (and (= Per_3_2 Per_5_2) $x1785)))
 (let (($x1783 (= Opp_3_2 6)))
 (=> $x1783 $x1786)))))
(assert
 (let (($x1783 (= Opp_3_2 6)))
 (let (($x1785 (= Opp_5_2 4)))
 (let (($x1786 (and (= Per_3_2 Per_5_2) $x1785)))
 (=> $x1786 $x1783)))))
(assert
 (let (($x1783 (= Opp_3_2 6)))
 (=> $x1783 (xor Home_3_2 Home_5_2))))
(assert
 (let (($x1800 (= Opp_5_3 4)))
 (let (($x1801 (and (= Per_3_3 Per_5_3) $x1800)))
 (let (($x1798 (= Opp_3_3 6)))
 (=> $x1798 $x1801)))))
(assert
 (let (($x1798 (= Opp_3_3 6)))
 (let (($x1800 (= Opp_5_3 4)))
 (let (($x1801 (and (= Per_3_3 Per_5_3) $x1800)))
 (=> $x1801 $x1798)))))
(assert
 (let (($x1798 (= Opp_3_3 6)))
 (=> $x1798 (xor Home_3_3 Home_5_3))))
(assert
 (let (($x1815 (= Opp_5_4 4)))
 (let (($x1816 (and (= Per_3_4 Per_5_4) $x1815)))
 (let (($x1813 (= Opp_3_4 6)))
 (=> $x1813 $x1816)))))
(assert
 (let (($x1813 (= Opp_3_4 6)))
 (let (($x1815 (= Opp_5_4 4)))
 (let (($x1816 (and (= Per_3_4 Per_5_4) $x1815)))
 (=> $x1816 $x1813)))))
(assert
 (let (($x1813 (= Opp_3_4 6)))
 (=> $x1813 (xor Home_3_4 Home_5_4))))
(assert
 (let (($x613 (= Opp_0_0 5)))
 (let (($x1829 (and (= Per_4_0 Per_0_0) $x613)))
 (let (($x615 (= Opp_4_0 1)))
 (=> $x615 $x1829)))))
(assert
 (let (($x615 (= Opp_4_0 1)))
 (let (($x613 (= Opp_0_0 5)))
 (let (($x1829 (and (= Per_4_0 Per_0_0) $x613)))
 (=> $x1829 $x615)))))
(assert
 (let (($x615 (= Opp_4_0 1)))
 (=> $x615 (xor Home_4_0 Home_0_0))))
(assert
 (let (($x628 (= Opp_0_1 5)))
 (let (($x1842 (and (= Per_4_1 Per_0_1) $x628)))
 (let (($x630 (= Opp_4_1 1)))
 (=> $x630 $x1842)))))
(assert
 (let (($x630 (= Opp_4_1 1)))
 (let (($x628 (= Opp_0_1 5)))
 (let (($x1842 (and (= Per_4_1 Per_0_1) $x628)))
 (=> $x1842 $x630)))))
(assert
 (let (($x630 (= Opp_4_1 1)))
 (=> $x630 (xor Home_4_1 Home_0_1))))
(assert
 (let (($x643 (= Opp_0_2 5)))
 (let (($x1855 (and (= Per_4_2 Per_0_2) $x643)))
 (let (($x645 (= Opp_4_2 1)))
 (=> $x645 $x1855)))))
(assert
 (let (($x645 (= Opp_4_2 1)))
 (let (($x643 (= Opp_0_2 5)))
 (let (($x1855 (and (= Per_4_2 Per_0_2) $x643)))
 (=> $x1855 $x645)))))
(assert
 (let (($x645 (= Opp_4_2 1)))
 (=> $x645 (xor Home_4_2 Home_0_2))))
(assert
 (let (($x658 (= Opp_0_3 5)))
 (let (($x1868 (and (= Per_4_3 Per_0_3) $x658)))
 (let (($x660 (= Opp_4_3 1)))
 (=> $x660 $x1868)))))
(assert
 (let (($x660 (= Opp_4_3 1)))
 (let (($x658 (= Opp_0_3 5)))
 (let (($x1868 (and (= Per_4_3 Per_0_3) $x658)))
 (=> $x1868 $x660)))))
(assert
 (let (($x660 (= Opp_4_3 1)))
 (=> $x660 (xor Home_4_3 Home_0_3))))
(assert
 (let (($x673 (= Opp_0_4 5)))
 (let (($x1881 (and (= Per_4_4 Per_0_4) $x673)))
 (let (($x675 (= Opp_4_4 1)))
 (=> $x675 $x1881)))))
(assert
 (let (($x675 (= Opp_4_4 1)))
 (let (($x673 (= Opp_0_4 5)))
 (let (($x1881 (and (= Per_4_4 Per_0_4) $x673)))
 (=> $x1881 $x675)))))
(assert
 (let (($x675 (= Opp_4_4 1)))
 (=> $x675 (xor Home_4_4 Home_0_4))))
(assert
 (let (($x978 (= Opp_1_0 5)))
 (let (($x1894 (and (= Per_4_0 Per_1_0) $x978)))
 (let (($x980 (= Opp_4_0 2)))
 (=> $x980 $x1894)))))
(assert
 (let (($x980 (= Opp_4_0 2)))
 (let (($x978 (= Opp_1_0 5)))
 (let (($x1894 (and (= Per_4_0 Per_1_0) $x978)))
 (=> $x1894 $x980)))))
(assert
 (let (($x980 (= Opp_4_0 2)))
 (=> $x980 (xor Home_4_0 Home_1_0))))
(assert
 (let (($x993 (= Opp_1_1 5)))
 (let (($x1907 (and (= Per_4_1 Per_1_1) $x993)))
 (let (($x995 (= Opp_4_1 2)))
 (=> $x995 $x1907)))))
(assert
 (let (($x995 (= Opp_4_1 2)))
 (let (($x993 (= Opp_1_1 5)))
 (let (($x1907 (and (= Per_4_1 Per_1_1) $x993)))
 (=> $x1907 $x995)))))
(assert
 (let (($x995 (= Opp_4_1 2)))
 (=> $x995 (xor Home_4_1 Home_1_1))))
(assert
 (let (($x1008 (= Opp_1_2 5)))
 (let (($x1920 (and (= Per_4_2 Per_1_2) $x1008)))
 (let (($x1010 (= Opp_4_2 2)))
 (=> $x1010 $x1920)))))
(assert
 (let (($x1010 (= Opp_4_2 2)))
 (let (($x1008 (= Opp_1_2 5)))
 (let (($x1920 (and (= Per_4_2 Per_1_2) $x1008)))
 (=> $x1920 $x1010)))))
(assert
 (let (($x1010 (= Opp_4_2 2)))
 (=> $x1010 (xor Home_4_2 Home_1_2))))
(assert
 (let (($x1023 (= Opp_1_3 5)))
 (let (($x1933 (and (= Per_4_3 Per_1_3) $x1023)))
 (let (($x1025 (= Opp_4_3 2)))
 (=> $x1025 $x1933)))))
(assert
 (let (($x1025 (= Opp_4_3 2)))
 (let (($x1023 (= Opp_1_3 5)))
 (let (($x1933 (and (= Per_4_3 Per_1_3) $x1023)))
 (=> $x1933 $x1025)))))
(assert
 (let (($x1025 (= Opp_4_3 2)))
 (=> $x1025 (xor Home_4_3 Home_1_3))))
(assert
 (let (($x1038 (= Opp_1_4 5)))
 (let (($x1946 (and (= Per_4_4 Per_1_4) $x1038)))
 (let (($x1040 (= Opp_4_4 2)))
 (=> $x1040 $x1946)))))
(assert
 (let (($x1040 (= Opp_4_4 2)))
 (let (($x1038 (= Opp_1_4 5)))
 (let (($x1946 (and (= Per_4_4 Per_1_4) $x1038)))
 (=> $x1946 $x1040)))))
(assert
 (let (($x1040 (= Opp_4_4 2)))
 (=> $x1040 (xor Home_4_4 Home_1_4))))
(assert
 (let (($x1333 (= Opp_2_0 5)))
 (let (($x1959 (and (= Per_4_0 Per_2_0) $x1333)))
 (let (($x1335 (= Opp_4_0 3)))
 (=> $x1335 $x1959)))))
(assert
 (let (($x1335 (= Opp_4_0 3)))
 (let (($x1333 (= Opp_2_0 5)))
 (let (($x1959 (and (= Per_4_0 Per_2_0) $x1333)))
 (=> $x1959 $x1335)))))
(assert
 (let (($x1335 (= Opp_4_0 3)))
 (=> $x1335 (xor Home_4_0 Home_2_0))))
(assert
 (let (($x1348 (= Opp_2_1 5)))
 (let (($x1972 (and (= Per_4_1 Per_2_1) $x1348)))
 (let (($x1350 (= Opp_4_1 3)))
 (=> $x1350 $x1972)))))
(assert
 (let (($x1350 (= Opp_4_1 3)))
 (let (($x1348 (= Opp_2_1 5)))
 (let (($x1972 (and (= Per_4_1 Per_2_1) $x1348)))
 (=> $x1972 $x1350)))))
(assert
 (let (($x1350 (= Opp_4_1 3)))
 (=> $x1350 (xor Home_4_1 Home_2_1))))
(assert
 (let (($x1363 (= Opp_2_2 5)))
 (let (($x1985 (and (= Per_4_2 Per_2_2) $x1363)))
 (let (($x1365 (= Opp_4_2 3)))
 (=> $x1365 $x1985)))))
(assert
 (let (($x1365 (= Opp_4_2 3)))
 (let (($x1363 (= Opp_2_2 5)))
 (let (($x1985 (and (= Per_4_2 Per_2_2) $x1363)))
 (=> $x1985 $x1365)))))
(assert
 (let (($x1365 (= Opp_4_2 3)))
 (=> $x1365 (xor Home_4_2 Home_2_2))))
(assert
 (let (($x1378 (= Opp_2_3 5)))
 (let (($x1998 (and (= Per_4_3 Per_2_3) $x1378)))
 (let (($x1380 (= Opp_4_3 3)))
 (=> $x1380 $x1998)))))
(assert
 (let (($x1380 (= Opp_4_3 3)))
 (let (($x1378 (= Opp_2_3 5)))
 (let (($x1998 (and (= Per_4_3 Per_2_3) $x1378)))
 (=> $x1998 $x1380)))))
(assert
 (let (($x1380 (= Opp_4_3 3)))
 (=> $x1380 (xor Home_4_3 Home_2_3))))
(assert
 (let (($x1393 (= Opp_2_4 5)))
 (let (($x2011 (and (= Per_4_4 Per_2_4) $x1393)))
 (let (($x1395 (= Opp_4_4 3)))
 (=> $x1395 $x2011)))))
(assert
 (let (($x1395 (= Opp_4_4 3)))
 (let (($x1393 (= Opp_2_4 5)))
 (let (($x2011 (and (= Per_4_4 Per_2_4) $x1393)))
 (=> $x2011 $x1395)))))
(assert
 (let (($x1395 (= Opp_4_4 3)))
 (=> $x1395 (xor Home_4_4 Home_2_4))))
(assert
 (let (($x1678 (= Opp_3_0 5)))
 (let (($x2024 (and (= Per_4_0 Per_3_0) $x1678)))
 (let (($x1680 (= Opp_4_0 4)))
 (=> $x1680 $x2024)))))
(assert
 (let (($x1680 (= Opp_4_0 4)))
 (let (($x1678 (= Opp_3_0 5)))
 (let (($x2024 (and (= Per_4_0 Per_3_0) $x1678)))
 (=> $x2024 $x1680)))))
(assert
 (let (($x1680 (= Opp_4_0 4)))
 (=> $x1680 (xor Home_4_0 Home_3_0))))
(assert
 (let (($x1693 (= Opp_3_1 5)))
 (let (($x2037 (and (= Per_4_1 Per_3_1) $x1693)))
 (let (($x1695 (= Opp_4_1 4)))
 (=> $x1695 $x2037)))))
(assert
 (let (($x1695 (= Opp_4_1 4)))
 (let (($x1693 (= Opp_3_1 5)))
 (let (($x2037 (and (= Per_4_1 Per_3_1) $x1693)))
 (=> $x2037 $x1695)))))
(assert
 (let (($x1695 (= Opp_4_1 4)))
 (=> $x1695 (xor Home_4_1 Home_3_1))))
(assert
 (let (($x1708 (= Opp_3_2 5)))
 (let (($x2050 (and (= Per_4_2 Per_3_2) $x1708)))
 (let (($x1710 (= Opp_4_2 4)))
 (=> $x1710 $x2050)))))
(assert
 (let (($x1710 (= Opp_4_2 4)))
 (let (($x1708 (= Opp_3_2 5)))
 (let (($x2050 (and (= Per_4_2 Per_3_2) $x1708)))
 (=> $x2050 $x1710)))))
(assert
 (let (($x1710 (= Opp_4_2 4)))
 (=> $x1710 (xor Home_4_2 Home_3_2))))
(assert
 (let (($x1723 (= Opp_3_3 5)))
 (let (($x2063 (and (= Per_4_3 Per_3_3) $x1723)))
 (let (($x1725 (= Opp_4_3 4)))
 (=> $x1725 $x2063)))))
(assert
 (let (($x1725 (= Opp_4_3 4)))
 (let (($x1723 (= Opp_3_3 5)))
 (let (($x2063 (and (= Per_4_3 Per_3_3) $x1723)))
 (=> $x2063 $x1725)))))
(assert
 (let (($x1725 (= Opp_4_3 4)))
 (=> $x1725 (xor Home_4_3 Home_3_3))))
(assert
 (let (($x1738 (= Opp_3_4 5)))
 (let (($x2076 (and (= Per_4_4 Per_3_4) $x1738)))
 (let (($x1740 (= Opp_4_4 4)))
 (=> $x1740 $x2076)))))
(assert
 (let (($x1740 (= Opp_4_4 4)))
 (let (($x1738 (= Opp_3_4 5)))
 (let (($x2076 (and (= Per_4_4 Per_3_4) $x1738)))
 (=> $x2076 $x1740)))))
(assert
 (let (($x1740 (= Opp_4_4 4)))
 (=> $x1740 (xor Home_4_4 Home_3_4))))
(assert
 (let (($x2090 (= Opp_5_0 5)))
 (let (($x2091 (and (= Per_4_0 Per_5_0) $x2090)))
 (let (($x2088 (= Opp_4_0 6)))
 (=> $x2088 $x2091)))))
(assert
 (let (($x2088 (= Opp_4_0 6)))
 (let (($x2090 (= Opp_5_0 5)))
 (let (($x2091 (and (= Per_4_0 Per_5_0) $x2090)))
 (=> $x2091 $x2088)))))
(assert
 (let (($x2088 (= Opp_4_0 6)))
 (=> $x2088 (xor Home_4_0 Home_5_0))))
(assert
 (let (($x2105 (= Opp_5_1 5)))
 (let (($x2106 (and (= Per_4_1 Per_5_1) $x2105)))
 (let (($x2103 (= Opp_4_1 6)))
 (=> $x2103 $x2106)))))
(assert
 (let (($x2103 (= Opp_4_1 6)))
 (let (($x2105 (= Opp_5_1 5)))
 (let (($x2106 (and (= Per_4_1 Per_5_1) $x2105)))
 (=> $x2106 $x2103)))))
(assert
 (let (($x2103 (= Opp_4_1 6)))
 (=> $x2103 (xor Home_4_1 Home_5_1))))
(assert
 (let (($x2120 (= Opp_5_2 5)))
 (let (($x2121 (and (= Per_4_2 Per_5_2) $x2120)))
 (let (($x2118 (= Opp_4_2 6)))
 (=> $x2118 $x2121)))))
(assert
 (let (($x2118 (= Opp_4_2 6)))
 (let (($x2120 (= Opp_5_2 5)))
 (let (($x2121 (and (= Per_4_2 Per_5_2) $x2120)))
 (=> $x2121 $x2118)))))
(assert
 (let (($x2118 (= Opp_4_2 6)))
 (=> $x2118 (xor Home_4_2 Home_5_2))))
(assert
 (let (($x2135 (= Opp_5_3 5)))
 (let (($x2136 (and (= Per_4_3 Per_5_3) $x2135)))
 (let (($x2133 (= Opp_4_3 6)))
 (=> $x2133 $x2136)))))
(assert
 (let (($x2133 (= Opp_4_3 6)))
 (let (($x2135 (= Opp_5_3 5)))
 (let (($x2136 (and (= Per_4_3 Per_5_3) $x2135)))
 (=> $x2136 $x2133)))))
(assert
 (let (($x2133 (= Opp_4_3 6)))
 (=> $x2133 (xor Home_4_3 Home_5_3))))
(assert
 (let (($x2150 (= Opp_5_4 5)))
 (let (($x2151 (and (= Per_4_4 Per_5_4) $x2150)))
 (let (($x2148 (= Opp_4_4 6)))
 (=> $x2148 $x2151)))))
(assert
 (let (($x2148 (= Opp_4_4 6)))
 (let (($x2150 (= Opp_5_4 5)))
 (let (($x2151 (and (= Per_4_4 Per_5_4) $x2150)))
 (=> $x2151 $x2148)))))
(assert
 (let (($x2148 (= Opp_4_4 6)))
 (=> $x2148 (xor Home_4_4 Home_5_4))))
(assert
 (let (($x688 (= Opp_0_0 6)))
 (let (($x2164 (and (= Per_5_0 Per_0_0) $x688)))
 (let (($x690 (= Opp_5_0 1)))
 (=> $x690 $x2164)))))
(assert
 (let (($x690 (= Opp_5_0 1)))
 (let (($x688 (= Opp_0_0 6)))
 (let (($x2164 (and (= Per_5_0 Per_0_0) $x688)))
 (=> $x2164 $x690)))))
(assert
 (let (($x690 (= Opp_5_0 1)))
 (=> $x690 (xor Home_5_0 Home_0_0))))
(assert
 (let (($x703 (= Opp_0_1 6)))
 (let (($x2177 (and (= Per_5_1 Per_0_1) $x703)))
 (let (($x705 (= Opp_5_1 1)))
 (=> $x705 $x2177)))))
(assert
 (let (($x705 (= Opp_5_1 1)))
 (let (($x703 (= Opp_0_1 6)))
 (let (($x2177 (and (= Per_5_1 Per_0_1) $x703)))
 (=> $x2177 $x705)))))
(assert
 (let (($x705 (= Opp_5_1 1)))
 (=> $x705 (xor Home_5_1 Home_0_1))))
(assert
 (let (($x718 (= Opp_0_2 6)))
 (let (($x2190 (and (= Per_5_2 Per_0_2) $x718)))
 (let (($x720 (= Opp_5_2 1)))
 (=> $x720 $x2190)))))
(assert
 (let (($x720 (= Opp_5_2 1)))
 (let (($x718 (= Opp_0_2 6)))
 (let (($x2190 (and (= Per_5_2 Per_0_2) $x718)))
 (=> $x2190 $x720)))))
(assert
 (let (($x720 (= Opp_5_2 1)))
 (=> $x720 (xor Home_5_2 Home_0_2))))
(assert
 (let (($x733 (= Opp_0_3 6)))
 (let (($x2203 (and (= Per_5_3 Per_0_3) $x733)))
 (let (($x735 (= Opp_5_3 1)))
 (=> $x735 $x2203)))))
(assert
 (let (($x735 (= Opp_5_3 1)))
 (let (($x733 (= Opp_0_3 6)))
 (let (($x2203 (and (= Per_5_3 Per_0_3) $x733)))
 (=> $x2203 $x735)))))
(assert
 (let (($x735 (= Opp_5_3 1)))
 (=> $x735 (xor Home_5_3 Home_0_3))))
(assert
 (let (($x748 (= Opp_0_4 6)))
 (let (($x2216 (and (= Per_5_4 Per_0_4) $x748)))
 (let (($x750 (= Opp_5_4 1)))
 (=> $x750 $x2216)))))
(assert
 (let (($x750 (= Opp_5_4 1)))
 (let (($x748 (= Opp_0_4 6)))
 (let (($x2216 (and (= Per_5_4 Per_0_4) $x748)))
 (=> $x2216 $x750)))))
(assert
 (let (($x750 (= Opp_5_4 1)))
 (=> $x750 (xor Home_5_4 Home_0_4))))
(assert
 (let (($x1053 (= Opp_1_0 6)))
 (let (($x2229 (and (= Per_5_0 Per_1_0) $x1053)))
 (let (($x1055 (= Opp_5_0 2)))
 (=> $x1055 $x2229)))))
(assert
 (let (($x1055 (= Opp_5_0 2)))
 (let (($x1053 (= Opp_1_0 6)))
 (let (($x2229 (and (= Per_5_0 Per_1_0) $x1053)))
 (=> $x2229 $x1055)))))
(assert
 (let (($x1055 (= Opp_5_0 2)))
 (=> $x1055 (xor Home_5_0 Home_1_0))))
(assert
 (let (($x1068 (= Opp_1_1 6)))
 (let (($x2242 (and (= Per_5_1 Per_1_1) $x1068)))
 (let (($x1070 (= Opp_5_1 2)))
 (=> $x1070 $x2242)))))
(assert
 (let (($x1070 (= Opp_5_1 2)))
 (let (($x1068 (= Opp_1_1 6)))
 (let (($x2242 (and (= Per_5_1 Per_1_1) $x1068)))
 (=> $x2242 $x1070)))))
(assert
 (let (($x1070 (= Opp_5_1 2)))
 (=> $x1070 (xor Home_5_1 Home_1_1))))
(assert
 (let (($x1083 (= Opp_1_2 6)))
 (let (($x2255 (and (= Per_5_2 Per_1_2) $x1083)))
 (let (($x1085 (= Opp_5_2 2)))
 (=> $x1085 $x2255)))))
(assert
 (let (($x1085 (= Opp_5_2 2)))
 (let (($x1083 (= Opp_1_2 6)))
 (let (($x2255 (and (= Per_5_2 Per_1_2) $x1083)))
 (=> $x2255 $x1085)))))
(assert
 (let (($x1085 (= Opp_5_2 2)))
 (=> $x1085 (xor Home_5_2 Home_1_2))))
(assert
 (let (($x1098 (= Opp_1_3 6)))
 (let (($x2268 (and (= Per_5_3 Per_1_3) $x1098)))
 (let (($x1100 (= Opp_5_3 2)))
 (=> $x1100 $x2268)))))
(assert
 (let (($x1100 (= Opp_5_3 2)))
 (let (($x1098 (= Opp_1_3 6)))
 (let (($x2268 (and (= Per_5_3 Per_1_3) $x1098)))
 (=> $x2268 $x1100)))))
(assert
 (let (($x1100 (= Opp_5_3 2)))
 (=> $x1100 (xor Home_5_3 Home_1_3))))
(assert
 (let (($x1113 (= Opp_1_4 6)))
 (let (($x2281 (and (= Per_5_4 Per_1_4) $x1113)))
 (let (($x1115 (= Opp_5_4 2)))
 (=> $x1115 $x2281)))))
(assert
 (let (($x1115 (= Opp_5_4 2)))
 (let (($x1113 (= Opp_1_4 6)))
 (let (($x2281 (and (= Per_5_4 Per_1_4) $x1113)))
 (=> $x2281 $x1115)))))
(assert
 (let (($x1115 (= Opp_5_4 2)))
 (=> $x1115 (xor Home_5_4 Home_1_4))))
(assert
 (let (($x1408 (= Opp_2_0 6)))
 (let (($x2294 (and (= Per_5_0 Per_2_0) $x1408)))
 (let (($x1410 (= Opp_5_0 3)))
 (=> $x1410 $x2294)))))
(assert
 (let (($x1410 (= Opp_5_0 3)))
 (let (($x1408 (= Opp_2_0 6)))
 (let (($x2294 (and (= Per_5_0 Per_2_0) $x1408)))
 (=> $x2294 $x1410)))))
(assert
 (let (($x1410 (= Opp_5_0 3)))
 (=> $x1410 (xor Home_5_0 Home_2_0))))
(assert
 (let (($x1423 (= Opp_2_1 6)))
 (let (($x2307 (and (= Per_5_1 Per_2_1) $x1423)))
 (let (($x1425 (= Opp_5_1 3)))
 (=> $x1425 $x2307)))))
(assert
 (let (($x1425 (= Opp_5_1 3)))
 (let (($x1423 (= Opp_2_1 6)))
 (let (($x2307 (and (= Per_5_1 Per_2_1) $x1423)))
 (=> $x2307 $x1425)))))
(assert
 (let (($x1425 (= Opp_5_1 3)))
 (=> $x1425 (xor Home_5_1 Home_2_1))))
(assert
 (let (($x1438 (= Opp_2_2 6)))
 (let (($x2320 (and (= Per_5_2 Per_2_2) $x1438)))
 (let (($x1440 (= Opp_5_2 3)))
 (=> $x1440 $x2320)))))
(assert
 (let (($x1440 (= Opp_5_2 3)))
 (let (($x1438 (= Opp_2_2 6)))
 (let (($x2320 (and (= Per_5_2 Per_2_2) $x1438)))
 (=> $x2320 $x1440)))))
(assert
 (let (($x1440 (= Opp_5_2 3)))
 (=> $x1440 (xor Home_5_2 Home_2_2))))
(assert
 (let (($x1453 (= Opp_2_3 6)))
 (let (($x2333 (and (= Per_5_3 Per_2_3) $x1453)))
 (let (($x1455 (= Opp_5_3 3)))
 (=> $x1455 $x2333)))))
(assert
 (let (($x1455 (= Opp_5_3 3)))
 (let (($x1453 (= Opp_2_3 6)))
 (let (($x2333 (and (= Per_5_3 Per_2_3) $x1453)))
 (=> $x2333 $x1455)))))
(assert
 (let (($x1455 (= Opp_5_3 3)))
 (=> $x1455 (xor Home_5_3 Home_2_3))))
(assert
 (let (($x1468 (= Opp_2_4 6)))
 (let (($x2346 (and (= Per_5_4 Per_2_4) $x1468)))
 (let (($x1470 (= Opp_5_4 3)))
 (=> $x1470 $x2346)))))
(assert
 (let (($x1470 (= Opp_5_4 3)))
 (let (($x1468 (= Opp_2_4 6)))
 (let (($x2346 (and (= Per_5_4 Per_2_4) $x1468)))
 (=> $x2346 $x1470)))))
(assert
 (let (($x1470 (= Opp_5_4 3)))
 (=> $x1470 (xor Home_5_4 Home_2_4))))
(assert
 (let (($x1753 (= Opp_3_0 6)))
 (let (($x2359 (and (= Per_5_0 Per_3_0) $x1753)))
 (let (($x1755 (= Opp_5_0 4)))
 (=> $x1755 $x2359)))))
(assert
 (let (($x1755 (= Opp_5_0 4)))
 (let (($x1753 (= Opp_3_0 6)))
 (let (($x2359 (and (= Per_5_0 Per_3_0) $x1753)))
 (=> $x2359 $x1755)))))
(assert
 (let (($x1755 (= Opp_5_0 4)))
 (=> $x1755 (xor Home_5_0 Home_3_0))))
(assert
 (let (($x1768 (= Opp_3_1 6)))
 (let (($x2372 (and (= Per_5_1 Per_3_1) $x1768)))
 (let (($x1770 (= Opp_5_1 4)))
 (=> $x1770 $x2372)))))
(assert
 (let (($x1770 (= Opp_5_1 4)))
 (let (($x1768 (= Opp_3_1 6)))
 (let (($x2372 (and (= Per_5_1 Per_3_1) $x1768)))
 (=> $x2372 $x1770)))))
(assert
 (let (($x1770 (= Opp_5_1 4)))
 (=> $x1770 (xor Home_5_1 Home_3_1))))
(assert
 (let (($x1783 (= Opp_3_2 6)))
 (let (($x2385 (and (= Per_5_2 Per_3_2) $x1783)))
 (let (($x1785 (= Opp_5_2 4)))
 (=> $x1785 $x2385)))))
(assert
 (let (($x1785 (= Opp_5_2 4)))
 (let (($x1783 (= Opp_3_2 6)))
 (let (($x2385 (and (= Per_5_2 Per_3_2) $x1783)))
 (=> $x2385 $x1785)))))
(assert
 (let (($x1785 (= Opp_5_2 4)))
 (=> $x1785 (xor Home_5_2 Home_3_2))))
(assert
 (let (($x1798 (= Opp_3_3 6)))
 (let (($x2398 (and (= Per_5_3 Per_3_3) $x1798)))
 (let (($x1800 (= Opp_5_3 4)))
 (=> $x1800 $x2398)))))
(assert
 (let (($x1800 (= Opp_5_3 4)))
 (let (($x1798 (= Opp_3_3 6)))
 (let (($x2398 (and (= Per_5_3 Per_3_3) $x1798)))
 (=> $x2398 $x1800)))))
(assert
 (let (($x1800 (= Opp_5_3 4)))
 (=> $x1800 (xor Home_5_3 Home_3_3))))
(assert
 (let (($x1813 (= Opp_3_4 6)))
 (let (($x2411 (and (= Per_5_4 Per_3_4) $x1813)))
 (let (($x1815 (= Opp_5_4 4)))
 (=> $x1815 $x2411)))))
(assert
 (let (($x1815 (= Opp_5_4 4)))
 (let (($x1813 (= Opp_3_4 6)))
 (let (($x2411 (and (= Per_5_4 Per_3_4) $x1813)))
 (=> $x2411 $x1815)))))
(assert
 (let (($x1815 (= Opp_5_4 4)))
 (=> $x1815 (xor Home_5_4 Home_3_4))))
(assert
 (let (($x2088 (= Opp_4_0 6)))
 (let (($x2424 (and (= Per_5_0 Per_4_0) $x2088)))
 (let (($x2090 (= Opp_5_0 5)))
 (=> $x2090 $x2424)))))
(assert
 (let (($x2090 (= Opp_5_0 5)))
 (let (($x2088 (= Opp_4_0 6)))
 (let (($x2424 (and (= Per_5_0 Per_4_0) $x2088)))
 (=> $x2424 $x2090)))))
(assert
 (let (($x2090 (= Opp_5_0 5)))
 (=> $x2090 (xor Home_5_0 Home_4_0))))
(assert
 (let (($x2103 (= Opp_4_1 6)))
 (let (($x2437 (and (= Per_5_1 Per_4_1) $x2103)))
 (let (($x2105 (= Opp_5_1 5)))
 (=> $x2105 $x2437)))))
(assert
 (let (($x2105 (= Opp_5_1 5)))
 (let (($x2103 (= Opp_4_1 6)))
 (let (($x2437 (and (= Per_5_1 Per_4_1) $x2103)))
 (=> $x2437 $x2105)))))
(assert
 (let (($x2105 (= Opp_5_1 5)))
 (=> $x2105 (xor Home_5_1 Home_4_1))))
(assert
 (let (($x2118 (= Opp_4_2 6)))
 (let (($x2450 (and (= Per_5_2 Per_4_2) $x2118)))
 (let (($x2120 (= Opp_5_2 5)))
 (=> $x2120 $x2450)))))
(assert
 (let (($x2120 (= Opp_5_2 5)))
 (let (($x2118 (= Opp_4_2 6)))
 (let (($x2450 (and (= Per_5_2 Per_4_2) $x2118)))
 (=> $x2450 $x2120)))))
(assert
 (let (($x2120 (= Opp_5_2 5)))
 (=> $x2120 (xor Home_5_2 Home_4_2))))
(assert
 (let (($x2133 (= Opp_4_3 6)))
 (let (($x2463 (and (= Per_5_3 Per_4_3) $x2133)))
 (let (($x2135 (= Opp_5_3 5)))
 (=> $x2135 $x2463)))))
(assert
 (let (($x2135 (= Opp_5_3 5)))
 (let (($x2133 (= Opp_4_3 6)))
 (let (($x2463 (and (= Per_5_3 Per_4_3) $x2133)))
 (=> $x2463 $x2135)))))
(assert
 (let (($x2135 (= Opp_5_3 5)))
 (=> $x2135 (xor Home_5_3 Home_4_3))))
(assert
 (let (($x2148 (= Opp_4_4 6)))
 (let (($x2476 (and (= Per_5_4 Per_4_4) $x2148)))
 (let (($x2150 (= Opp_5_4 5)))
 (=> $x2150 $x2476)))))
(assert
 (let (($x2150 (= Opp_5_4 5)))
 (let (($x2148 (= Opp_4_4 6)))
 (let (($x2476 (and (= Per_5_4 Per_4_4) $x2148)))
 (=> $x2476 $x2150)))))
(assert
 (let (($x2150 (= Opp_5_4 5)))
 (=> $x2150 (xor Home_5_4 Home_4_4))))
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
 (let (($x2505 (= Per_5_0 1)))
 (let ((?x2506 (ite $x2505 1 0)))
 (let ((?x2504 (ite (= Per_4_0 1) 1 0)))
 (let ((?x2502 (ite (= Per_3_0 1) 1 0)))
 (let ((?x2500 (ite (= Per_2_0 1) 1 0)))
 (let ((?x2498 (ite (= Per_1_0 1) 1 0)))
 (let (($x2494 (= Per_0_0 1)))
 (let ((?x2496 (ite $x2494 1 0)))
 (= (+ ?x2496 ?x2498 ?x2500 ?x2502 ?x2504 ?x2506) 2))))))))))
(assert
 (let ((?x2520 (ite (= Per_5_0 2) 1 0)))
 (let (($x2517 (= Per_4_0 2)))
 (let ((?x2518 (ite $x2517 1 0)))
 (let ((?x2516 (ite (= Per_3_0 2) 1 0)))
 (let ((?x2514 (ite (= Per_2_0 2) 1 0)))
 (let (($x2511 (= Per_1_0 2)))
 (let ((?x2512 (ite $x2511 1 0)))
 (let ((?x2510 (ite (= Per_0_0 2) 1 0)))
 (= (+ ?x2510 ?x2512 ?x2514 ?x2516 ?x2518 ?x2520) 2))))))))))
(assert
 (let ((?x2534 (ite (= Per_5_0 3) 1 0)))
 (let ((?x2532 (ite (= Per_4_0 3) 1 0)))
 (let (($x2529 (= Per_3_0 3)))
 (let ((?x2530 (ite $x2529 1 0)))
 (let (($x2527 (= Per_2_0 3)))
 (let ((?x2528 (ite $x2527 1 0)))
 (let ((?x2526 (ite (= Per_1_0 3) 1 0)))
 (let ((?x2524 (ite (= Per_0_0 3) 1 0)))
 (= (+ ?x2524 ?x2526 ?x2528 ?x2530 ?x2532 ?x2534) 2))))))))))
(assert
 (let ((?x2548 (ite (= Per_5_1 1) 1 0)))
 (let ((?x2546 (ite (= Per_4_1 1) 1 0)))
 (let ((?x2544 (ite (= Per_3_1 1) 1 0)))
 (let ((?x2542 (ite (= Per_2_1 1) 1 0)))
 (let ((?x2540 (ite (= Per_1_1 1) 1 0)))
 (let ((?x2538 (ite (= Per_0_1 1) 1 0)))
 (= (+ ?x2538 ?x2540 ?x2542 ?x2544 ?x2546 ?x2548) 2))))))))
(assert
 (let ((?x2562 (ite (= Per_5_1 2) 1 0)))
 (let ((?x2560 (ite (= Per_4_1 2) 1 0)))
 (let ((?x2558 (ite (= Per_3_1 2) 1 0)))
 (let ((?x2556 (ite (= Per_2_1 2) 1 0)))
 (let ((?x2554 (ite (= Per_1_1 2) 1 0)))
 (let ((?x2552 (ite (= Per_0_1 2) 1 0)))
 (= (+ ?x2552 ?x2554 ?x2556 ?x2558 ?x2560 ?x2562) 2))))))))
(assert
 (let ((?x2576 (ite (= Per_5_1 3) 1 0)))
 (let ((?x2574 (ite (= Per_4_1 3) 1 0)))
 (let ((?x2572 (ite (= Per_3_1 3) 1 0)))
 (let ((?x2570 (ite (= Per_2_1 3) 1 0)))
 (let ((?x2568 (ite (= Per_1_1 3) 1 0)))
 (let ((?x2566 (ite (= Per_0_1 3) 1 0)))
 (= (+ ?x2566 ?x2568 ?x2570 ?x2572 ?x2574 ?x2576) 2))))))))
(assert
 (let ((?x2590 (ite (= Per_5_2 1) 1 0)))
 (let ((?x2588 (ite (= Per_4_2 1) 1 0)))
 (let ((?x2586 (ite (= Per_3_2 1) 1 0)))
 (let ((?x2584 (ite (= Per_2_2 1) 1 0)))
 (let ((?x2582 (ite (= Per_1_2 1) 1 0)))
 (let ((?x2580 (ite (= Per_0_2 1) 1 0)))
 (= (+ ?x2580 ?x2582 ?x2584 ?x2586 ?x2588 ?x2590) 2))))))))
(assert
 (let ((?x2604 (ite (= Per_5_2 2) 1 0)))
 (let ((?x2602 (ite (= Per_4_2 2) 1 0)))
 (let ((?x2600 (ite (= Per_3_2 2) 1 0)))
 (let ((?x2598 (ite (= Per_2_2 2) 1 0)))
 (let ((?x2596 (ite (= Per_1_2 2) 1 0)))
 (let ((?x2594 (ite (= Per_0_2 2) 1 0)))
 (= (+ ?x2594 ?x2596 ?x2598 ?x2600 ?x2602 ?x2604) 2))))))))
(assert
 (let ((?x2618 (ite (= Per_5_2 3) 1 0)))
 (let ((?x2616 (ite (= Per_4_2 3) 1 0)))
 (let ((?x2614 (ite (= Per_3_2 3) 1 0)))
 (let ((?x2612 (ite (= Per_2_2 3) 1 0)))
 (let ((?x2610 (ite (= Per_1_2 3) 1 0)))
 (let ((?x2608 (ite (= Per_0_2 3) 1 0)))
 (= (+ ?x2608 ?x2610 ?x2612 ?x2614 ?x2616 ?x2618) 2))))))))
(assert
 (let ((?x2632 (ite (= Per_5_3 1) 1 0)))
 (let ((?x2630 (ite (= Per_4_3 1) 1 0)))
 (let ((?x2628 (ite (= Per_3_3 1) 1 0)))
 (let ((?x2626 (ite (= Per_2_3 1) 1 0)))
 (let ((?x2624 (ite (= Per_1_3 1) 1 0)))
 (let ((?x2622 (ite (= Per_0_3 1) 1 0)))
 (= (+ ?x2622 ?x2624 ?x2626 ?x2628 ?x2630 ?x2632) 2))))))))
(assert
 (let ((?x2646 (ite (= Per_5_3 2) 1 0)))
 (let ((?x2644 (ite (= Per_4_3 2) 1 0)))
 (let ((?x2642 (ite (= Per_3_3 2) 1 0)))
 (let ((?x2640 (ite (= Per_2_3 2) 1 0)))
 (let ((?x2638 (ite (= Per_1_3 2) 1 0)))
 (let ((?x2636 (ite (= Per_0_3 2) 1 0)))
 (= (+ ?x2636 ?x2638 ?x2640 ?x2642 ?x2644 ?x2646) 2))))))))
(assert
 (let ((?x2660 (ite (= Per_5_3 3) 1 0)))
 (let ((?x2658 (ite (= Per_4_3 3) 1 0)))
 (let ((?x2656 (ite (= Per_3_3 3) 1 0)))
 (let ((?x2654 (ite (= Per_2_3 3) 1 0)))
 (let ((?x2652 (ite (= Per_1_3 3) 1 0)))
 (let ((?x2650 (ite (= Per_0_3 3) 1 0)))
 (= (+ ?x2650 ?x2652 ?x2654 ?x2656 ?x2658 ?x2660) 2))))))))
(assert
 (let ((?x2674 (ite (= Per_5_4 1) 1 0)))
 (let ((?x2672 (ite (= Per_4_4 1) 1 0)))
 (let ((?x2670 (ite (= Per_3_4 1) 1 0)))
 (let ((?x2668 (ite (= Per_2_4 1) 1 0)))
 (let ((?x2666 (ite (= Per_1_4 1) 1 0)))
 (let ((?x2664 (ite (= Per_0_4 1) 1 0)))
 (= (+ ?x2664 ?x2666 ?x2668 ?x2670 ?x2672 ?x2674) 2))))))))
(assert
 (let ((?x2688 (ite (= Per_5_4 2) 1 0)))
 (let ((?x2686 (ite (= Per_4_4 2) 1 0)))
 (let ((?x2684 (ite (= Per_3_4 2) 1 0)))
 (let ((?x2682 (ite (= Per_2_4 2) 1 0)))
 (let ((?x2680 (ite (= Per_1_4 2) 1 0)))
 (let ((?x2678 (ite (= Per_0_4 2) 1 0)))
 (= (+ ?x2678 ?x2680 ?x2682 ?x2684 ?x2686 ?x2688) 2))))))))
(assert
 (let ((?x2702 (ite (= Per_5_4 3) 1 0)))
 (let ((?x2700 (ite (= Per_4_4 3) 1 0)))
 (let ((?x2698 (ite (= Per_3_4 3) 1 0)))
 (let ((?x2696 (ite (= Per_2_4 3) 1 0)))
 (let ((?x2694 (ite (= Per_1_4 3) 1 0)))
 (let ((?x2692 (ite (= Per_0_4 3) 1 0)))
 (= (+ ?x2692 ?x2694 ?x2696 ?x2698 ?x2700 ?x2702) 2))))))))
(assert
 (let ((?x2664 (ite (= Per_0_4 1) 1 0)))
 (let ((?x2622 (ite (= Per_0_3 1) 1 0)))
 (let ((?x2580 (ite (= Per_0_2 1) 1 0)))
 (let ((?x2538 (ite (= Per_0_1 1) 1 0)))
 (let (($x2494 (= Per_0_0 1)))
 (let ((?x2496 (ite $x2494 1 0)))
 (<= (+ ?x2496 ?x2538 ?x2580 ?x2622 ?x2664) 2))))))))
(assert
 (let ((?x2678 (ite (= Per_0_4 2) 1 0)))
 (let ((?x2636 (ite (= Per_0_3 2) 1 0)))
 (let ((?x2594 (ite (= Per_0_2 2) 1 0)))
 (let ((?x2552 (ite (= Per_0_1 2) 1 0)))
 (let ((?x2510 (ite (= Per_0_0 2) 1 0)))
 (<= (+ ?x2510 ?x2552 ?x2594 ?x2636 ?x2678) 2)))))))
(assert
 (let ((?x2692 (ite (= Per_0_4 3) 1 0)))
 (let ((?x2650 (ite (= Per_0_3 3) 1 0)))
 (let ((?x2608 (ite (= Per_0_2 3) 1 0)))
 (let ((?x2566 (ite (= Per_0_1 3) 1 0)))
 (let ((?x2524 (ite (= Per_0_0 3) 1 0)))
 (<= (+ ?x2524 ?x2566 ?x2608 ?x2650 ?x2692) 2)))))))
(assert
 (let ((?x2666 (ite (= Per_1_4 1) 1 0)))
 (let ((?x2624 (ite (= Per_1_3 1) 1 0)))
 (let ((?x2582 (ite (= Per_1_2 1) 1 0)))
 (let ((?x2540 (ite (= Per_1_1 1) 1 0)))
 (let ((?x2498 (ite (= Per_1_0 1) 1 0)))
 (<= (+ ?x2498 ?x2540 ?x2582 ?x2624 ?x2666) 2)))))))
(assert
 (let ((?x2680 (ite (= Per_1_4 2) 1 0)))
 (let ((?x2638 (ite (= Per_1_3 2) 1 0)))
 (let ((?x2596 (ite (= Per_1_2 2) 1 0)))
 (let ((?x2554 (ite (= Per_1_1 2) 1 0)))
 (let (($x2511 (= Per_1_0 2)))
 (let ((?x2512 (ite $x2511 1 0)))
 (<= (+ ?x2512 ?x2554 ?x2596 ?x2638 ?x2680) 2))))))))
(assert
 (let ((?x2694 (ite (= Per_1_4 3) 1 0)))
 (let ((?x2652 (ite (= Per_1_3 3) 1 0)))
 (let ((?x2610 (ite (= Per_1_2 3) 1 0)))
 (let ((?x2568 (ite (= Per_1_1 3) 1 0)))
 (let ((?x2526 (ite (= Per_1_0 3) 1 0)))
 (<= (+ ?x2526 ?x2568 ?x2610 ?x2652 ?x2694) 2)))))))
(assert
 (let ((?x2668 (ite (= Per_2_4 1) 1 0)))
 (let ((?x2626 (ite (= Per_2_3 1) 1 0)))
 (let ((?x2584 (ite (= Per_2_2 1) 1 0)))
 (let ((?x2542 (ite (= Per_2_1 1) 1 0)))
 (let ((?x2500 (ite (= Per_2_0 1) 1 0)))
 (<= (+ ?x2500 ?x2542 ?x2584 ?x2626 ?x2668) 2)))))))
(assert
 (let ((?x2682 (ite (= Per_2_4 2) 1 0)))
 (let ((?x2640 (ite (= Per_2_3 2) 1 0)))
 (let ((?x2598 (ite (= Per_2_2 2) 1 0)))
 (let ((?x2556 (ite (= Per_2_1 2) 1 0)))
 (let ((?x2514 (ite (= Per_2_0 2) 1 0)))
 (<= (+ ?x2514 ?x2556 ?x2598 ?x2640 ?x2682) 2)))))))
(assert
 (let ((?x2696 (ite (= Per_2_4 3) 1 0)))
 (let ((?x2654 (ite (= Per_2_3 3) 1 0)))
 (let ((?x2612 (ite (= Per_2_2 3) 1 0)))
 (let ((?x2570 (ite (= Per_2_1 3) 1 0)))
 (let (($x2527 (= Per_2_0 3)))
 (let ((?x2528 (ite $x2527 1 0)))
 (<= (+ ?x2528 ?x2570 ?x2612 ?x2654 ?x2696) 2))))))))
(assert
 (let ((?x2670 (ite (= Per_3_4 1) 1 0)))
 (let ((?x2628 (ite (= Per_3_3 1) 1 0)))
 (let ((?x2586 (ite (= Per_3_2 1) 1 0)))
 (let ((?x2544 (ite (= Per_3_1 1) 1 0)))
 (let ((?x2502 (ite (= Per_3_0 1) 1 0)))
 (<= (+ ?x2502 ?x2544 ?x2586 ?x2628 ?x2670) 2)))))))
(assert
 (let ((?x2684 (ite (= Per_3_4 2) 1 0)))
 (let ((?x2642 (ite (= Per_3_3 2) 1 0)))
 (let ((?x2600 (ite (= Per_3_2 2) 1 0)))
 (let ((?x2558 (ite (= Per_3_1 2) 1 0)))
 (let ((?x2516 (ite (= Per_3_0 2) 1 0)))
 (<= (+ ?x2516 ?x2558 ?x2600 ?x2642 ?x2684) 2)))))))
(assert
 (let ((?x2698 (ite (= Per_3_4 3) 1 0)))
 (let ((?x2656 (ite (= Per_3_3 3) 1 0)))
 (let ((?x2614 (ite (= Per_3_2 3) 1 0)))
 (let ((?x2572 (ite (= Per_3_1 3) 1 0)))
 (let (($x2529 (= Per_3_0 3)))
 (let ((?x2530 (ite $x2529 1 0)))
 (<= (+ ?x2530 ?x2572 ?x2614 ?x2656 ?x2698) 2))))))))
(assert
 (let ((?x2672 (ite (= Per_4_4 1) 1 0)))
 (let ((?x2630 (ite (= Per_4_3 1) 1 0)))
 (let ((?x2588 (ite (= Per_4_2 1) 1 0)))
 (let ((?x2546 (ite (= Per_4_1 1) 1 0)))
 (let ((?x2504 (ite (= Per_4_0 1) 1 0)))
 (<= (+ ?x2504 ?x2546 ?x2588 ?x2630 ?x2672) 2)))))))
(assert
 (let ((?x2686 (ite (= Per_4_4 2) 1 0)))
 (let ((?x2644 (ite (= Per_4_3 2) 1 0)))
 (let ((?x2602 (ite (= Per_4_2 2) 1 0)))
 (let ((?x2560 (ite (= Per_4_1 2) 1 0)))
 (let (($x2517 (= Per_4_0 2)))
 (let ((?x2518 (ite $x2517 1 0)))
 (<= (+ ?x2518 ?x2560 ?x2602 ?x2644 ?x2686) 2))))))))
(assert
 (let ((?x2700 (ite (= Per_4_4 3) 1 0)))
 (let ((?x2658 (ite (= Per_4_3 3) 1 0)))
 (let ((?x2616 (ite (= Per_4_2 3) 1 0)))
 (let ((?x2574 (ite (= Per_4_1 3) 1 0)))
 (let ((?x2532 (ite (= Per_4_0 3) 1 0)))
 (<= (+ ?x2532 ?x2574 ?x2616 ?x2658 ?x2700) 2)))))))
(assert
 (let ((?x2674 (ite (= Per_5_4 1) 1 0)))
 (let ((?x2632 (ite (= Per_5_3 1) 1 0)))
 (let ((?x2590 (ite (= Per_5_2 1) 1 0)))
 (let ((?x2548 (ite (= Per_5_1 1) 1 0)))
 (let (($x2505 (= Per_5_0 1)))
 (let ((?x2506 (ite $x2505 1 0)))
 (<= (+ ?x2506 ?x2548 ?x2590 ?x2632 ?x2674) 2))))))))
(assert
 (let ((?x2688 (ite (= Per_5_4 2) 1 0)))
 (let ((?x2646 (ite (= Per_5_3 2) 1 0)))
 (let ((?x2604 (ite (= Per_5_2 2) 1 0)))
 (let ((?x2562 (ite (= Per_5_1 2) 1 0)))
 (let ((?x2520 (ite (= Per_5_0 2) 1 0)))
 (<= (+ ?x2520 ?x2562 ?x2604 ?x2646 ?x2688) 2)))))))
(assert
 (let ((?x2702 (ite (= Per_5_4 3) 1 0)))
 (let ((?x2660 (ite (= Per_5_3 3) 1 0)))
 (let ((?x2618 (ite (= Per_5_2 3) 1 0)))
 (let ((?x2576 (ite (= Per_5_1 3) 1 0)))
 (let ((?x2534 (ite (= Per_5_0 3) 1 0)))
 (<= (+ ?x2534 ?x2576 ?x2618 ?x2660 ?x2702) 2)))))))
(assert
 (let ((?x2763 (ite Home_0_4 1 0)))
 (let ((?x3002 (ite Home_0_3 1 0)))
 (let ((?x3010 (ite Home_0_2 1 0)))
 (let ((?x3017 (ite Home_0_1 1 0)))
 (let ((?x3024 (ite Home_0_0 1 0)))
 (let ((?x2756 (+ ?x3024 ?x3017 ?x3010 ?x3002 ?x2763)))
 (<= ?x2756 3))))))))
(assert
 (let ((?x2763 (ite Home_0_4 1 0)))
 (let ((?x3002 (ite Home_0_3 1 0)))
 (let ((?x3010 (ite Home_0_2 1 0)))
 (let ((?x3017 (ite Home_0_1 1 0)))
 (let ((?x3024 (ite Home_0_0 1 0)))
 (let ((?x2756 (+ ?x3024 ?x3017 ?x3010 ?x3002 ?x2763)))
 (>= ?x2756 1))))))))
(assert
 (let ((?x2804 (ite Home_1_4 1 0)))
 (let ((?x2766 (ite Home_1_3 1 0)))
 (let ((?x2744 (ite Home_1_2 1 0)))
 (let ((?x2741 (ite Home_1_1 1 0)))
 (let ((?x2749 (ite Home_1_0 1 0)))
 (let ((?x2805 (+ ?x2749 ?x2741 ?x2744 ?x2766 ?x2804)))
 (<= ?x2805 3))))))))
(assert
 (let ((?x2804 (ite Home_1_4 1 0)))
 (let ((?x2766 (ite Home_1_3 1 0)))
 (let ((?x2744 (ite Home_1_2 1 0)))
 (let ((?x2741 (ite Home_1_1 1 0)))
 (let ((?x2749 (ite Home_1_0 1 0)))
 (let ((?x2805 (+ ?x2749 ?x2741 ?x2744 ?x2766 ?x2804)))
 (>= ?x2805 1))))))))
(assert
 (let ((?x2768 (ite Home_2_4 1 0)))
 (let ((?x2767 (ite Home_2_3 1 0)))
 (let ((?x2808 (ite Home_2_2 1 0)))
 (let ((?x2807 (ite Home_2_1 1 0)))
 (let ((?x2806 (ite Home_2_0 1 0)))
 (let ((?x2769 (+ ?x2806 ?x2807 ?x2808 ?x2767 ?x2768)))
 (<= ?x2769 3))))))))
(assert
 (let ((?x2768 (ite Home_2_4 1 0)))
 (let ((?x2767 (ite Home_2_3 1 0)))
 (let ((?x2808 (ite Home_2_2 1 0)))
 (let ((?x2807 (ite Home_2_1 1 0)))
 (let ((?x2806 (ite Home_2_0 1 0)))
 (let ((?x2769 (+ ?x2806 ?x2807 ?x2808 ?x2767 ?x2768)))
 (>= ?x2769 1))))))))
(assert
 (let ((?x2810 (ite Home_3_4 1 0)))
 (let ((?x2809 (ite Home_3_3 1 0)))
 (let ((?x2747 (ite Home_3_2 1 0)))
 (let ((?x2746 (ite Home_3_1 1 0)))
 (let ((?x2745 (ite Home_3_0 1 0)))
 (let ((?x2811 (+ ?x2745 ?x2746 ?x2747 ?x2809 ?x2810)))
 (<= ?x2811 3))))))))
(assert
 (let ((?x2810 (ite Home_3_4 1 0)))
 (let ((?x2809 (ite Home_3_3 1 0)))
 (let ((?x2747 (ite Home_3_2 1 0)))
 (let ((?x2746 (ite Home_3_1 1 0)))
 (let ((?x2745 (ite Home_3_0 1 0)))
 (let ((?x2811 (+ ?x2745 ?x2746 ?x2747 ?x2809 ?x2810)))
 (>= ?x2811 1))))))))
(assert
 (let ((?x2743 (ite Home_4_4 1 0)))
 (let ((?x2742 (ite Home_4_3 1 0)))
 (let ((?x2748 (ite Home_4_2 1 0)))
 (let ((?x2813 (ite Home_4_1 1 0)))
 (let ((?x2812 (ite Home_4_0 1 0)))
 (let ((?x2764 (+ ?x2812 ?x2813 ?x2748 ?x2742 ?x2743)))
 (<= ?x2764 3))))))))
(assert
 (let ((?x2743 (ite Home_4_4 1 0)))
 (let ((?x2742 (ite Home_4_3 1 0)))
 (let ((?x2748 (ite Home_4_2 1 0)))
 (let ((?x2813 (ite Home_4_1 1 0)))
 (let ((?x2812 (ite Home_4_0 1 0)))
 (let ((?x2764 (+ ?x2812 ?x2813 ?x2748 ?x2742 ?x2743)))
 (>= ?x2764 1))))))))
(assert
 (let ((?x2816 (ite Home_5_4 1 0)))
 (let ((?x2815 (ite Home_5_3 1 0)))
 (let ((?x2814 (ite Home_5_2 1 0)))
 (let ((?x2759 (ite Home_5_1 1 0)))
 (let ((?x2765 (ite Home_5_0 1 0)))
 (let ((?x2817 (+ ?x2765 ?x2759 ?x2814 ?x2815 ?x2816)))
 (<= ?x2817 3))))))))
(assert
 (let ((?x2816 (ite Home_5_4 1 0)))
 (let ((?x2815 (ite Home_5_3 1 0)))
 (let ((?x2814 (ite Home_5_2 1 0)))
 (let ((?x2759 (ite Home_5_1 1 0)))
 (let ((?x2765 (ite Home_5_0 1 0)))
 (let ((?x2817 (+ ?x2765 ?x2759 ?x2814 ?x2815 ?x2816)))
 (>= ?x2817 1))))))))
(assert
 (let ((?x2816 (ite Home_5_4 1 0)))
 (let ((?x2815 (ite Home_5_3 1 0)))
 (let ((?x2814 (ite Home_5_2 1 0)))
 (let ((?x2759 (ite Home_5_1 1 0)))
 (let ((?x2765 (ite Home_5_0 1 0)))
 (let ((?x2817 (+ ?x2765 ?x2759 ?x2814 ?x2815 ?x2816)))
 (let ((?x2846 (- (* 2 ?x2817) 5)))
 (let ((?x2743 (ite Home_4_4 1 0)))
 (let ((?x2742 (ite Home_4_3 1 0)))
 (let ((?x2748 (ite Home_4_2 1 0)))
 (let ((?x2813 (ite Home_4_1 1 0)))
 (let ((?x2812 (ite Home_4_0 1 0)))
 (let ((?x2764 (+ ?x2812 ?x2813 ?x2748 ?x2742 ?x2743)))
 (let ((?x2843 (- (* 2 ?x2764) 5)))
 (let ((?x2810 (ite Home_3_4 1 0)))
 (let ((?x2809 (ite Home_3_3 1 0)))
 (let ((?x2747 (ite Home_3_2 1 0)))
 (let ((?x2746 (ite Home_3_1 1 0)))
 (let ((?x2745 (ite Home_3_0 1 0)))
 (let ((?x2811 (+ ?x2745 ?x2746 ?x2747 ?x2809 ?x2810)))
 (let ((?x2787 (- (* 2 ?x2811) 5)))
 (let ((?x2768 (ite Home_2_4 1 0)))
 (let ((?x2767 (ite Home_2_3 1 0)))
 (let ((?x2808 (ite Home_2_2 1 0)))
 (let ((?x2807 (ite Home_2_1 1 0)))
 (let ((?x2806 (ite Home_2_0 1 0)))
 (let ((?x2769 (+ ?x2806 ?x2807 ?x2808 ?x2767 ?x2768)))
 (let ((?x2800 (- (* 2 ?x2769) 5)))
 (let ((?x2804 (ite Home_1_4 1 0)))
 (let ((?x2766 (ite Home_1_3 1 0)))
 (let ((?x2744 (ite Home_1_2 1 0)))
 (let ((?x2741 (ite Home_1_1 1 0)))
 (let ((?x2749 (ite Home_1_0 1 0)))
 (let ((?x2805 (+ ?x2749 ?x2741 ?x2744 ?x2766 ?x2804)))
 (let ((?x2833 (- (* 2 ?x2805) 5)))
 (let ((?x2763 (ite Home_0_4 1 0)))
 (let ((?x3002 (ite Home_0_3 1 0)))
 (let ((?x3010 (ite Home_0_2 1 0)))
 (let ((?x3017 (ite Home_0_1 1 0)))
 (let ((?x3024 (ite Home_0_0 1 0)))
 (let ((?x2756 (+ ?x3024 ?x3017 ?x3010 ?x3002 ?x2763)))
 (let ((?x2776 (- (* 2 ?x2756) 5)))
 (let ((?x2923 (+ (ite (> ?x2776 0) ?x2776 (- ?x2776)) (ite (> ?x2833 0) ?x2833 (- ?x2833)) (ite (> ?x2800 0) ?x2800 (- ?x2800)) (ite (> ?x2787 0) ?x2787 (- ?x2787)) (ite (> ?x2843 0) ?x2843 (- ?x2843)) (ite (> ?x2846 0) ?x2846 (- ?x2846)))))
 (< ?x2923 8)))))))))))))))))))))))))))))))))))))))))))))
(assert
 Home_0_0)
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
