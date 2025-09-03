(set-logic QF_LIA)
(set-option :produce-models true)
(set-option :timeout 300000)
; benchmark generated from python API
(set-info :status unknown)
(declare-fun Light_1 () Int)
(declare-fun Per_1_1 () Int)
(declare-fun Per_1_2 () Int)
(declare-fun Per_1_3 () Int)
(declare-fun Per_1_4 () Int)
(declare-fun Per_1_5 () Int)
(declare-fun Light_2 () Int)
(declare-fun Per_2_1 () Int)
(declare-fun Per_2_2 () Int)
(declare-fun Per_2_3 () Int)
(declare-fun Per_2_4 () Int)
(declare-fun Per_2_5 () Int)
(declare-fun Light_3 () Int)
(declare-fun Per_3_1 () Int)
(declare-fun Per_3_2 () Int)
(declare-fun Per_3_3 () Int)
(declare-fun Per_3_4 () Int)
(declare-fun Per_3_5 () Int)
(declare-fun Light_4 () Int)
(declare-fun Per_4_1 () Int)
(declare-fun Per_4_2 () Int)
(declare-fun Per_4_3 () Int)
(declare-fun Per_4_4 () Int)
(declare-fun Per_4_5 () Int)
(declare-fun Light_5 () Int)
(declare-fun Per_5_1 () Int)
(declare-fun Per_5_2 () Int)
(declare-fun Per_5_3 () Int)
(declare-fun Per_5_4 () Int)
(declare-fun Per_5_5 () Int)
(declare-fun Light_6 () Int)
(declare-fun Per_6_1 () Int)
(declare-fun Per_6_2 () Int)
(declare-fun Per_6_3 () Int)
(declare-fun Per_6_4 () Int)
(declare-fun Per_6_5 () Int)
(declare-fun Home_6_1 () Bool)
(declare-fun Home_1_1 () Bool)
(declare-fun Home_5_1 () Bool)
(declare-fun Home_2_1 () Bool)
(declare-fun Home_4_1 () Bool)
(declare-fun Home_3_1 () Bool)
(declare-fun Home_5_2 () Bool)
(declare-fun Home_1_2 () Bool)
(declare-fun Home_4_2 () Bool)
(declare-fun Home_6_2 () Bool)
(declare-fun Home_3_2 () Bool)
(declare-fun Home_2_2 () Bool)
(declare-fun Home_4_3 () Bool)
(declare-fun Home_1_3 () Bool)
(declare-fun Home_3_3 () Bool)
(declare-fun Home_5_3 () Bool)
(declare-fun Home_2_3 () Bool)
(declare-fun Home_6_3 () Bool)
(declare-fun Home_3_4 () Bool)
(declare-fun Home_1_4 () Bool)
(declare-fun Home_2_4 () Bool)
(declare-fun Home_4_4 () Bool)
(declare-fun Home_6_4 () Bool)
(declare-fun Home_5_4 () Bool)
(declare-fun Home_2_5 () Bool)
(declare-fun Home_1_5 () Bool)
(declare-fun Home_6_5 () Bool)
(declare-fun Home_3_5 () Bool)
(declare-fun Home_5_5 () Bool)
(declare-fun Home_4_5 () Bool)
(assert
 (let (($x74 (<= Light_1 3)))
 (let (($x72 (>= Light_1 1)))
 (and $x72 $x74))))
(assert
 (let (($x94 (<= Per_1_1 3)))
 (let (($x93 (>= Per_1_1 1)))
 (and $x93 $x94))))
(assert
 (let (($x97 (<= Per_1_2 3)))
 (let (($x96 (>= Per_1_2 1)))
 (and $x96 $x97))))
(assert
 (let (($x100 (<= Per_1_3 3)))
 (let (($x99 (>= Per_1_3 1)))
 (and $x99 $x100))))
(assert
 (let (($x103 (<= Per_1_4 3)))
 (let (($x102 (>= Per_1_4 1)))
 (and $x102 $x103))))
(assert
 (let (($x106 (<= Per_1_5 3)))
 (let (($x105 (>= Per_1_5 1)))
 (and $x105 $x106))))
(assert
 (let (($x109 (<= Light_2 3)))
 (let (($x108 (>= Light_2 1)))
 (and $x108 $x109))))
(assert
 (let (($x112 (<= Per_2_1 3)))
 (let (($x111 (>= Per_2_1 1)))
 (and $x111 $x112))))
(assert
 (let (($x115 (<= Per_2_2 3)))
 (let (($x114 (>= Per_2_2 1)))
 (and $x114 $x115))))
(assert
 (let (($x118 (<= Per_2_3 3)))
 (let (($x117 (>= Per_2_3 1)))
 (and $x117 $x118))))
(assert
 (let (($x121 (<= Per_2_4 3)))
 (let (($x120 (>= Per_2_4 1)))
 (and $x120 $x121))))
(assert
 (let (($x124 (<= Per_2_5 3)))
 (let (($x123 (>= Per_2_5 1)))
 (and $x123 $x124))))
(assert
 (let (($x127 (<= Light_3 3)))
 (let (($x126 (>= Light_3 1)))
 (and $x126 $x127))))
(assert
 (let (($x130 (<= Per_3_1 3)))
 (let (($x129 (>= Per_3_1 1)))
 (and $x129 $x130))))
(assert
 (let (($x133 (<= Per_3_2 3)))
 (let (($x132 (>= Per_3_2 1)))
 (and $x132 $x133))))
(assert
 (let (($x136 (<= Per_3_3 3)))
 (let (($x135 (>= Per_3_3 1)))
 (and $x135 $x136))))
(assert
 (let (($x139 (<= Per_3_4 3)))
 (let (($x138 (>= Per_3_4 1)))
 (and $x138 $x139))))
(assert
 (let (($x142 (<= Per_3_5 3)))
 (let (($x141 (>= Per_3_5 1)))
 (and $x141 $x142))))
(assert
 (let (($x145 (<= Light_4 3)))
 (let (($x144 (>= Light_4 1)))
 (and $x144 $x145))))
(assert
 (let (($x148 (<= Per_4_1 3)))
 (let (($x147 (>= Per_4_1 1)))
 (and $x147 $x148))))
(assert
 (let (($x151 (<= Per_4_2 3)))
 (let (($x150 (>= Per_4_2 1)))
 (and $x150 $x151))))
(assert
 (let (($x154 (<= Per_4_3 3)))
 (let (($x153 (>= Per_4_3 1)))
 (and $x153 $x154))))
(assert
 (let (($x157 (<= Per_4_4 3)))
 (let (($x156 (>= Per_4_4 1)))
 (and $x156 $x157))))
(assert
 (let (($x160 (<= Per_4_5 3)))
 (let (($x159 (>= Per_4_5 1)))
 (and $x159 $x160))))
(assert
 (let (($x163 (<= Light_5 3)))
 (let (($x162 (>= Light_5 1)))
 (and $x162 $x163))))
(assert
 (let (($x166 (<= Per_5_1 3)))
 (let (($x165 (>= Per_5_1 1)))
 (and $x165 $x166))))
(assert
 (let (($x169 (<= Per_5_2 3)))
 (let (($x168 (>= Per_5_2 1)))
 (and $x168 $x169))))
(assert
 (let (($x172 (<= Per_5_3 3)))
 (let (($x171 (>= Per_5_3 1)))
 (and $x171 $x172))))
(assert
 (let (($x175 (<= Per_5_4 3)))
 (let (($x174 (>= Per_5_4 1)))
 (and $x174 $x175))))
(assert
 (let (($x178 (<= Per_5_5 3)))
 (let (($x177 (>= Per_5_5 1)))
 (and $x177 $x178))))
(assert
 (let (($x181 (<= Light_6 3)))
 (let (($x180 (>= Light_6 1)))
 (and $x180 $x181))))
(assert
 (let (($x184 (<= Per_6_1 3)))
 (let (($x183 (>= Per_6_1 1)))
 (and $x183 $x184))))
(assert
 (let (($x187 (<= Per_6_2 3)))
 (let (($x186 (>= Per_6_2 1)))
 (and $x186 $x187))))
(assert
 (let (($x190 (<= Per_6_3 3)))
 (let (($x189 (>= Per_6_3 1)))
 (and $x189 $x190))))
(assert
 (let (($x193 (<= Per_6_4 3)))
 (let (($x192 (>= Per_6_4 1)))
 (and $x192 $x193))))
(assert
 (let (($x196 (<= Per_6_5 3)))
 (let (($x195 (>= Per_6_5 1)))
 (and $x195 $x196))))
(assert
 (= Per_1_1 Per_6_1))
(assert
 (and (distinct Per_1_1 Per_2_1) true))
(assert
 (and (distinct Per_1_1 Per_3_1) true))
(assert
 (and (distinct Per_1_1 Per_4_1) true))
(assert
 (and (distinct Per_1_1 Per_5_1) true))
(assert
 (= Per_2_1 Per_5_1))
(assert
 (and (distinct Per_2_1 Per_1_1) true))
(assert
 (and (distinct Per_2_1 Per_3_1) true))
(assert
 (and (distinct Per_2_1 Per_4_1) true))
(assert
 (and (distinct Per_2_1 Per_6_1) true))
(assert
 (= Per_3_1 Per_4_1))
(assert
 (and (distinct Per_3_1 Per_1_1) true))
(assert
 (and (distinct Per_3_1 Per_2_1) true))
(assert
 (and (distinct Per_3_1 Per_5_1) true))
(assert
 (and (distinct Per_3_1 Per_6_1) true))
(assert
 (= Per_4_1 Per_3_1))
(assert
 (and (distinct Per_4_1 Per_1_1) true))
(assert
 (and (distinct Per_4_1 Per_2_1) true))
(assert
 (and (distinct Per_4_1 Per_5_1) true))
(assert
 (and (distinct Per_4_1 Per_6_1) true))
(assert
 (= Per_5_1 Per_2_1))
(assert
 (and (distinct Per_5_1 Per_1_1) true))
(assert
 (and (distinct Per_5_1 Per_3_1) true))
(assert
 (and (distinct Per_5_1 Per_4_1) true))
(assert
 (and (distinct Per_5_1 Per_6_1) true))
(assert
 (= Per_6_1 Per_1_1))
(assert
 (and (distinct Per_6_1 Per_2_1) true))
(assert
 (and (distinct Per_6_1 Per_3_1) true))
(assert
 (and (distinct Per_6_1 Per_4_1) true))
(assert
 (and (distinct Per_6_1 Per_5_1) true))
(assert
 (= Per_1_2 Per_5_2))
(assert
 (and (distinct Per_1_2 Per_2_2) true))
(assert
 (and (distinct Per_1_2 Per_3_2) true))
(assert
 (and (distinct Per_1_2 Per_4_2) true))
(assert
 (and (distinct Per_1_2 Per_6_2) true))
(assert
 (= Per_2_2 Per_3_2))
(assert
 (and (distinct Per_2_2 Per_1_2) true))
(assert
 (and (distinct Per_2_2 Per_4_2) true))
(assert
 (and (distinct Per_2_2 Per_5_2) true))
(assert
 (and (distinct Per_2_2 Per_6_2) true))
(assert
 (= Per_3_2 Per_2_2))
(assert
 (and (distinct Per_3_2 Per_1_2) true))
(assert
 (and (distinct Per_3_2 Per_4_2) true))
(assert
 (and (distinct Per_3_2 Per_5_2) true))
(assert
 (and (distinct Per_3_2 Per_6_2) true))
(assert
 (= Per_4_2 Per_6_2))
(assert
 (and (distinct Per_4_2 Per_1_2) true))
(assert
 (and (distinct Per_4_2 Per_2_2) true))
(assert
 (and (distinct Per_4_2 Per_3_2) true))
(assert
 (and (distinct Per_4_2 Per_5_2) true))
(assert
 (= Per_5_2 Per_1_2))
(assert
 (and (distinct Per_5_2 Per_2_2) true))
(assert
 (and (distinct Per_5_2 Per_3_2) true))
(assert
 (and (distinct Per_5_2 Per_4_2) true))
(assert
 (and (distinct Per_5_2 Per_6_2) true))
(assert
 (= Per_6_2 Per_4_2))
(assert
 (and (distinct Per_6_2 Per_1_2) true))
(assert
 (and (distinct Per_6_2 Per_2_2) true))
(assert
 (and (distinct Per_6_2 Per_3_2) true))
(assert
 (and (distinct Per_6_2 Per_5_2) true))
(assert
 (= Per_1_3 Per_4_3))
(assert
 (and (distinct Per_1_3 Per_2_3) true))
(assert
 (and (distinct Per_1_3 Per_3_3) true))
(assert
 (and (distinct Per_1_3 Per_5_3) true))
(assert
 (and (distinct Per_1_3 Per_6_3) true))
(assert
 (= Per_2_3 Per_6_3))
(assert
 (and (distinct Per_2_3 Per_1_3) true))
(assert
 (and (distinct Per_2_3 Per_3_3) true))
(assert
 (and (distinct Per_2_3 Per_4_3) true))
(assert
 (and (distinct Per_2_3 Per_5_3) true))
(assert
 (= Per_3_3 Per_5_3))
(assert
 (and (distinct Per_3_3 Per_1_3) true))
(assert
 (and (distinct Per_3_3 Per_2_3) true))
(assert
 (and (distinct Per_3_3 Per_4_3) true))
(assert
 (and (distinct Per_3_3 Per_6_3) true))
(assert
 (= Per_4_3 Per_1_3))
(assert
 (and (distinct Per_4_3 Per_2_3) true))
(assert
 (and (distinct Per_4_3 Per_3_3) true))
(assert
 (and (distinct Per_4_3 Per_5_3) true))
(assert
 (and (distinct Per_4_3 Per_6_3) true))
(assert
 (= Per_5_3 Per_3_3))
(assert
 (and (distinct Per_5_3 Per_1_3) true))
(assert
 (and (distinct Per_5_3 Per_2_3) true))
(assert
 (and (distinct Per_5_3 Per_4_3) true))
(assert
 (and (distinct Per_5_3 Per_6_3) true))
(assert
 (= Per_6_3 Per_2_3))
(assert
 (and (distinct Per_6_3 Per_1_3) true))
(assert
 (and (distinct Per_6_3 Per_3_3) true))
(assert
 (and (distinct Per_6_3 Per_4_3) true))
(assert
 (and (distinct Per_6_3 Per_5_3) true))
(assert
 (= Per_1_4 Per_3_4))
(assert
 (and (distinct Per_1_4 Per_2_4) true))
(assert
 (and (distinct Per_1_4 Per_4_4) true))
(assert
 (and (distinct Per_1_4 Per_5_4) true))
(assert
 (and (distinct Per_1_4 Per_6_4) true))
(assert
 (= Per_2_4 Per_4_4))
(assert
 (and (distinct Per_2_4 Per_1_4) true))
(assert
 (and (distinct Per_2_4 Per_3_4) true))
(assert
 (and (distinct Per_2_4 Per_5_4) true))
(assert
 (and (distinct Per_2_4 Per_6_4) true))
(assert
 (= Per_3_4 Per_1_4))
(assert
 (and (distinct Per_3_4 Per_2_4) true))
(assert
 (and (distinct Per_3_4 Per_4_4) true))
(assert
 (and (distinct Per_3_4 Per_5_4) true))
(assert
 (and (distinct Per_3_4 Per_6_4) true))
(assert
 (= Per_4_4 Per_2_4))
(assert
 (and (distinct Per_4_4 Per_1_4) true))
(assert
 (and (distinct Per_4_4 Per_3_4) true))
(assert
 (and (distinct Per_4_4 Per_5_4) true))
(assert
 (and (distinct Per_4_4 Per_6_4) true))
(assert
 (= Per_5_4 Per_6_4))
(assert
 (and (distinct Per_5_4 Per_1_4) true))
(assert
 (and (distinct Per_5_4 Per_2_4) true))
(assert
 (and (distinct Per_5_4 Per_3_4) true))
(assert
 (and (distinct Per_5_4 Per_4_4) true))
(assert
 (= Per_6_4 Per_5_4))
(assert
 (and (distinct Per_6_4 Per_1_4) true))
(assert
 (and (distinct Per_6_4 Per_2_4) true))
(assert
 (and (distinct Per_6_4 Per_3_4) true))
(assert
 (and (distinct Per_6_4 Per_4_4) true))
(assert
 (= Per_1_5 Per_2_5))
(assert
 (and (distinct Per_1_5 Per_3_5) true))
(assert
 (and (distinct Per_1_5 Per_4_5) true))
(assert
 (and (distinct Per_1_5 Per_5_5) true))
(assert
 (and (distinct Per_1_5 Per_6_5) true))
(assert
 (= Per_2_5 Per_1_5))
(assert
 (and (distinct Per_2_5 Per_3_5) true))
(assert
 (and (distinct Per_2_5 Per_4_5) true))
(assert
 (and (distinct Per_2_5 Per_5_5) true))
(assert
 (and (distinct Per_2_5 Per_6_5) true))
(assert
 (= Per_3_5 Per_6_5))
(assert
 (and (distinct Per_3_5 Per_1_5) true))
(assert
 (and (distinct Per_3_5 Per_2_5) true))
(assert
 (and (distinct Per_3_5 Per_4_5) true))
(assert
 (and (distinct Per_3_5 Per_5_5) true))
(assert
 (= Per_4_5 Per_5_5))
(assert
 (and (distinct Per_4_5 Per_1_5) true))
(assert
 (and (distinct Per_4_5 Per_2_5) true))
(assert
 (and (distinct Per_4_5 Per_3_5) true))
(assert
 (and (distinct Per_4_5 Per_6_5) true))
(assert
 (= Per_5_5 Per_4_5))
(assert
 (and (distinct Per_5_5 Per_1_5) true))
(assert
 (and (distinct Per_5_5 Per_2_5) true))
(assert
 (and (distinct Per_5_5 Per_3_5) true))
(assert
 (and (distinct Per_5_5 Per_6_5) true))
(assert
 (= Per_6_5 Per_3_5))
(assert
 (and (distinct Per_6_5 Per_1_5) true))
(assert
 (and (distinct Per_6_5 Per_2_5) true))
(assert
 (and (distinct Per_6_5 Per_4_5) true))
(assert
 (and (distinct Per_6_5 Per_5_5) true))
(assert
 (let (($x599 (= Per_6_1 1)))
 (let ((?x600 (ite $x599 1 0)))
 (let ((?x598 (ite (= Per_5_1 1) 1 0)))
 (let ((?x596 (ite (= Per_4_1 1) 1 0)))
 (let ((?x594 (ite (= Per_3_1 1) 1 0)))
 (let ((?x592 (ite (= Per_2_1 1) 1 0)))
 (let (($x588 (= Per_1_1 1)))
 (let ((?x590 (ite $x588 1 0)))
 (= (+ ?x590 ?x592 ?x594 ?x596 ?x598 ?x600) 2))))))))))
(assert
 (let ((?x615 (ite (= Per_6_1 2) 1 0)))
 (let (($x612 (= Per_5_1 2)))
 (let ((?x613 (ite $x612 1 0)))
 (let ((?x611 (ite (= Per_4_1 2) 1 0)))
 (let ((?x609 (ite (= Per_3_1 2) 1 0)))
 (let (($x606 (= Per_2_1 2)))
 (let ((?x607 (ite $x606 1 0)))
 (let ((?x605 (ite (= Per_1_1 2) 1 0)))
 (= (+ ?x605 ?x607 ?x609 ?x611 ?x613 ?x615) 2))))))))))
(assert
 (let ((?x629 (ite (= Per_6_1 3) 1 0)))
 (let ((?x627 (ite (= Per_5_1 3) 1 0)))
 (let (($x624 (= Per_4_1 3)))
 (let ((?x625 (ite $x624 1 0)))
 (let (($x622 (= Per_3_1 3)))
 (let ((?x623 (ite $x622 1 0)))
 (let ((?x621 (ite (= Per_2_1 3) 1 0)))
 (let ((?x619 (ite (= Per_1_1 3) 1 0)))
 (= (+ ?x619 ?x621 ?x623 ?x625 ?x627 ?x629) 2))))))))))
(assert
 (let ((?x643 (ite (= Per_6_2 1) 1 0)))
 (let ((?x641 (ite (= Per_5_2 1) 1 0)))
 (let ((?x639 (ite (= Per_4_2 1) 1 0)))
 (let ((?x637 (ite (= Per_3_2 1) 1 0)))
 (let ((?x635 (ite (= Per_2_2 1) 1 0)))
 (let ((?x633 (ite (= Per_1_2 1) 1 0)))
 (= (+ ?x633 ?x635 ?x637 ?x639 ?x641 ?x643) 2))))))))
(assert
 (let ((?x657 (ite (= Per_6_2 2) 1 0)))
 (let ((?x655 (ite (= Per_5_2 2) 1 0)))
 (let ((?x653 (ite (= Per_4_2 2) 1 0)))
 (let ((?x651 (ite (= Per_3_2 2) 1 0)))
 (let ((?x649 (ite (= Per_2_2 2) 1 0)))
 (let ((?x647 (ite (= Per_1_2 2) 1 0)))
 (= (+ ?x647 ?x649 ?x651 ?x653 ?x655 ?x657) 2))))))))
(assert
 (let ((?x671 (ite (= Per_6_2 3) 1 0)))
 (let ((?x669 (ite (= Per_5_2 3) 1 0)))
 (let ((?x667 (ite (= Per_4_2 3) 1 0)))
 (let ((?x665 (ite (= Per_3_2 3) 1 0)))
 (let ((?x663 (ite (= Per_2_2 3) 1 0)))
 (let ((?x661 (ite (= Per_1_2 3) 1 0)))
 (= (+ ?x661 ?x663 ?x665 ?x667 ?x669 ?x671) 2))))))))
(assert
 (let ((?x685 (ite (= Per_6_3 1) 1 0)))
 (let ((?x683 (ite (= Per_5_3 1) 1 0)))
 (let ((?x681 (ite (= Per_4_3 1) 1 0)))
 (let ((?x679 (ite (= Per_3_3 1) 1 0)))
 (let ((?x677 (ite (= Per_2_3 1) 1 0)))
 (let ((?x675 (ite (= Per_1_3 1) 1 0)))
 (= (+ ?x675 ?x677 ?x679 ?x681 ?x683 ?x685) 2))))))))
(assert
 (let ((?x699 (ite (= Per_6_3 2) 1 0)))
 (let ((?x697 (ite (= Per_5_3 2) 1 0)))
 (let ((?x695 (ite (= Per_4_3 2) 1 0)))
 (let ((?x693 (ite (= Per_3_3 2) 1 0)))
 (let ((?x691 (ite (= Per_2_3 2) 1 0)))
 (let ((?x689 (ite (= Per_1_3 2) 1 0)))
 (= (+ ?x689 ?x691 ?x693 ?x695 ?x697 ?x699) 2))))))))
(assert
 (let ((?x713 (ite (= Per_6_3 3) 1 0)))
 (let ((?x711 (ite (= Per_5_3 3) 1 0)))
 (let ((?x709 (ite (= Per_4_3 3) 1 0)))
 (let ((?x707 (ite (= Per_3_3 3) 1 0)))
 (let ((?x705 (ite (= Per_2_3 3) 1 0)))
 (let ((?x703 (ite (= Per_1_3 3) 1 0)))
 (= (+ ?x703 ?x705 ?x707 ?x709 ?x711 ?x713) 2))))))))
(assert
 (let ((?x727 (ite (= Per_6_4 1) 1 0)))
 (let ((?x725 (ite (= Per_5_4 1) 1 0)))
 (let ((?x723 (ite (= Per_4_4 1) 1 0)))
 (let ((?x721 (ite (= Per_3_4 1) 1 0)))
 (let ((?x719 (ite (= Per_2_4 1) 1 0)))
 (let ((?x717 (ite (= Per_1_4 1) 1 0)))
 (= (+ ?x717 ?x719 ?x721 ?x723 ?x725 ?x727) 2))))))))
(assert
 (let ((?x741 (ite (= Per_6_4 2) 1 0)))
 (let ((?x739 (ite (= Per_5_4 2) 1 0)))
 (let ((?x737 (ite (= Per_4_4 2) 1 0)))
 (let ((?x735 (ite (= Per_3_4 2) 1 0)))
 (let ((?x733 (ite (= Per_2_4 2) 1 0)))
 (let ((?x731 (ite (= Per_1_4 2) 1 0)))
 (= (+ ?x731 ?x733 ?x735 ?x737 ?x739 ?x741) 2))))))))
(assert
 (let ((?x755 (ite (= Per_6_4 3) 1 0)))
 (let ((?x753 (ite (= Per_5_4 3) 1 0)))
 (let ((?x751 (ite (= Per_4_4 3) 1 0)))
 (let ((?x749 (ite (= Per_3_4 3) 1 0)))
 (let ((?x747 (ite (= Per_2_4 3) 1 0)))
 (let ((?x745 (ite (= Per_1_4 3) 1 0)))
 (= (+ ?x745 ?x747 ?x749 ?x751 ?x753 ?x755) 2))))))))
(assert
 (let ((?x769 (ite (= Per_6_5 1) 1 0)))
 (let ((?x767 (ite (= Per_5_5 1) 1 0)))
 (let ((?x765 (ite (= Per_4_5 1) 1 0)))
 (let ((?x763 (ite (= Per_3_5 1) 1 0)))
 (let ((?x761 (ite (= Per_2_5 1) 1 0)))
 (let ((?x759 (ite (= Per_1_5 1) 1 0)))
 (= (+ ?x759 ?x761 ?x763 ?x765 ?x767 ?x769) 2))))))))
(assert
 (let ((?x783 (ite (= Per_6_5 2) 1 0)))
 (let ((?x781 (ite (= Per_5_5 2) 1 0)))
 (let ((?x779 (ite (= Per_4_5 2) 1 0)))
 (let ((?x777 (ite (= Per_3_5 2) 1 0)))
 (let ((?x775 (ite (= Per_2_5 2) 1 0)))
 (let ((?x773 (ite (= Per_1_5 2) 1 0)))
 (= (+ ?x773 ?x775 ?x777 ?x779 ?x781 ?x783) 2))))))))
(assert
 (let ((?x797 (ite (= Per_6_5 3) 1 0)))
 (let ((?x795 (ite (= Per_5_5 3) 1 0)))
 (let ((?x793 (ite (= Per_4_5 3) 1 0)))
 (let ((?x791 (ite (= Per_3_5 3) 1 0)))
 (let ((?x789 (ite (= Per_2_5 3) 1 0)))
 (let ((?x787 (ite (= Per_1_5 3) 1 0)))
 (= (+ ?x787 ?x789 ?x791 ?x793 ?x795 ?x797) 2))))))))
(assert
 (let ((?x759 (ite (= Per_1_5 1) 1 0)))
 (let ((?x717 (ite (= Per_1_4 1) 1 0)))
 (let ((?x675 (ite (= Per_1_3 1) 1 0)))
 (let ((?x633 (ite (= Per_1_2 1) 1 0)))
 (let (($x588 (= Per_1_1 1)))
 (let ((?x590 (ite $x588 1 0)))
 (let ((?x800 (+ ?x590 ?x633 ?x675 ?x717 ?x759)))
 (ite (= Light_1 1) (= ?x800 1) (= ?x800 2))))))))))
(assert
 (let ((?x773 (ite (= Per_1_5 2) 1 0)))
 (let ((?x731 (ite (= Per_1_4 2) 1 0)))
 (let ((?x689 (ite (= Per_1_3 2) 1 0)))
 (let ((?x647 (ite (= Per_1_2 2) 1 0)))
 (let ((?x605 (ite (= Per_1_1 2) 1 0)))
 (let ((?x805 (+ ?x605 ?x647 ?x689 ?x731 ?x773)))
 (ite (= Light_1 2) (= ?x805 1) (= ?x805 2)))))))))
(assert
 (let ((?x787 (ite (= Per_1_5 3) 1 0)))
 (let ((?x745 (ite (= Per_1_4 3) 1 0)))
 (let ((?x703 (ite (= Per_1_3 3) 1 0)))
 (let ((?x661 (ite (= Per_1_2 3) 1 0)))
 (let ((?x619 (ite (= Per_1_1 3) 1 0)))
 (let ((?x810 (+ ?x619 ?x661 ?x703 ?x745 ?x787)))
 (ite (= Light_1 3) (= ?x810 1) (= ?x810 2)))))))))
(assert
 (let ((?x761 (ite (= Per_2_5 1) 1 0)))
 (let ((?x719 (ite (= Per_2_4 1) 1 0)))
 (let ((?x677 (ite (= Per_2_3 1) 1 0)))
 (let ((?x635 (ite (= Per_2_2 1) 1 0)))
 (let ((?x592 (ite (= Per_2_1 1) 1 0)))
 (let ((?x815 (+ ?x592 ?x635 ?x677 ?x719 ?x761)))
 (ite (= Light_2 1) (= ?x815 1) (= ?x815 2)))))))))
(assert
 (let ((?x775 (ite (= Per_2_5 2) 1 0)))
 (let ((?x733 (ite (= Per_2_4 2) 1 0)))
 (let ((?x691 (ite (= Per_2_3 2) 1 0)))
 (let ((?x649 (ite (= Per_2_2 2) 1 0)))
 (let (($x606 (= Per_2_1 2)))
 (let ((?x607 (ite $x606 1 0)))
 (let ((?x820 (+ ?x607 ?x649 ?x691 ?x733 ?x775)))
 (ite (= Light_2 2) (= ?x820 1) (= ?x820 2))))))))))
(assert
 (let ((?x789 (ite (= Per_2_5 3) 1 0)))
 (let ((?x747 (ite (= Per_2_4 3) 1 0)))
 (let ((?x705 (ite (= Per_2_3 3) 1 0)))
 (let ((?x663 (ite (= Per_2_2 3) 1 0)))
 (let ((?x621 (ite (= Per_2_1 3) 1 0)))
 (let ((?x825 (+ ?x621 ?x663 ?x705 ?x747 ?x789)))
 (ite (= Light_2 3) (= ?x825 1) (= ?x825 2)))))))))
(assert
 (let ((?x763 (ite (= Per_3_5 1) 1 0)))
 (let ((?x721 (ite (= Per_3_4 1) 1 0)))
 (let ((?x679 (ite (= Per_3_3 1) 1 0)))
 (let ((?x637 (ite (= Per_3_2 1) 1 0)))
 (let ((?x594 (ite (= Per_3_1 1) 1 0)))
 (let ((?x830 (+ ?x594 ?x637 ?x679 ?x721 ?x763)))
 (ite (= Light_3 1) (= ?x830 1) (= ?x830 2)))))))))
(assert
 (let ((?x777 (ite (= Per_3_5 2) 1 0)))
 (let ((?x735 (ite (= Per_3_4 2) 1 0)))
 (let ((?x693 (ite (= Per_3_3 2) 1 0)))
 (let ((?x651 (ite (= Per_3_2 2) 1 0)))
 (let ((?x609 (ite (= Per_3_1 2) 1 0)))
 (let ((?x835 (+ ?x609 ?x651 ?x693 ?x735 ?x777)))
 (ite (= Light_3 2) (= ?x835 1) (= ?x835 2)))))))))
(assert
 (let ((?x791 (ite (= Per_3_5 3) 1 0)))
 (let ((?x749 (ite (= Per_3_4 3) 1 0)))
 (let ((?x707 (ite (= Per_3_3 3) 1 0)))
 (let ((?x665 (ite (= Per_3_2 3) 1 0)))
 (let (($x622 (= Per_3_1 3)))
 (let ((?x623 (ite $x622 1 0)))
 (let ((?x840 (+ ?x623 ?x665 ?x707 ?x749 ?x791)))
 (ite (= Light_3 3) (= ?x840 1) (= ?x840 2))))))))))
(assert
 (let ((?x765 (ite (= Per_4_5 1) 1 0)))
 (let ((?x723 (ite (= Per_4_4 1) 1 0)))
 (let ((?x681 (ite (= Per_4_3 1) 1 0)))
 (let ((?x639 (ite (= Per_4_2 1) 1 0)))
 (let ((?x596 (ite (= Per_4_1 1) 1 0)))
 (let ((?x845 (+ ?x596 ?x639 ?x681 ?x723 ?x765)))
 (ite (= Light_4 1) (= ?x845 1) (= ?x845 2)))))))))
(assert
 (let ((?x779 (ite (= Per_4_5 2) 1 0)))
 (let ((?x737 (ite (= Per_4_4 2) 1 0)))
 (let ((?x695 (ite (= Per_4_3 2) 1 0)))
 (let ((?x653 (ite (= Per_4_2 2) 1 0)))
 (let ((?x611 (ite (= Per_4_1 2) 1 0)))
 (let ((?x850 (+ ?x611 ?x653 ?x695 ?x737 ?x779)))
 (ite (= Light_4 2) (= ?x850 1) (= ?x850 2)))))))))
(assert
 (let ((?x793 (ite (= Per_4_5 3) 1 0)))
 (let ((?x751 (ite (= Per_4_4 3) 1 0)))
 (let ((?x709 (ite (= Per_4_3 3) 1 0)))
 (let ((?x667 (ite (= Per_4_2 3) 1 0)))
 (let (($x624 (= Per_4_1 3)))
 (let ((?x625 (ite $x624 1 0)))
 (let ((?x855 (+ ?x625 ?x667 ?x709 ?x751 ?x793)))
 (ite (= Light_4 3) (= ?x855 1) (= ?x855 2))))))))))
(assert
 (let ((?x767 (ite (= Per_5_5 1) 1 0)))
 (let ((?x725 (ite (= Per_5_4 1) 1 0)))
 (let ((?x683 (ite (= Per_5_3 1) 1 0)))
 (let ((?x641 (ite (= Per_5_2 1) 1 0)))
 (let ((?x598 (ite (= Per_5_1 1) 1 0)))
 (let ((?x860 (+ ?x598 ?x641 ?x683 ?x725 ?x767)))
 (ite (= Light_5 1) (= ?x860 1) (= ?x860 2)))))))))
(assert
 (let ((?x781 (ite (= Per_5_5 2) 1 0)))
 (let ((?x739 (ite (= Per_5_4 2) 1 0)))
 (let ((?x697 (ite (= Per_5_3 2) 1 0)))
 (let ((?x655 (ite (= Per_5_2 2) 1 0)))
 (let (($x612 (= Per_5_1 2)))
 (let ((?x613 (ite $x612 1 0)))
 (let ((?x865 (+ ?x613 ?x655 ?x697 ?x739 ?x781)))
 (ite (= Light_5 2) (= ?x865 1) (= ?x865 2))))))))))
(assert
 (let ((?x795 (ite (= Per_5_5 3) 1 0)))
 (let ((?x753 (ite (= Per_5_4 3) 1 0)))
 (let ((?x711 (ite (= Per_5_3 3) 1 0)))
 (let ((?x669 (ite (= Per_5_2 3) 1 0)))
 (let ((?x627 (ite (= Per_5_1 3) 1 0)))
 (let ((?x870 (+ ?x627 ?x669 ?x711 ?x753 ?x795)))
 (ite (= Light_5 3) (= ?x870 1) (= ?x870 2)))))))))
(assert
 (let ((?x769 (ite (= Per_6_5 1) 1 0)))
 (let ((?x727 (ite (= Per_6_4 1) 1 0)))
 (let ((?x685 (ite (= Per_6_3 1) 1 0)))
 (let ((?x643 (ite (= Per_6_2 1) 1 0)))
 (let (($x599 (= Per_6_1 1)))
 (let ((?x600 (ite $x599 1 0)))
 (let ((?x875 (+ ?x600 ?x643 ?x685 ?x727 ?x769)))
 (ite (= Light_6 1) (= ?x875 1) (= ?x875 2))))))))))
(assert
 (let ((?x783 (ite (= Per_6_5 2) 1 0)))
 (let ((?x741 (ite (= Per_6_4 2) 1 0)))
 (let ((?x699 (ite (= Per_6_3 2) 1 0)))
 (let ((?x657 (ite (= Per_6_2 2) 1 0)))
 (let ((?x615 (ite (= Per_6_1 2) 1 0)))
 (let ((?x880 (+ ?x615 ?x657 ?x699 ?x741 ?x783)))
 (ite (= Light_6 2) (= ?x880 1) (= ?x880 2)))))))))
(assert
 (let ((?x797 (ite (= Per_6_5 3) 1 0)))
 (let ((?x755 (ite (= Per_6_4 3) 1 0)))
 (let ((?x713 (ite (= Per_6_3 3) 1 0)))
 (let ((?x671 (ite (= Per_6_2 3) 1 0)))
 (let ((?x629 (ite (= Per_6_1 3) 1 0)))
 (let ((?x885 (+ ?x629 ?x671 ?x713 ?x755 ?x797)))
 (ite (= Light_6 3) (= ?x885 1) (= ?x885 2)))))))))
(assert
 (xor Home_1_1 Home_6_1))
(assert
 (xor Home_2_1 Home_5_1))
(assert
 (xor Home_3_1 Home_4_1))
(assert
 (xor Home_1_2 Home_5_2))
(assert
 (xor Home_6_2 Home_4_2))
(assert
 (xor Home_2_2 Home_3_2))
(assert
 (xor Home_1_3 Home_4_3))
(assert
 (xor Home_5_3 Home_3_3))
(assert
 (xor Home_6_3 Home_2_3))
(assert
 (xor Home_1_4 Home_3_4))
(assert
 (xor Home_4_4 Home_2_4))
(assert
 (xor Home_5_4 Home_6_4))
(assert
 (xor Home_1_5 Home_2_5))
(assert
 (xor Home_3_5 Home_6_5))
(assert
 (xor Home_4_5 Home_5_5))
(assert
 (let ((?x939 (ite Home_1_5 1 0)))
 (let ((?x938 (ite Home_1_4 1 0)))
 (let ((?x937 (ite Home_1_3 1 0)))
 (let ((?x936 (ite Home_1_2 1 0)))
 (let ((?x933 (ite Home_1_1 1 0)))
 (let ((?x940 (+ ?x933 ?x936 ?x937 ?x938 ?x939)))
 (<= ?x940 4))))))))
(assert
 (let ((?x939 (ite Home_1_5 1 0)))
 (let ((?x938 (ite Home_1_4 1 0)))
 (let ((?x937 (ite Home_1_3 1 0)))
 (let ((?x936 (ite Home_1_2 1 0)))
 (let ((?x933 (ite Home_1_1 1 0)))
 (let ((?x940 (+ ?x933 ?x936 ?x937 ?x938 ?x939)))
 (>= ?x940 2))))))))
(assert
 (let ((?x945 (ite Home_2_5 1 0)))
 (let ((?x944 (ite Home_2_4 1 0)))
 (let ((?x943 (ite Home_2_3 1 0)))
 (let ((?x942 (ite Home_2_2 1 0)))
 (let ((?x941 (ite Home_2_1 1 0)))
 (let ((?x946 (+ ?x941 ?x942 ?x943 ?x944 ?x945)))
 (<= ?x946 4))))))))
(assert
 (let ((?x945 (ite Home_2_5 1 0)))
 (let ((?x944 (ite Home_2_4 1 0)))
 (let ((?x943 (ite Home_2_3 1 0)))
 (let ((?x942 (ite Home_2_2 1 0)))
 (let ((?x941 (ite Home_2_1 1 0)))
 (let ((?x946 (+ ?x941 ?x942 ?x943 ?x944 ?x945)))
 (>= ?x946 2))))))))
(assert
 (let ((?x951 (ite Home_3_5 1 0)))
 (let ((?x950 (ite Home_3_4 1 0)))
 (let ((?x949 (ite Home_3_3 1 0)))
 (let ((?x948 (ite Home_3_2 1 0)))
 (let ((?x947 (ite Home_3_1 1 0)))
 (let ((?x952 (+ ?x947 ?x948 ?x949 ?x950 ?x951)))
 (<= ?x952 4))))))))
(assert
 (let ((?x951 (ite Home_3_5 1 0)))
 (let ((?x950 (ite Home_3_4 1 0)))
 (let ((?x949 (ite Home_3_3 1 0)))
 (let ((?x948 (ite Home_3_2 1 0)))
 (let ((?x947 (ite Home_3_1 1 0)))
 (let ((?x952 (+ ?x947 ?x948 ?x949 ?x950 ?x951)))
 (>= ?x952 2))))))))
(assert
 (let ((?x957 (ite Home_4_5 1 0)))
 (let ((?x956 (ite Home_4_4 1 0)))
 (let ((?x955 (ite Home_4_3 1 0)))
 (let ((?x954 (ite Home_4_2 1 0)))
 (let ((?x953 (ite Home_4_1 1 0)))
 (let ((?x958 (+ ?x953 ?x954 ?x955 ?x956 ?x957)))
 (<= ?x958 4))))))))
(assert
 (let ((?x957 (ite Home_4_5 1 0)))
 (let ((?x956 (ite Home_4_4 1 0)))
 (let ((?x955 (ite Home_4_3 1 0)))
 (let ((?x954 (ite Home_4_2 1 0)))
 (let ((?x953 (ite Home_4_1 1 0)))
 (let ((?x958 (+ ?x953 ?x954 ?x955 ?x956 ?x957)))
 (>= ?x958 2))))))))
(assert
 (let ((?x963 (ite Home_5_5 1 0)))
 (let ((?x962 (ite Home_5_4 1 0)))
 (let ((?x961 (ite Home_5_3 1 0)))
 (let ((?x960 (ite Home_5_2 1 0)))
 (let ((?x959 (ite Home_5_1 1 0)))
 (let ((?x964 (+ ?x959 ?x960 ?x961 ?x962 ?x963)))
 (<= ?x964 4))))))))
(assert
 (let ((?x963 (ite Home_5_5 1 0)))
 (let ((?x962 (ite Home_5_4 1 0)))
 (let ((?x961 (ite Home_5_3 1 0)))
 (let ((?x960 (ite Home_5_2 1 0)))
 (let ((?x959 (ite Home_5_1 1 0)))
 (let ((?x964 (+ ?x959 ?x960 ?x961 ?x962 ?x963)))
 (>= ?x964 2))))))))
(assert
 (let ((?x969 (ite Home_6_5 1 0)))
 (let ((?x968 (ite Home_6_4 1 0)))
 (let ((?x967 (ite Home_6_3 1 0)))
 (let ((?x966 (ite Home_6_2 1 0)))
 (let ((?x965 (ite Home_6_1 1 0)))
 (let ((?x970 (+ ?x965 ?x966 ?x967 ?x968 ?x969)))
 (<= ?x970 4))))))))
(assert
 (let ((?x969 (ite Home_6_5 1 0)))
 (let ((?x968 (ite Home_6_4 1 0)))
 (let ((?x967 (ite Home_6_3 1 0)))
 (let ((?x966 (ite Home_6_2 1 0)))
 (let ((?x965 (ite Home_6_1 1 0)))
 (let ((?x970 (+ ?x965 ?x966 ?x967 ?x968 ?x969)))
 (>= ?x970 2))))))))
(assert
 (let ((?x969 (ite Home_6_5 1 0)))
 (let ((?x968 (ite Home_6_4 1 0)))
 (let ((?x967 (ite Home_6_3 1 0)))
 (let ((?x966 (ite Home_6_2 1 0)))
 (let ((?x965 (ite Home_6_1 1 0)))
 (let ((?x970 (+ ?x965 ?x966 ?x967 ?x968 ?x969)))
 (let ((?x1011 (- (* 2 ?x970) 5)))
 (let ((?x963 (ite Home_5_5 1 0)))
 (let ((?x962 (ite Home_5_4 1 0)))
 (let ((?x961 (ite Home_5_3 1 0)))
 (let ((?x960 (ite Home_5_2 1 0)))
 (let ((?x959 (ite Home_5_1 1 0)))
 (let ((?x964 (+ ?x959 ?x960 ?x961 ?x962 ?x963)))
 (let ((?x1006 (- (* 2 ?x964) 5)))
 (let ((?x957 (ite Home_4_5 1 0)))
 (let ((?x956 (ite Home_4_4 1 0)))
 (let ((?x955 (ite Home_4_3 1 0)))
 (let ((?x954 (ite Home_4_2 1 0)))
 (let ((?x953 (ite Home_4_1 1 0)))
 (let ((?x958 (+ ?x953 ?x954 ?x955 ?x956 ?x957)))
 (let ((?x1001 (- (* 2 ?x958) 5)))
 (let ((?x951 (ite Home_3_5 1 0)))
 (let ((?x950 (ite Home_3_4 1 0)))
 (let ((?x949 (ite Home_3_3 1 0)))
 (let ((?x948 (ite Home_3_2 1 0)))
 (let ((?x947 (ite Home_3_1 1 0)))
 (let ((?x952 (+ ?x947 ?x948 ?x949 ?x950 ?x951)))
 (let ((?x996 (- (* 2 ?x952) 5)))
 (let ((?x945 (ite Home_2_5 1 0)))
 (let ((?x944 (ite Home_2_4 1 0)))
 (let ((?x943 (ite Home_2_3 1 0)))
 (let ((?x942 (ite Home_2_2 1 0)))
 (let ((?x941 (ite Home_2_1 1 0)))
 (let ((?x946 (+ ?x941 ?x942 ?x943 ?x944 ?x945)))
 (let ((?x991 (- (* 2 ?x946) 5)))
 (let ((?x939 (ite Home_1_5 1 0)))
 (let ((?x938 (ite Home_1_4 1 0)))
 (let ((?x937 (ite Home_1_3 1 0)))
 (let ((?x936 (ite Home_1_2 1 0)))
 (let ((?x933 (ite Home_1_1 1 0)))
 (let ((?x940 (+ ?x933 ?x936 ?x937 ?x938 ?x939)))
 (let ((?x986 (- (* 2 ?x940) 5)))
 (let ((?x1015 (+ (ite (> ?x986 0) ?x986 (- ?x986)) (ite (> ?x991 0) ?x991 (- ?x991)) (ite (> ?x996 0) ?x996 (- ?x996)) (ite (> ?x1001 0) ?x1001 (- ?x1001)) (ite (> ?x1006 0) ?x1006 (- ?x1006)) (ite (> ?x1011 0) ?x1011 (- ?x1011)))))
 (< ?x1015 8)))))))))))))))))))))))))))))))))))))))))))))
(assert
 Home_1_1)
(assert
 (= Per_1_1 1))
(assert
 (= Per_6_1 1))
(assert
 (= Per_2_1 2))
(assert
 (= Per_5_1 2))
(assert
 (= Per_3_1 3))
(assert
 (= Per_4_1 3))
(check-sat)
(get-model)
