# Soma dois números dados pelo usuário

	.text
	.globl main
main:
	li $v0, 4      # Carregar 4 em $v0 significa imprimir string
	la $a0, num1   # O endereço da string a ser impressa deve estar no regist. a0
	syscall        # Executa a ação indicada em $v0
	
	li $v0, 5      # Carregar 5 em $v0 significa ler um inteiro, que é guardado me $v0
	syscall        # Executa a ação indicada em $v0
	move $t0, $v0  # Guarda valor lido em $t0

	li $v0, 4
	la $a0, num2
	syscall

	li $v0, 5
	syscall
	move $t1, $v0

	add $t2, $t0, $t1 #$t2 = $t1 + $t0

	li $v0, 4
	la $a0, res
	syscall

	li $v0, 1     # Carregar 1 em $v0 significa imprimir inteiro
	move $a0, $t2 # O inteiro deve estar em $a0
	syscall

	li $v0, 10 # Sair do programa
	syscall

	.data
num1:   .asciiz "Digite o primeiro numero: "
num2:   .asciiz "Digite o segundo numero: "
res:    .asciiz  "Resultado: "

