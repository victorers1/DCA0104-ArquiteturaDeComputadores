	.data

victor: .asciiz "Victor "
ola:    .asciiz "Ola "
mundo:  .asciiz "Mundo"
nl:     .asciiz "\n"

vetor:    .word  victor, nl, ola, mundo
iterador: .word 0
tamanho:  .word 4

	.text
	.globl main
main:	
	la $t0, vetor # Em $t0 está o endereço do começo do vetor
	lw $t1, iterador
	lw $t2, tamanho
	
begin_loop:
	bgt $t1 $t2, exit_loop # Sai do loop se o iterador é maior que o tamanho do vetor
	sll $t3, $t1, 2 # $t3 = $t1*4, $t3 é um múltiplo de 4
	addu $t3, $t3, $t0 # põe em $t3 o endereço exato do elemento no array
	
	li $v0, 4
	lw $a0, 0($t3)
	syscall
	
	addi $t1,$t1,1
	j begin_loop

exit_loop:
	li $v0, 10
	syscall
