# Raiz quadrada de um n�mero pelo m�todo de Her�o
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
	mov.s $f1, $f0 # Valor inserido est� em $f1 e precisa ser mantido at� fim do programa
	
	li $t0, 1   # Contador
	lwc1 $f3, um # Estimativa inicial, pode ser qualquer valor
	lwc1 $f20, dois # Constante usada na f�rmula da raiz quadrada de Her�o
	
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
	# Faz o c�lculo de uma aproxima��o para a raiz quadrada de um n�mero
	# $t0 = contador
	# $f1 = valor cuja raiz ser� calculada, deve ser mantido at� fim do programa
	# $f2 = aproxima��o final (resultado)
	# $f3 = aproxima��o inicial (estimativa)
	# Regist. tempor�tios usados: $f4
	
	div.s $f4, $f1, $f3
	add.s $f4, $f4, $f3
	div.s $f2, $f4, $f20 # Resultado � guardado em $f2
	
	beq $t0, 15, exit # Testa se j� pode parar
	# Se n�o puder parar...
	# Refaz o algoritmo usando o resultado dessa itera��o como aproxima��o
	mov.s $f3, $f2
	
	addi $t0, $t0, 1 # i = i+1
	j loop

exit:
	jr $ra
	