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
(declare-fun Per_1_0 () Int)
(declare-fun Home_1_0 () Int)
(declare-fun Opp_1_0 () Int)
(declare-fun Per_1_1 () Int)
(declare-fun Home_1_1 () Int)
(declare-fun Opp_1_1 () Int)
(declare-fun Per_1_2 () Int)
(declare-fun Home_1_2 () Int)
(declare-fun Opp_1_2 () Int)
(declare-fun Per_2_0 () Int)
(declare-fun Home_2_0 () Int)
(declare-fun Opp_2_0 () Int)
(declare-fun Per_2_1 () Int)
(declare-fun Home_2_1 () Int)
(declare-fun Opp_2_1 () Int)
(declare-fun Per_2_2 () Int)
(declare-fun Home_2_2 () Int)
(declare-fun Opp_2_2 () Int)
(declare-fun Per_3_0 () Int)
(declare-fun Home_3_0 () Int)
(declare-fun Opp_3_0 () Int)
(declare-fun Per_3_1 () Int)
(declare-fun Home_3_1 () Int)
(declare-fun Opp_3_1 () Int)
(declare-fun Per_3_2 () Int)
(declare-fun Home_3_2 () Int)
(declare-fun Opp_3_2 () Int)
(declare-fun High_0 () Bool)
(declare-fun High_1 () Bool)
(declare-fun High_2 () Bool)
(declare-fun High_3 () Bool)
(assert
 (let (($x44 (<= Per_0_0 2)))
 (let (($x42 (>= Per_0_0 1)))
 (and $x42 $x44))))
(assert
 (let (($x65 (= Home_0_0 1)))
 (or (= Home_0_0 0) $x65)))
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
 (or (= Home_0_1 0) (= Home_0_1 1)))
(assert
 (let (($x81 (<= Opp_0_1 4)))
 (let (($x80 (>= Opp_0_1 1)))
 (and $x80 $x81))))
(assert
 (and (distinct Opp_0_1 1) true))
(assert
 (let (($x87 (<= Per_0_2 2)))
 (let (($x86 (>= Per_0_2 1)))
 (and $x86 $x87))))
(assert
 (or (= Home_0_2 0) (= Home_0_2 1)))
(assert
 (let (($x93 (<= Opp_0_2 4)))
 (let (($x92 (>= Opp_0_2 1)))
 (and $x92 $x93))))
(assert
 (and (distinct Opp_0_2 1) true))
(assert
 (let (($x99 (<= Per_1_0 2)))
 (let (($x98 (>= Per_1_0 1)))
 (and $x98 $x99))))
(assert
 (or (= Home_1_0 0) (= Home_1_0 1)))
(assert
 (let (($x105 (<= Opp_1_0 4)))
 (let (($x104 (>= Opp_1_0 1)))
 (and $x104 $x105))))
(assert
 (and (distinct Opp_1_0 2) true))
(assert
 (let (($x111 (<= Per_1_1 2)))
 (let (($x110 (>= Per_1_1 1)))
 (and $x110 $x111))))
(assert
 (or (= Home_1_1 0) (= Home_1_1 1)))
(assert
 (let (($x117 (<= Opp_1_1 4)))
 (let (($x116 (>= Opp_1_1 1)))
 (and $x116 $x117))))
(assert
 (and (distinct Opp_1_1 2) true))
(assert
 (let (($x123 (<= Per_1_2 2)))
 (let (($x122 (>= Per_1_2 1)))
 (and $x122 $x123))))
(assert
 (or (= Home_1_2 0) (= Home_1_2 1)))
(assert
 (let (($x129 (<= Opp_1_2 4)))
 (let (($x128 (>= Opp_1_2 1)))
 (and $x128 $x129))))
(assert
 (and (distinct Opp_1_2 2) true))
(assert
 (let (($x135 (<= Per_2_0 2)))
 (let (($x134 (>= Per_2_0 1)))
 (and $x134 $x135))))
(assert
 (or (= Home_2_0 0) (= Home_2_0 1)))
(assert
 (let (($x141 (<= Opp_2_0 4)))
 (let (($x140 (>= Opp_2_0 1)))
 (and $x140 $x141))))
(assert
 (and (distinct Opp_2_0 3) true))
(assert
 (let (($x148 (<= Per_2_1 2)))
 (let (($x147 (>= Per_2_1 1)))
 (and $x147 $x148))))
(assert
 (or (= Home_2_1 0) (= Home_2_1 1)))
(assert
 (let (($x154 (<= Opp_2_1 4)))
 (let (($x153 (>= Opp_2_1 1)))
 (and $x153 $x154))))
(assert
 (and (distinct Opp_2_1 3) true))
(assert
 (let (($x160 (<= Per_2_2 2)))
 (let (($x159 (>= Per_2_2 1)))
 (and $x159 $x160))))
(assert
 (or (= Home_2_2 0) (= Home_2_2 1)))
(assert
 (let (($x166 (<= Opp_2_2 4)))
 (let (($x165 (>= Opp_2_2 1)))
 (and $x165 $x166))))
(assert
 (and (distinct Opp_2_2 3) true))
(assert
 (let (($x172 (<= Per_3_0 2)))
 (let (($x171 (>= Per_3_0 1)))
 (and $x171 $x172))))
(assert
 (or (= Home_3_0 0) (= Home_3_0 1)))
(assert
 (let (($x178 (<= Opp_3_0 4)))
 (let (($x177 (>= Opp_3_0 1)))
 (and $x177 $x178))))
(assert
 (and (distinct Opp_3_0 4) true))
(assert
 (let (($x184 (<= Per_3_1 2)))
 (let (($x183 (>= Per_3_1 1)))
 (and $x183 $x184))))
(assert
 (or (= Home_3_1 0) (= Home_3_1 1)))
(assert
 (let (($x190 (<= Opp_3_1 4)))
 (let (($x189 (>= Opp_3_1 1)))
 (and $x189 $x190))))
(assert
 (and (distinct Opp_3_1 4) true))
(assert
 (let (($x196 (<= Per_3_2 2)))
 (let (($x195 (>= Per_3_2 1)))
 (and $x195 $x196))))
(assert
 (or (= Home_3_2 0) (= Home_3_2 1)))
(assert
 (let (($x202 (<= Opp_3_2 4)))
 (let (($x201 (>= Opp_3_2 1)))
 (and $x201 $x202))))
(assert
 (and (distinct Opp_3_2 4) true))
(assert
 (let (($x209 (= Opp_0_0 4)))
 (let (($x208 (= Opp_0_0 3)))
 (let (($x207 (= Opp_0_0 2)))
 (or $x207 $x208 $x209)))))
(assert
 (let (($x213 (= Opp_0_1 4)))
 (let (($x212 (= Opp_0_1 3)))
 (let (($x211 (= Opp_0_1 2)))
 (or $x211 $x212 $x213)))))
(assert
 (let (($x217 (= Opp_0_2 4)))
 (let (($x216 (= Opp_0_2 3)))
 (let (($x215 (= Opp_0_2 2)))
 (or $x215 $x216 $x217)))))
(assert
 (let (($x221 (= Opp_1_0 4)))
 (let (($x220 (= Opp_1_0 3)))
 (let (($x219 (= Opp_1_0 1)))
 (or $x219 $x220 $x221)))))
(assert
 (let (($x225 (= Opp_1_1 4)))
 (let (($x224 (= Opp_1_1 3)))
 (let (($x223 (= Opp_1_1 1)))
 (or $x223 $x224 $x225)))))
(assert
 (let (($x229 (= Opp_1_2 4)))
 (let (($x228 (= Opp_1_2 3)))
 (let (($x227 (= Opp_1_2 1)))
 (or $x227 $x228 $x229)))))
(assert
 (let (($x233 (= Opp_2_0 4)))
 (let (($x232 (= Opp_2_0 2)))
 (let (($x231 (= Opp_2_0 1)))
 (or $x231 $x232 $x233)))))
(assert
 (let (($x237 (= Opp_2_1 4)))
 (let (($x236 (= Opp_2_1 2)))
 (let (($x235 (= Opp_2_1 1)))
 (or $x235 $x236 $x237)))))
(assert
 (let (($x241 (= Opp_2_2 4)))
 (let (($x240 (= Opp_2_2 2)))
 (let (($x239 (= Opp_2_2 1)))
 (or $x239 $x240 $x241)))))
(assert
 (let (($x245 (= Opp_3_0 3)))
 (let (($x244 (= Opp_3_0 2)))
 (let (($x243 (= Opp_3_0 1)))
 (or $x243 $x244 $x245)))))
(assert
 (let (($x249 (= Opp_3_1 3)))
 (let (($x248 (= Opp_3_1 2)))
 (let (($x247 (= Opp_3_1 1)))
 (or $x247 $x248 $x249)))))
(assert
 (let (($x253 (= Opp_3_2 3)))
 (let (($x252 (= Opp_3_2 2)))
 (let (($x251 (= Opp_3_2 1)))
 (or $x251 $x252 $x253)))))
(assert
 (let (($x207 (= Opp_0_0 2)))
 (= $x207 (and (= Per_0_0 Per_1_0) (= Opp_1_0 1)))))
(assert
 (let (($x259 (= (+ Home_0_0 Home_1_0) 1)))
 (let (($x207 (= Opp_0_0 2)))
 (=> $x207 $x259))))
(assert
 (let (($x211 (= Opp_0_1 2)))
 (= $x211 (and (= Per_0_1 Per_1_1) (= Opp_1_1 1)))))
(assert
 (let (($x267 (= (+ Home_0_1 Home_1_1) 1)))
 (let (($x211 (= Opp_0_1 2)))
 (=> $x211 $x267))))
(assert
 (let (($x215 (= Opp_0_2 2)))
 (= $x215 (and (= Per_0_2 Per_1_2) (= Opp_1_2 1)))))
(assert
 (let (($x275 (= (+ Home_0_2 Home_1_2) 1)))
 (let (($x215 (= Opp_0_2 2)))
 (=> $x215 $x275))))
(assert
 (let (($x208 (= Opp_0_0 3)))
 (= $x208 (and (= Per_0_0 Per_2_0) (= Opp_2_0 1)))))
(assert
 (let (($x283 (= (+ Home_0_0 Home_2_0) 1)))
 (let (($x208 (= Opp_0_0 3)))
 (=> $x208 $x283))))
(assert
 (let (($x212 (= Opp_0_1 3)))
 (= $x212 (and (= Per_0_1 Per_2_1) (= Opp_2_1 1)))))
(assert
 (let (($x291 (= (+ Home_0_1 Home_2_1) 1)))
 (let (($x212 (= Opp_0_1 3)))
 (=> $x212 $x291))))
(assert
 (let (($x216 (= Opp_0_2 3)))
 (= $x216 (and (= Per_0_2 Per_2_2) (= Opp_2_2 1)))))
(assert
 (let (($x299 (= (+ Home_0_2 Home_2_2) 1)))
 (let (($x216 (= Opp_0_2 3)))
 (=> $x216 $x299))))
(assert
 (let (($x209 (= Opp_0_0 4)))
 (= $x209 (and (= Per_0_0 Per_3_0) (= Opp_3_0 1)))))
(assert
 (let (($x307 (= (+ Home_0_0 Home_3_0) 1)))
 (let (($x209 (= Opp_0_0 4)))
 (=> $x209 $x307))))
(assert
 (let (($x213 (= Opp_0_1 4)))
 (= $x213 (and (= Per_0_1 Per_3_1) (= Opp_3_1 1)))))
(assert
 (let (($x315 (= (+ Home_0_1 Home_3_1) 1)))
 (let (($x213 (= Opp_0_1 4)))
 (=> $x213 $x315))))
(assert
 (let (($x217 (= Opp_0_2 4)))
 (= $x217 (and (= Per_0_2 Per_3_2) (= Opp_3_2 1)))))
(assert
 (let (($x323 (= (+ Home_0_2 Home_3_2) 1)))
 (let (($x217 (= Opp_0_2 4)))
 (=> $x217 $x323))))
(assert
 (let (($x219 (= Opp_1_0 1)))
 (= $x219 (and (= Per_1_0 Per_0_0) (= Opp_0_0 2)))))
(assert
 (let (($x219 (= Opp_1_0 1)))
 (=> $x219 (= (+ Home_1_0 Home_0_0) 1))))
(assert
 (let (($x223 (= Opp_1_1 1)))
 (= $x223 (and (= Per_1_1 Per_0_1) (= Opp_0_1 2)))))
(assert
 (let (($x223 (= Opp_1_1 1)))
 (=> $x223 (= (+ Home_1_1 Home_0_1) 1))))
(assert
 (let (($x227 (= Opp_1_2 1)))
 (= $x227 (and (= Per_1_2 Per_0_2) (= Opp_0_2 2)))))
(assert
 (let (($x227 (= Opp_1_2 1)))
 (=> $x227 (= (+ Home_1_2 Home_0_2) 1))))
(assert
 (let (($x220 (= Opp_1_0 3)))
 (= $x220 (and (= Per_1_0 Per_2_0) (= Opp_2_0 2)))))
(assert
 (let (($x355 (= (+ Home_1_0 Home_2_0) 1)))
 (let (($x220 (= Opp_1_0 3)))
 (=> $x220 $x355))))
(assert
 (let (($x224 (= Opp_1_1 3)))
 (= $x224 (and (= Per_1_1 Per_2_1) (= Opp_2_1 2)))))
(assert
 (let (($x363 (= (+ Home_1_1 Home_2_1) 1)))
 (let (($x224 (= Opp_1_1 3)))
 (=> $x224 $x363))))
(assert
 (let (($x228 (= Opp_1_2 3)))
 (= $x228 (and (= Per_1_2 Per_2_2) (= Opp_2_2 2)))))
(assert
 (let (($x371 (= (+ Home_1_2 Home_2_2) 1)))
 (let (($x228 (= Opp_1_2 3)))
 (=> $x228 $x371))))
(assert
 (let (($x221 (= Opp_1_0 4)))
 (= $x221 (and (= Per_1_0 Per_3_0) (= Opp_3_0 2)))))
(assert
 (let (($x379 (= (+ Home_1_0 Home_3_0) 1)))
 (let (($x221 (= Opp_1_0 4)))
 (=> $x221 $x379))))
(assert
 (let (($x225 (= Opp_1_1 4)))
 (= $x225 (and (= Per_1_1 Per_3_1) (= Opp_3_1 2)))))
(assert
 (let (($x387 (= (+ Home_1_1 Home_3_1) 1)))
 (let (($x225 (= Opp_1_1 4)))
 (=> $x225 $x387))))
(assert
 (let (($x229 (= Opp_1_2 4)))
 (= $x229 (and (= Per_1_2 Per_3_2) (= Opp_3_2 2)))))
(assert
 (let (($x395 (= (+ Home_1_2 Home_3_2) 1)))
 (let (($x229 (= Opp_1_2 4)))
 (=> $x229 $x395))))
(assert
 (let (($x231 (= Opp_2_0 1)))
 (= $x231 (and (= Per_2_0 Per_0_0) (= Opp_0_0 3)))))
(assert
 (let (($x231 (= Opp_2_0 1)))
 (=> $x231 (= (+ Home_2_0 Home_0_0) 1))))
(assert
 (let (($x235 (= Opp_2_1 1)))
 (= $x235 (and (= Per_2_1 Per_0_1) (= Opp_0_1 3)))))
(assert
 (let (($x235 (= Opp_2_1 1)))
 (=> $x235 (= (+ Home_2_1 Home_0_1) 1))))
(assert
 (let (($x239 (= Opp_2_2 1)))
 (= $x239 (and (= Per_2_2 Per_0_2) (= Opp_0_2 3)))))
(assert
 (let (($x239 (= Opp_2_2 1)))
 (=> $x239 (= (+ Home_2_2 Home_0_2) 1))))
(assert
 (let (($x232 (= Opp_2_0 2)))
 (= $x232 (and (= Per_2_0 Per_1_0) (= Opp_1_0 3)))))
(assert
 (let (($x232 (= Opp_2_0 2)))
 (=> $x232 (= (+ Home_2_0 Home_1_0) 1))))
(assert
 (let (($x236 (= Opp_2_1 2)))
 (= $x236 (and (= Per_2_1 Per_1_1) (= Opp_1_1 3)))))
(assert
 (let (($x236 (= Opp_2_1 2)))
 (=> $x236 (= (+ Home_2_1 Home_1_1) 1))))
(assert
 (let (($x240 (= Opp_2_2 2)))
 (= $x240 (and (= Per_2_2 Per_1_2) (= Opp_1_2 3)))))
(assert
 (let (($x240 (= Opp_2_2 2)))
 (=> $x240 (= (+ Home_2_2 Home_1_2) 1))))
(assert
 (let (($x233 (= Opp_2_0 4)))
 (= $x233 (and (= Per_2_0 Per_3_0) (= Opp_3_0 3)))))
(assert
 (let (($x451 (= (+ Home_2_0 Home_3_0) 1)))
 (let (($x233 (= Opp_2_0 4)))
 (=> $x233 $x451))))
(assert
 (let (($x237 (= Opp_2_1 4)))
 (= $x237 (and (= Per_2_1 Per_3_1) (= Opp_3_1 3)))))
(assert
 (let (($x459 (= (+ Home_2_1 Home_3_1) 1)))
 (let (($x237 (= Opp_2_1 4)))
 (=> $x237 $x459))))
(assert
 (let (($x241 (= Opp_2_2 4)))
 (= $x241 (and (= Per_2_2 Per_3_2) (= Opp_3_2 3)))))
(assert
 (let (($x467 (= (+ Home_2_2 Home_3_2) 1)))
 (let (($x241 (= Opp_2_2 4)))
 (=> $x241 $x467))))
(assert
 (let (($x243 (= Opp_3_0 1)))
 (= $x243 (and (= Per_3_0 Per_0_0) (= Opp_0_0 4)))))
(assert
 (let (($x243 (= Opp_3_0 1)))
 (=> $x243 (= (+ Home_3_0 Home_0_0) 1))))
(assert
 (let (($x247 (= Opp_3_1 1)))
 (= $x247 (and (= Per_3_1 Per_0_1) (= Opp_0_1 4)))))
(assert
 (let (($x247 (= Opp_3_1 1)))
 (=> $x247 (= (+ Home_3_1 Home_0_1) 1))))
(assert
 (let (($x251 (= Opp_3_2 1)))
 (= $x251 (and (= Per_3_2 Per_0_2) (= Opp_0_2 4)))))
(assert
 (let (($x251 (= Opp_3_2 1)))
 (=> $x251 (= (+ Home_3_2 Home_0_2) 1))))
(assert
 (let (($x244 (= Opp_3_0 2)))
 (= $x244 (and (= Per_3_0 Per_1_0) (= Opp_1_0 4)))))
(assert
 (let (($x244 (= Opp_3_0 2)))
 (=> $x244 (= (+ Home_3_0 Home_1_0) 1))))
(assert
 (let (($x248 (= Opp_3_1 2)))
 (= $x248 (and (= Per_3_1 Per_1_1) (= Opp_1_1 4)))))
(assert
 (let (($x248 (= Opp_3_1 2)))
 (=> $x248 (= (+ Home_3_1 Home_1_1) 1))))
(assert
 (let (($x252 (= Opp_3_2 2)))
 (= $x252 (and (= Per_3_2 Per_1_2) (= Opp_1_2 4)))))
(assert
 (let (($x252 (= Opp_3_2 2)))
 (=> $x252 (= (+ Home_3_2 Home_1_2) 1))))
(assert
 (let (($x245 (= Opp_3_0 3)))
 (= $x245 (and (= Per_3_0 Per_2_0) (= Opp_2_0 4)))))
(assert
 (let (($x245 (= Opp_3_0 3)))
 (=> $x245 (= (+ Home_3_0 Home_2_0) 1))))
(assert
 (let (($x249 (= Opp_3_1 3)))
 (= $x249 (and (= Per_3_1 Per_2_1) (= Opp_2_1 4)))))
(assert
 (let (($x249 (= Opp_3_1 3)))
 (=> $x249 (= (+ Home_3_1 Home_2_1) 1))))
(assert
 (let (($x253 (= Opp_3_2 3)))
 (= $x253 (and (= Per_3_2 Per_2_2) (= Opp_2_2 4)))))
(assert
 (let (($x253 (= Opp_3_2 3)))
 (=> $x253 (= (+ Home_3_2 Home_2_2) 1))))
(assert
 (and (distinct Opp_0_0 Opp_0_1 Opp_0_2) true))
(assert
 (and (distinct Opp_1_0 Opp_1_1 Opp_1_2) true))
(assert
 (and (distinct Opp_2_0 Opp_2_1 Opp_2_2) true))
(assert
 (and (distinct Opp_3_0 Opp_3_1 Opp_3_2) true))
(assert
 (let (($x553 (= Per_3_0 1)))
 (let ((?x554 (ite $x553 1 0)))
 (let ((?x552 (ite (= Per_2_0 1) 1 0)))
 (let ((?x550 (ite (= Per_1_0 1) 1 0)))
 (let (($x547 (= Per_0_0 1)))
 (let ((?x548 (ite $x547 1 0)))
 (= (+ ?x548 ?x550 ?x552 ?x554) 2))))))))
(assert
 (let ((?x564 (ite (= Per_3_0 2) 1 0)))
 (let (($x561 (= Per_2_0 2)))
 (let ((?x562 (ite $x561 1 0)))
 (let (($x559 (= Per_1_0 2)))
 (let ((?x560 (ite $x559 1 0)))
 (let ((?x558 (ite (= Per_0_0 2) 1 0)))
 (= (+ ?x558 ?x560 ?x562 ?x564) 2))))))))
(assert
 (let ((?x574 (ite (= Per_3_1 1) 1 0)))
 (let ((?x572 (ite (= Per_2_1 1) 1 0)))
 (let ((?x570 (ite (= Per_1_1 1) 1 0)))
 (let ((?x568 (ite (= Per_0_1 1) 1 0)))
 (= (+ ?x568 ?x570 ?x572 ?x574) 2))))))
(assert
 (let ((?x584 (ite (= Per_3_1 2) 1 0)))
 (let ((?x582 (ite (= Per_2_1 2) 1 0)))
 (let ((?x580 (ite (= Per_1_1 2) 1 0)))
 (let ((?x578 (ite (= Per_0_1 2) 1 0)))
 (= (+ ?x578 ?x580 ?x582 ?x584) 2))))))
(assert
 (let ((?x594 (ite (= Per_3_2 1) 1 0)))
 (let ((?x592 (ite (= Per_2_2 1) 1 0)))
 (let ((?x590 (ite (= Per_1_2 1) 1 0)))
 (let ((?x588 (ite (= Per_0_2 1) 1 0)))
 (= (+ ?x588 ?x590 ?x592 ?x594) 2))))))
(assert
 (let ((?x604 (ite (= Per_3_2 2) 1 0)))
 (let ((?x602 (ite (= Per_2_2 2) 1 0)))
 (let ((?x600 (ite (= Per_1_2 2) 1 0)))
 (let ((?x598 (ite (= Per_0_2 2) 1 0)))
 (= (+ ?x598 ?x600 ?x602 ?x604) 2))))))
(assert
 (let ((?x588 (ite (= Per_0_2 1) 1 0)))
 (let ((?x568 (ite (= Per_0_1 1) 1 0)))
 (let (($x547 (= Per_0_0 1)))
 (let ((?x548 (ite $x547 1 0)))
 (<= (+ ?x548 ?x568 ?x588) 2))))))
(assert
 (let ((?x598 (ite (= Per_0_2 2) 1 0)))
 (let ((?x578 (ite (= Per_0_1 2) 1 0)))
 (let ((?x558 (ite (= Per_0_0 2) 1 0)))
 (<= (+ ?x558 ?x578 ?x598) 2)))))
(assert
 (let ((?x590 (ite (= Per_1_2 1) 1 0)))
 (let ((?x570 (ite (= Per_1_1 1) 1 0)))
 (let ((?x550 (ite (= Per_1_0 1) 1 0)))
 (<= (+ ?x550 ?x570 ?x590) 2)))))
(assert
 (let ((?x600 (ite (= Per_1_2 2) 1 0)))
 (let ((?x580 (ite (= Per_1_1 2) 1 0)))
 (let (($x559 (= Per_1_0 2)))
 (let ((?x560 (ite $x559 1 0)))
 (<= (+ ?x560 ?x580 ?x600) 2))))))
(assert
 (let ((?x592 (ite (= Per_2_2 1) 1 0)))
 (let ((?x572 (ite (= Per_2_1 1) 1 0)))
 (let ((?x552 (ite (= Per_2_0 1) 1 0)))
 (<= (+ ?x552 ?x572 ?x592) 2)))))
(assert
 (let ((?x602 (ite (= Per_2_2 2) 1 0)))
 (let ((?x582 (ite (= Per_2_1 2) 1 0)))
 (let (($x561 (= Per_2_0 2)))
 (let ((?x562 (ite $x561 1 0)))
 (<= (+ ?x562 ?x582 ?x602) 2))))))
(assert
 (let ((?x594 (ite (= Per_3_2 1) 1 0)))
 (let ((?x574 (ite (= Per_3_1 1) 1 0)))
 (let (($x553 (= Per_3_0 1)))
 (let ((?x554 (ite $x553 1 0)))
 (<= (+ ?x554 ?x574 ?x594) 2))))))
(assert
 (let ((?x604 (ite (= Per_3_2 2) 1 0)))
 (let ((?x584 (ite (= Per_3_1 2) 1 0)))
 (let ((?x564 (ite (= Per_3_0 2) 1 0)))
 (<= (+ ?x564 ?x584 ?x604) 2)))))
(assert
 (let ((?x628 (- (* 2 (+ Home_0_0 Home_0_1 Home_0_2)) 3)))
 (<= (ite (> ?x628 0) ?x628 (- ?x628)) 1)))
(assert
 (let ((?x657 (- (* 2 (+ Home_1_0 Home_1_1 Home_1_2)) 3)))
 (<= (ite (> ?x657 0) ?x657 (- ?x657)) 1)))
(assert
 (let ((?x688 (- (* 2 (+ Home_2_0 Home_2_1 Home_2_2)) 3)))
 (<= (ite (> ?x688 0) ?x688 (- ?x688)) 1)))
(assert
 (let ((?x719 (- (* 2 (+ Home_3_0 Home_3_1 Home_3_2)) 3)))
 (<= (ite (> ?x719 0) ?x719 (- ?x719)) 1)))
(assert
 (let ((?x623 (+ Home_0_0 Home_0_1 Home_0_2)))
 (= ?x623 (+ 1 (ite High_0 1 0)))))
(assert
 (let ((?x766 (ite High_1 1 0)))
 (let ((?x767 (+ 1 ?x766)))
 (let ((?x624 (+ Home_1_0 Home_1_1 Home_1_2)))
 (= ?x624 ?x767)))))
(assert
 (let ((?x772 (ite High_2 1 0)))
 (let ((?x773 (+ 1 ?x772)))
 (let ((?x625 (+ Home_2_0 Home_2_1 Home_2_2)))
 (= ?x625 ?x773)))))
(assert
 (let ((?x778 (ite High_3 1 0)))
 (let ((?x779 (+ 1 ?x778)))
 (let ((?x626 (+ Home_3_0 Home_3_1 Home_3_2)))
 (= ?x626 ?x779)))))
(assert
 (let ((?x778 (ite High_3 1 0)))
 (let ((?x772 (ite High_2 1 0)))
 (let ((?x766 (ite High_1 1 0)))
 (let ((?x760 (ite High_0 1 0)))
 (= (+ ?x760 ?x766 ?x772 ?x778) 2))))))
(assert
 (= Home_0_0 1))
(assert
 (= Per_0_0 1))
(assert
 (= Per_3_0 1))
(assert
 (= Per_1_0 2))
(assert
 (= Per_2_0 2))
(assert
 (<= Per_0_0 Per_0_1))
(assert
 (<= Per_0_1 Per_0_2))
(check-sat)
