# Soma diagonal principal de uma matriz quadrada
# addr = addrBase + (colIndex + rowIndex*colSize)*dataSize
	.data
matriz: .word 2, 5, 8
	.word 3, 7, 10
	.word 1, 4, 11
size:	.word 3  # Ordem da matriz

.eqv DATA_SIZE 4 # Número de bytes ocupados pelo dado sendo usado (int = 4 Bytes)

	.text
	.globl main
main:
	la $a0, matriz   # $a0 guarda o endereço base da matriz. addrSize
	lw $a1, size     # $s1 guarda a ordem da matriz. rowSize e colSize
	jal somaDiagonal
	move $a0, $v0    # $v0 tem a soma
	li $v0, 1
	syscall
	
	#Termina programa
	li $v0, 10
	syscall
	
somaDiagonal:
	li $v0, 0 # soma = 0
	li $t0, 0 # $t0 é o índice de iteração
	
	for:
		# Cálculo da posição na memória do elemento matriz[i][i]
		mul $t1, $t0, $a1        # $t1 = rowIndex* colSize
		add $t1, $t1, $t0        #               + colIndex
		mul $t1, $t1, DATA_SIZE  #               * dataSize
		add $t1, $t1, $a0        #               + addrBase
		
		lw $t2, 0($t1)            # $t2 = matriz[i][i]
		add $v0, $v0, $t2         # soma = soma + matriz[i][i]
		
		addi $t0, $t0, 1         # contador do for
		blt $t0, $a1, for        # if i < size, próxima iteração
	
	jr $ra
