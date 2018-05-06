# Tabuada
# Recebe um número inteiro entre 1 e 9 e imprime sua tabuada

	.data
vezes:  .asciiz " x "
nl:     .asciiz "\n"
igual:  .asciiz " = "
entra:  .asciiz "Digite um numero: "

	.text
	.globl main
main:
	li $v0, 4
	la $a0, entra
	syscall
	li $v0, 5
	syscall
	move $s0, $v0 # N agora está em $s0
	li $t0, 0 # Contador
	j loop
	

loop:
	beq  $t0, 11, exit # Se contador $t1 for 10 (decimal), pula para função 'exit'

	li   $v0, 1
	move $a0, $s0
	syscall # "N"
	li   $v0, 4
	la   $a0, vezes
	syscall # "N x "
	li   $v0, 1
	move $a0, $t0
	syscall # "N x i"
	li   $v0, 4
	la   $a0, igual
	syscall # "N x i = "

	mul  $t1, $s0, $t0
	
	li   $v0, 1
	move $a0, $t1
	syscall # "N x i = prod"

	li   $v0, 4
	la   $a0, nl
	syscall # Pula linha
	
	addi $t0, $t0, 1 # i = i+1
	j loop

exit:
	li $v0, 10
	syscall
	