#! riscv

.global main
.align
.file
.local
.text 

.asciz "foo"
.variant_cc 
.balign 
main:
    lb t0, sp, 0        # load a byte
    lh t0, x5, 0x0F     # load a halfword
    lbu t0, x5, 0b10    # load byte unsigned
    lhu t0, x5, 0       # load halfword unsigned

    sb t0, x12, 0  # store byte
    sh t0, x20, 0  # store halfword
    sw t0, x0, 0  # store word

    sll t1, a2, 
    slli 
    srl
    srli
    sra
    srai

    add 
    addi
    sub
    lui
    auipc

    xor
    xori
    or
    ori
    and
    andi

    slt
    slti
    sltu
    sltiu

    beq
    bne
    blt
    bge
    bltu
    bgeu

    jal
    jalr

    fence
    fence.i

    scall
    sbreak

    rdcycle
    rdcycleh
    rdtime
    rdtimeh
    rdinstret
    rdinstreth
    
    mul
    mulh
    mulhsu
    mulhu
    div
    divu
    rem
    remu
