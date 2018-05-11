# Raiz quadrada de um número pelo método de Herão
	.data
entra:  .asciiz "Insira um numero: "
raiz:   .asciiz "A raiz quadrada eh: "
nl:     .asciiz "\n"
dois:   .float 2.0
um:     .float 1.0

	.text
	.globl main
main:
	li $v0, 4
	la $a0, entra
	syscall
	li $v0, 6
	syscall
	mov.s $f1, $f0 # Valor inserido está em $f1 e precisa ser mantido até fim do programa
	
	li $t0, 1   # Contador
	lwc1 $f3, um # Estimativa inicial, pode ser qualquer valor
	lwc1 $f20, dois # Constante usada na fórmula da raiz quadrada de Herão
	
	jal loop
	
	li $v0, 4
	la $a0, raiz
	syscall
	li $v0, 2 
	mov.s $f12, $f2
	syscall # Imprimir float em $f12
	
	li $v0, 10
	syscall # Termina programa
	
loop:
	# Faz o cálculo de uma aproximação para a raiz quadrada de um número
	# $t0 = contador
	# $f1 = valor cuja raiz será calculada, deve ser mantido até fim do programa
	# $f2 = aproximação final (resultado)
	# $f3 = aproximação inicial (estimativa)
	# Regist. temporátios usados: $f4
	
	div.s $f4, $f1, $f3
	add.s $f4, $f4, $f3
	div.s $f2, $f4, $f20 # Resultado é guardado em $f2
	
	beq $t0, 15, exit # Testa se já pode parar
	# Se não puder parar...
	# Refaz o algoritmo usando o resultado dessa iteração como aproximação
	mov.s $f3, $f2
	
	addi $t0, $t0, 1 # i = i+1
	j loop

exit:
	jr $ra
	