# Implementa em MIPS o algoritmo de ordenação BubbleSort
# Serão tratados apenas de números inteiros

	.data 
vetor:  .word 10,9,8
tam:    .word 3  # Tamanho do vetor
iter:   .word 0 # Iterador
result: .asciiz "Vetor ordenado:\n"
espaco: .asciiz " "
nl:	.asciiz "\n"

	.text
	.globl main
main:
	# Inicializa registradores
	la $s0, vetor # 'la' move para o regist. $s0 o endereço do vetor não seu conteúdo
	lw $s1, tam
	lw $t0, iter
	
	jal imprime_vetor
	
	jal bubble_sort
	
	jal imprime_vetor
	
	li $v0, 10
	syscall
	
	
imprime_vetor:
	# Escreve no console conteúdo do vetor
	# Usa $t0 como iterador
	# Não muda conteúdo do vetor
	addi $sp, $sp, -8
	sw $t0, 0($sp) # Como usarei $t0 nessa função vou salvá-lo na pilha
	sw $t1, 4($sp)
	
	la $t0, vetor #  Iterador contém o endereço do elemento atual, a ser impresso
	sll $t1, $s1, 2 
	add $t1, $t1, $t0 # Salva em $t1 o endereço após o último elemento do vetor = tamVetor*4 + enderecoBase, pois cada elemento ocupa 4 Bytes
	
	for:		
		li $v0, 4
		la $a0, espaco
		syscall
		li $v0, 1
		lw $a0, 0($t0)
		syscall
		
		addi $t0, $t0, 4
		beq $t0, $t1, sai_for # Condição de loop
		j for	
	sai_for:
		# Retorna da pilha para os regist. e volta para função chamadora
		lw $t0, 0($sp)
		lw $t1, 4($sp)
		addi $sp, $sp, 8
	
	li $v0, 4
	la $a0, nl
	syscall  # Quebra linha após impressão do vetor	
	jr $ra # Volta para função chamaroda
	

bubble_sort:
	addi $sp, $sp, -36
	sw $t0, 0($sp) # Interador do for1
	sw $t1, 4($sp) # Fim do for1, endereço após último elemento do vetor
	sw $t2, 8($sp) # Iterador do for2
	sw $t3, 12($sp) # Fim do for2, varia a cada iteração do for1
	sw $t4, 16($sp) # variável auxiliar
	sw $t5, 20($sp) # vetor[i]
	sw $t6, 24($sp) # vetor[i+1]
	sw $t7, 28($sp)
	sw $ra, 32($sp)
	
	la $t0, vetor # $t0 é o iterador com o endereço do elemento atual do for1
	la $t2 vetor # $t2 é o iterador com o endereço do elemento atual do for2
	
	sll $t1, $s1, 2 
	add $t1, $t1, $s0 # Prepara limite do for1: tamVetor*4 + enderecoBase - 1
	subi $t1, $t1, 1
	
	#$t3 é calculado a cada iteração do for1
	
	for1:
		sub $t3, $s1, $t0 #$t3 = tam - $t1
		la $t2, vetor  # Recomeça o iterador
		
		for2:
			# Vamos fazer a comparação vetor[i] > vetor[i+1]
			# i = $t0
			# $t4 = i+1
			addi $t4, $t0, 1
			lw $t5, 0($t0)
			lw $t6, 0($t4)
			
			slt $t7, $t5, $t6 # Checa se vetor[i] ($t5) < vetor[i+1] ($t6) e guarda resultado em $t7
			subi $t7, $t7, 1
			# Se $t7 for negativo a instrução 'slt' resultou em 0 e precisamos trocar
			bltzal $t7, troca # Branch if less than zero and link
			
			addi $t2, $t2, 4
			beq $t2, $t3, sai_for1
			j for2 # Repete for interno
			sai_for2:
				addi $t0, $t0, 4
				beq $t0, $t1, sai_for1
				j for1	
	sai_for1:		
		lw $t0, 0($sp) # Interador do for1
		lw $t1, 4($sp) # Fim do for1, endereço após último elemento do vetor
		lw $t2, 8($sp) # Iterador do for2
		lw $t3, 12($sp) # Fim do for2, varia a cada iteração do for1
		lw $t4, 16($sp) # variável auxiliar
		lw $t5, 20($sp) # vetor[i]
		lw $t6, 24($sp) # vetor[i+1]
		lw $t7, 28($sp)
		lw $ra, 32($sp)
		addi $sp, $sp, 36
		
		jr $ra # Volta para main

troca:
	# Esta função troca o conteúdo de $t5 e $t6 usando $t0 como  regist. temporário
	
	addi $sp, $sp, -4
	sw $t0, 0($sp) # Variável auxiliar na troca
	
	move $t0, $t5
	move $t5, $t6
	move $t6, $t0
	
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	
	jr $ra