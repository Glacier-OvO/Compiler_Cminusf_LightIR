	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
.main_label_entry:
# %op0 = alloca i32
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = alloca i32
	addi.d $t1, $fp, -40
	st.d $t1, $fp, -36
# store i32 10, i32* %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# store i32 0, i32* %op1
	ld.d $t0, $fp, -36
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2
	b .main_label2
.main_label2:
# %op3 = load i32, i32* %op1
	ld.d $t0, $fp, -36
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op4 = load i32, i32* %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op5 = icmp slt i32 %op3, %op4
	ld.w $t0, $fp, -44
	ld.w $t1, $fp, -48
	slt $t0, $t0, $t1
	st.b $t0, $fp, -49
# %op6 = zext i1 %op5 to i32
	ld.b $t0, $fp, -49
	bstrpick.w $t1, $t0, 0, 0
	st.w $t1, $fp, -53
# %op7 = icmp ne i32 %op6, 0
	ld.w $t0, $fp, -53
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	slt $t3, $t1, $t0
	or $t0, $t2, $t3
	st.b $t0, $fp, -54
# br i1 %op7, label %label8, label %label12
	ld.b $t0, $fp, -54
	bstrpick.d $t1, $t0, 0, 0
	bnez $t1, .main_label8
	b .main_label12
.main_label8:
# %op9 = load i32, i32* %op1
	ld.d $t0, $fp, -36
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -58
# call void @output(i32 %op9)
	ld.w $a0, $fp, -58
	bl output
# %op10 = load i32, i32* %op1
	ld.d $t0, $fp, -36
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -62
# %op11 = add i32 %op10, 1
	ld.w $t0, $fp, -62
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -66
# store i32 %op11, i32* %op1
	ld.d $t0, $fp, -36
	ld.w $t1, $fp, -66
	st.w $t1, $t0, 0
# br label %label2
	b .main_label2
.main_label12:
# ret i32 0
	addi.w $a0, $zero, 0
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	jr $ra
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
