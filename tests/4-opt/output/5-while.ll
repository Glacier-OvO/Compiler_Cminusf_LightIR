; ModuleID = 'cminus'
source_filename = "/home/ymf/Desktop/Compiler/2024ustc-jianmu-compiler/tests/4-opt/testcases/functional-cases/5-while.cminus"

declare i32 @input()

declare void @output(i32)

declare void @outputFloat(float)

declare void @neg_idx_except()

define i32 @main() {
label_entry:
  br label %label0
label0:                                                ; preds = %label_entry, %label5
  %op1 = phi i32 [ 0, %label_entry ], [ %op6, %label5 ]
  %op2 = icmp slt i32 %op1, 10
  %op3 = zext i1 %op2 to i32
  %op4 = icmp ne i32 %op3, 0
  br i1 %op4, label %label5, label %label7
label5:                                                ; preds = %label0
  call void @output(i32 %op1)
  %op6 = add i32 %op1, 1
  br label %label0
label7:                                                ; preds = %label0
  ret i32 0
}
