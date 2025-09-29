.section .rodata
# ... (rodata section is unchanged) ...
msg_c:          .string "c = %d\n"
msg_cond:       .string "Conditional result c = %d\n"
msg_sum_for:    .string "Sum after for loop = %d\n"
msg_sum_while:  .string "Sum after while loop = %d\n"
msg_arr:        .string "Array arr: "
msg_arr_elem:   .string "%d "
msg_newline:    .string "\n"
msg_mat:        .string "Matrix mat:\n"
msg_factorial:  .string "factorial(5) = %d\n"


.section .text
.globl main

# 递归函数 factorial(int n)
factorial:
    addi sp, sp, -16      # 分配16字节栈空间
    # FIXED: 使用 sd/ld 保存/恢复 64位的返回地址
    sd ra, 8(sp)          # 保存返回地址 (8 bytes)
    sw a0, 0(sp)          # 保存参数 n (4 bytes is enough for int)
    
    # 检查 n <= 1
    li t0, 1
    bgt a0, t0, factorial_recursive
    
    # n <= 1, 返回1
    li a0, 1
    ld ra, 8(sp)
    addi sp, sp, 16
    jr ra
    
factorial_recursive:
    # n > 1, 计算 n * factorial(n-1)
    addi a0, a0, -1       # n-1
    call factorial        # 递归调用
    
    lw t0, 0(sp)          # 恢复原来的 n
    mul a0, t0, a0        # n * factorial(n-1)
    
    ld ra, 8(sp)
    addi sp, sp, 16
    jr ra

main:
    # 函数开始，分配栈空间
    addi sp, sp, -128     # 为局部变量分配栈空间
    # FIXED: 使用 sd/ld 保存/恢复 64位的返回地址
    # 偏移量调整为120以保持8字节对齐
    sd ra, 120(sp)        # 保存返回地址 (8 bytes)
    
    # ---------- 基本变量初始化 ----------
    li t0, 10             # a = 10
    sw t0, 0(sp)          # a 存储在 sp+0
    li t0, 3              # b = 3
    sw t0, 4(sp)          # b 存储在 sp+4
    
    # ... (其余所有逻辑都正确，无需改变) ...
    # ---------- 数值运算 ----------
    lw t0, 0(sp)
    lw t1, 4(sp)
    li t2, 2
    mul t3, t1, t2
    add t4, t0, t3
    div t5, t0, t1
    rem t6, t5, t2
    sub t0, t4, t6
    slli t0, t0, 1
    ori t0, t0, 5
    andi t0, t0, 7
    not t0, t0
    sw t0, 8(sp)
    la a0, msg_c
    lw a1, 8(sp)
    call printf
    # ---------- 条件与短路 ----------
    lw t0, 0(sp)
    lw t1, 4(sp)
    sgt t2, t0, t1
    sgtz t3, t1
    and t4, t2, t3
    seqz t5, t0
    or t6, t4, t5
    beqz t6, else_branch
    li t0, 42
    sw t0, 8(sp)
    j endif
else_branch:
    li t0, -1
    sw t0, 8(sp)
endif:
    la a0, msg_cond
    lw a1, 8(sp)
    call printf
    # ---------- 循环 ----------
    sw zero, 12(sp)
    sw zero, 16(sp)
for_loop:
    lw t0, 16(sp)
    li t1, 5
    bge t0, t1, for_end
    li t1, 2
    beq t0, t1, for_continue
    li t1, 4
    beq t0, t1, for_end
    lw t1, 12(sp)
    add t1, t1, t0
    sw t1, 12(sp)
for_continue:
    lw t0, 16(sp)
    addi t0, t0, 1
    sw t0, 16(sp)
    j for_loop
for_end:
    la a0, msg_sum_for
    lw a1, 12(sp)
    call printf
    sw zero, 20(sp)
while_loop:
    lw t0, 20(sp)
    li t1, 3
    bge t0, t1, while_end
    lw t1, 12(sp)
    add t1, t1, t0
    sw t1, 12(sp)
    lw t0, 20(sp)
    addi t0, t0, 1
    sw t0, 20(sp)
    j while_loop
while_end:
    la a0, msg_sum_while
    lw a1, 12(sp)
    call printf
    # ---------- 数组 ----------
    li t0, 0
array_init_loop:
    li t1, 5
    bge t0, t1, array_init_end
    mul t2, t0, t0
    slli t3, t0, 2
    addi t4, sp, 24
    add t4, t4, t3
    sw t2, 0(t4)
    addi t0, t0, 1
    j array_init_loop
array_init_end:
    la a0, msg_arr
    call printf
    sw zero, 16(sp)
array_print_loop:
    lw t0, 16(sp)
    li t1, 5
    bge t0, t1, array_print_end
    slli t2, t0, 2
    addi t3, sp, 24
    add t3, t3, t2
    lw t4, 0(t3)
    la a0, msg_arr_elem
    mv a1, t4
    call printf
    lw t0, 16(sp)
    addi t0, t0, 1
    sw t0, 16(sp)
    j array_print_loop
array_print_end:
    la a0, msg_newline
    call printf
    # ---------- 二维数组 ----------
    li t0, 0
mat_init_outer:
    li t1, 2
    bge t0, t1, mat_init_end
    li t2, 0
mat_init_inner:
    li t3, 3
    bge t2, t3, mat_init_inner_end
    add t4, t0, t2
    li t5, 3
    mul t6, t0, t5
    add t6, t6, t2
    slli t6, t6, 2
    addi t5, sp, 44
    add t5, t5, t6
    sw t4, 0(t5)
    addi t2, t2, 1
    j mat_init_inner
mat_init_inner_end:
    addi t0, t0, 1
    j mat_init_outer
mat_init_end:
    la a0, msg_mat
    call printf
    sw zero, 16(sp)
mat_print_outer:
    lw t0, 16(sp)
    li t1, 2
    bge t0, t1, mat_print_end
    sw zero, 20(sp)
mat_print_inner:
    lw t2, 20(sp)
    li t3, 3
    bge t2, t3, mat_print_inner_end
    lw t0, 16(sp)
    li t4, 3
    mul t5, t0, t4
    add t5, t5, t2
    slli t5, t5, 2
    addi t4, sp, 44
    add t4, t4, t5
    lw t6, 0(t4)
    la a0, msg_arr_elem
    mv a1, t6
    call printf
    lw t2, 20(sp)
    addi t2, t2, 1
    sw t2, 20(sp)
    j mat_print_inner
mat_print_inner_end:
    la a0, msg_newline
    call printf
    lw t0, 16(sp)
    addi t0, t0, 1
    sw t0, 16(sp)
    j mat_print_outer
mat_print_end:
    # ---------- 递归函数调用 ----------
    li a0, 5
    call factorial
    mv t0, a0
    
    la a0, msg_factorial
    mv a1, t0
    call printf
    
    # 函数结束
    li a0, 0              # return 0
    # FIXED: 使用 ld 恢复 64位 返回地址
    ld ra, 120(sp)        # 恢复返回地址
    addi sp, sp, 128      # 释放栈空间
    jr ra

# 需要链接的外部函数声明
.globl printf