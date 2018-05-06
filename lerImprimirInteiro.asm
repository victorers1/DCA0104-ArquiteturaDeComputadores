.text

	.globl inicio
	
	inicio:
		jal le_inteiro_do_teclado  # chama fun��o para ler
		la  $t7, 0($v0)		   # carrega o inteiro lido em $t7
		jal imprime_inteiro	   # manda imprimir o numero lido
		j   fim			   # encerra o programa
	
	le_inteiro_do_teclado:
		li $v0, 5	# c�digo para ler um inteiro
		syscall		# executa a chamada do SO para ler
		jr $ra		# volta para o lugar de onde foi chamado (no caso, jal le_inteiro_do_teclado)
		
	imprime_inteiro:
		li $v0, 1	# c�digo para imprimir um inteiro
		la $a0, ($t7)	# $a0 � o registrador que ir� conter o valor a ser impresso
		syscall		# executa a chamado do SO para imprimir
		jr $ra		# volta para o lugar de onde foi chamado (no caso, jal imprime_inteiro)
		
	fim:
		li $v0, 10	# c�digo para encerrar o programa
		syscall		# executa a chamada do SO para encerrar