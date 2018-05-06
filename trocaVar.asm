# Há uma função para trocar variáveis e outra para imprimir na tela
	.text
	.globl main
main:
	# AquisiÃ§Ã£o dos valores
	li   $v0, 4
	la   $a0, a
	syscall
	li   $v0, 5
	syscall
	la $s0, 0($v0)  #move $t0, v0 # Valor de A pronto

	li   $v0, 4
	la   $a0, b
	syscall
	li   $v0, 5
	syscall
	la $s1, 0($v0) #move $s1, v0 # Valor de B pronto

	# Demonstração da ordem de A e B antes da troca
	li   $v0, 4
	la   $a0, antes
	syscall
	jal  print

	# Demonstração da ordem de A e B depois da troca
	li   $v0, 4
	la   $a0, depois
	syscall

	jal  troca

	# Demonstração da ordem de A e B depois de sair da função 'troca'
	# A e B devem retornar para seus regist. originais
	li   $v0, 4
	la   $a0, antes
	syscall

	jal  print

	li $v0, 10
	syscall



print:	
	# Imprime "A=" seguido do valor em $s0, e "B=" seguido do valor em $s1
	# Não tem valores para retornar
	li   $v0, 4
	la   $a0, a
	syscall
	li   $v0, 1
	la $a0, ($s0)
	syscall

	li   $v0, 4
	la   $a0, b
	syscall
	li   $v0, 1
	la $a0, 0($s1)
	syscall

	li $v0, 4
	la $a0, nl
	syscall

	jr   $ra # Retorna para funÃ§Ã£o 'callee' exatamente de onde foi interrompida



troca:
	# Troca os valores em $s0 e $s1 de lugares
	# Antes de trocar, salva na pilha os valores dos regist. usados
	# No fim, os regist. estão com seus valores originais
	addi $sp, $sp, -12 # Abaixa ponteiro stack para armazenar dois inteiros na pilha
	sw   $s0, 0($sp)   #$sp[0..3] = $s0 -- Salva $s0
	sw   $s1, 4($sp)   #$sp[4..7] = $s1 -- Salva $s1
	sw   $ra, 8($sp)   #$sp[8..11]= $ra -- Salva endereço da função que o chamou

	# Realiza a troca
	la $t0, 0($s0)
	la $s0, 0($s1)
	la $s1, 0($t0)

	jal  print

	# Retira da pilha para os respectivos regist.
	lw   $s0, 0($sp)
	lw   $s1, 4($sp)
	lw   $ra, 8($sp)
	addi $sp, $sp, 12
	
	jr   $ra

	.data
a:      .asciiz "A= "
b:	.asciiz ", B= "
antes:  .asciiz "Antes da troca temos \n"
depois: .asciiz "Depois da troca temos \n"
nl:     .asciiz "\n"
