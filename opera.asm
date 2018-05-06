# Recebe dois inteiros - o1p, op2 - e imprime: op1-op2, op1*op2 e o quociente e resto da divisão op1/op2.

	.text
	.globl main
main:
	# Aquisição do primeiro operando
	li $v0, 4 # Imprimir String
	la $a0, op1
	syscall
	li $v0, 5 # Ler inteiro
	syscall
	move $t0, $v0
	
	# Aquisição do segundo operando
	li $v0, 4
	la $a0, op2
	syscall
	li $v0, 5
	syscall
	move $t1, $v0
	
	# Cálculos
	sub $t2, $t0, $t1
	
	mult $t1, $t0 # Realiza a multiplicação e guarda os 64 bits resultantes nos regist. Hi e Lo
	mflo $t3      # Move para $t3 os 32 bits menos significativos
	
	div $t0, $t1 # Realiza a divisão inteira e guarda o resto no regist. Hi e o quociente em Lo
	mflo $t4          # Move para $t4 o quociente
	mfhi $t5          # Move para $t5 o resto
	
	# Impressão do resultado
	li $v0, 4      # Imprimir string
	la $a0, resSub # Fornece endereço da string
	syscall	       # Executa ação indicada em $v0
	li $v0, 1      # Imprimir inteiro em $a0
	move $a0, $t2  # Prepara inteiro para ser impresso
	syscall
	li $v0, 4
	la $a0, nl
	syscall
	
	li $v0, 4       
	la $a0, resMult 
	syscall
	li $v0, 1    
	move $a0, $t3 
	syscall
	li $v0, 4
	la $a0, nl
	syscall
	
	li $v0, 4     
	la $a0, resDiv  # Imprime quiciente da divisão
	syscall
	li $v0, 1
	move $a0, $t4
	syscall
	
	li $v0, 4     
	la $a0, resRes  # Imprime resto da divisão
	syscall
	li $v0, 1
	move $a0, $t5
	syscall
	
	li $v0, 10 # Sair da função. Como estamos na main, sai do programa
	syscall


	.data
op1:    .asciiz "Digite primeiro operando: "
op2:    .asciiz "Digite segundo operando: "
resSub: .asciiz "Resultado da Subtracao op1 - op2: "
resMult:.asciiz "Resultado da Multiplicacao: "
resDiv: .asciiz "Quociente da Divisao op1/op2: "
resRes: .asciiz ", Resto da Divisao: "
nl: 	.asciiz "\n"