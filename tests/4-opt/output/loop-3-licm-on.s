	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -208
.main_label_entry:
# br label %label59
	b .main_label59
.main_label0:
# %op1 = phi i32 [ %op9, %label15 ], [ undef, %label59 ]
# %op2 = phi i32 [ 0, %label59 ], [ %op16, %label15 ]
# %op3 = icmp slt i32 %op2, 1000000
	ld.w $t0, $fp, -24
	lu12i.w $t1, 244
	ori $t1, $t1, 576
	slt $t0, $t0, $t1
	st.b $t0, $fp, -25
# %op4 = zext i1 %op3 to i32
	ld.b $t0, $fp, -25
	bstrpick.w $t1, $t0, 0, 0
	st.w $t1, $fp, -29
# %op5 = icmp ne i32 %op4, 0
	ld.w $t0, $fp, -29
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	slt $t3, $t1, $t0
	or $t0, $t2, $t3
	st.b $t0, $fp, -30
# br i1 %op5, label %label6, label %label7
	ld.b $t0, $fp, -30
	bstrpick.d $t1, $t0, 0, 0
	bnez $t1, .main_label6
	b .main_label7
.main_label6:
# br label %label58
	b .main_label58
.main_label7:
# call void @output(i32 %op1)
	ld.w $a0, $fp, -20
	bl output
# ret void
	add.d $a0, $zero, $zero
	addi.d $sp, $sp, 208
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	jr $ra
.main_label8:
# %op9 = phi i32 [ %op1, %label58 ], [ %op18, %label24 ]
# %op10 = phi i32 [ 0, %label58 ], [ %op25, %label24 ]
# %op11 = icmp slt i32 %op10, 2
	ld.w $t0, $fp, -38
	addi.w $t1, $zero, 2
	slt $t0, $t0, $t1
	st.b $t0, $fp, -39
# %op12 = zext i1 %op11 to i32
	ld.b $t0, $fp, -39
	bstrpick.w $t1, $t0, 0, 0
	st.w $t1, $fp, -43
# %op13 = icmp ne i32 %op12, 0
	ld.w $t0, $fp, -43
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	slt $t3, $t1, $t0
	or $t0, $t2, $t3
	st.b $t0, $fp, -44
# br i1 %op13, label %label14, label %label15
	ld.b $t0, $fp, -44
	bstrpick.d $t1, $t0, 0, 0
	bnez $t1, .main_label14
	b .main_label15
.main_label14:
# br label %label57
	b .main_label57
.main_label15:
# %op16 = add i32 %op2, 1
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -48
# br label %label0
	ld.w $a0, $fp, -34
	st.w $a0, $fp, -20
	ld.w $a0, $fp, -48
	st.w $a0, $fp, -24
	b .main_label0
.main_label17:
# %op18 = phi i32 [ %op9, %label57 ], [ %op27, %label33 ]
# %op19 = phi i32 [ 0, %label57 ], [ %op34, %label33 ]
# %op20 = icmp slt i32 %op19, 2
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 2
	slt $t0, $t0, $t1
	st.b $t0, $fp, -57
# %op21 = zext i1 %op20 to i32
	ld.b $t0, $fp, -57
	bstrpick.w $t1, $t0, 0, 0
	st.w $t1, $fp, -61
# %op22 = icmp ne i32 %op21, 0
	ld.w $t0, $fp, -61
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	slt $t3, $t1, $t0
	or $t0, $t2, $t3
	st.b $t0, $fp, -62
# br i1 %op22, label %label23, label %label24
	ld.b $t0, $fp, -62
	bstrpick.d $t1, $t0, 0, 0
	bnez $t1, .main_label23
	b .main_label24
.main_label23:
# br label %label56
	b .main_label56
.main_label24:
# %op25 = add i32 %op10, 1
	ld.w $t0, $fp, -38
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -66
# br label %label8
	ld.w $a0, $fp, -52
	st.w $a0, $fp, -34
	ld.w $a0, $fp, -66
	st.w $a0, $fp, -38
	b .main_label8
.main_label26:
# %op27 = phi i32 [ %op18, %label56 ], [ %op36, %label42 ]
# %op28 = phi i32 [ 0, %label56 ], [ %op43, %label42 ]
# %op29 = icmp slt i32 %op28, 2
	ld.w $t0, $fp, -74
	addi.w $t1, $zero, 2
	slt $t0, $t0, $t1
	st.b $t0, $fp, -75
# %op30 = zext i1 %op29 to i32
	ld.b $t0, $fp, -75
	bstrpick.w $t1, $t0, 0, 0
	st.w $t1, $fp, -79
# %op31 = icmp ne i32 %op30, 0
	ld.w $t0, $fp, -79
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	slt $t3, $t1, $t0
	or $t0, $t2, $t3
	st.b $t0, $fp, -80
# br i1 %op31, label %label32, label %label33
	ld.b $t0, $fp, -80
	bstrpick.d $t1, $t0, 0, 0
	bnez $t1, .main_label32
	b .main_label33
.main_label32:
# br label %label55
	b .main_label55
.main_label33:
# %op34 = add i32 %op19, 1
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -84
# br label %label17
	ld.w $a0, $fp, -70
	st.w $a0, $fp, -52
	ld.w $a0, $fp, -84
	st.w $a0, $fp, -56
	b .main_label17
.main_label35:
# %op36 = phi i32 [ %op27, %label55 ], [ %op45, %label52 ]
# %op37 = phi i32 [ 0, %label55 ], [ %op53, %label52 ]
# %op38 = icmp slt i32 %op37, 2
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 2
	slt $t0, $t0, $t1
	st.b $t0, $fp, -93
# %op39 = zext i1 %op38 to i32
	ld.b $t0, $fp, -93
	bstrpick.w $t1, $t0, 0, 0
	st.w $t1, $fp, -97
# %op40 = icmp ne i32 %op39, 0
	ld.w $t0, $fp, -97
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	slt $t3, $t1, $t0
	or $t0, $t2, $t3
	st.b $t0, $fp, -98
# br i1 %op40, label %label41, label %label42
	ld.b $t0, $fp, -98
	bstrpick.d $t1, $t0, 0, 0
	bnez $t1, .main_label41
	b .main_label42
.main_label41:
# br label %label54
	b .main_label54
.main_label42:
# %op43 = add i32 %op28, 1
	ld.w $t0, $fp, -74
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -102
# br label %label26
	ld.w $a0, $fp, -88
	st.w $a0, $fp, -70
	ld.w $a0, $fp, -102
	st.w $a0, $fp, -74
	b .main_label26
.main_label44:
# %op45 = phi i32 [ %op36, %label54 ], [ %op78, %label50 ]
# %op46 = phi i32 [ 0, %label54 ], [ %op51, %label50 ]
# %op47 = icmp slt i32 %op46, 2
	ld.w $t0, $fp, -110
	addi.w $t1, $zero, 2
	slt $t0, $t0, $t1
	st.b $t0, $fp, -111
# %op48 = zext i1 %op47 to i32
	ld.b $t0, $fp, -111
	bstrpick.w $t1, $t0, 0, 0
	st.w $t1, $fp, -115
# %op49 = icmp ne i32 %op48, 0
	ld.w $t0, $fp, -115
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	slt $t3, $t1, $t0
	or $t0, $t2, $t3
	st.b $t0, $fp, -116
# br i1 %op49, label %label50, label %label52
	ld.b $t0, $fp, -116
	bstrpick.d $t1, $t0, 0, 0
	bnez $t1, .main_label50
	b .main_label52
.main_label50:
# %op51 = add i32 %op46, 1
	ld.w $t0, $fp, -110
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# br label %label44
	ld.w $a0, $fp, -200
	st.w $a0, $fp, -106
	ld.w $a0, $fp, -120
	st.w $a0, $fp, -110
	b .main_label44
.main_label52:
# %op53 = add i32 %op37, 1
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# br label %label35
	ld.w $a0, $fp, -106
	st.w $a0, $fp, -88
	ld.w $a0, $fp, -124
	st.w $a0, $fp, -92
	b .main_label35
.main_label54:
# br label %label44
	ld.w $a0, $fp, -88
	st.w $a0, $fp, -106
	addi.w $a0, $zero, 0
	st.w $a0, $fp, -110
	b .main_label44
.main_label55:
# br label %label35
	ld.w $a0, $fp, -70
	st.w $a0, $fp, -88
	addi.w $a0, $zero, 0
	st.w $a0, $fp, -92
	b .main_label35
.main_label56:
# br label %label26
	ld.w $a0, $fp, -52
	st.w $a0, $fp, -70
	addi.w $a0, $zero, 0
	st.w $a0, $fp, -74
	b .main_label26
.main_label57:
# br label %label17
	ld.w $a0, $fp, -34
	st.w $a0, $fp, -52
	addi.w $a0, $zero, 0
	st.w $a0, $fp, -56
	b .main_label17
.main_label58:
# br label %label8
	ld.w $a0, $fp, -20
	st.w $a0, $fp, -34
	addi.w $a0, $zero, 0
	st.w $a0, $fp, -38
	b .main_label8
.main_label59:
# %op60 = mul i32 2, 2
	addi.w $t0, $zero, 2
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# %op61 = mul i32 %op60, 2
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -132
# %op62 = mul i32 %op61, 2
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -136
# %op63 = mul i32 %op62, 2
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -140
# %op64 = mul i32 %op63, 2
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# %op65 = mul i32 %op64, 2
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# %op66 = mul i32 %op65, 2
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# %op67 = mul i32 %op66, 2
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# %op68 = mul i32 %op67, 2
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# %op69 = sdiv i32 %op68, 2
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# %op70 = sdiv i32 %op69, 2
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -168
# %op71 = sdiv i32 %op70, 2
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# %op72 = sdiv i32 %op71, 2
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -176
# %op73 = sdiv i32 %op72, 2
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -180
# %op74 = sdiv i32 %op73, 2
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# %op75 = sdiv i32 %op74, 2
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -188
# %op76 = sdiv i32 %op75, 2
	ld.w $t0, $fp, -188
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -192
# %op77 = sdiv i32 %op76, 2
	ld.w $t0, $fp, -192
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# %op78 = sdiv i32 %op77, 2
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -200
# br label %label0
	addi.w $a0, $zero, 0
	st.w $a0, $fp, -24
	b .main_label0
	addi.d $sp, $sp, 208
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
