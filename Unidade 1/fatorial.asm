# Este programa calcula o fatorial de um inteiro N

	.text
	.globl main
main:
	# Recebe um inteiro
	li      $v0, 4    # Imprimir String
	la      $a0, num1 # Fornece endereço da string
	syscall
	li      $v0, 5 # Ler inteiro
	syscall
	la $t0, 0($v0)
	
	la   $t2, 0($t0)        # Inicializa regist. que contém o fatorial de N com o próprio N
	la   $t1, 0($t0)        # Inicializa cont do loop, que vai de N-1 até 0
	subi $t1, $t1, 1 #cont=N-1


loop:
	beq  $t1, $zero, exit # Se contador $t1 for igual a 0, saia
	mult $t2, $t1        #fat=fat*i
	mflo $t2
	subi $t1, $t1, 1     #i=i-1
	j    loop            # Repetir o loop

exit:
	li $v0, 4 # Imprimir string
	la $a0, fat
	syscall

	li $v0, 1 # Imprimir inteiro (fatorial de N)
	la $a0, 0($t2)
	syscall

# Sai do programa
	li $v0, 4
	la $a0, nl # Imprime nova linha
	syscall
	li $v0, 10
	syscall

.data
	num1:   .asciiz "Forneça um inteiro: "
	fat:    .asciiz "Fatorial: "
	nl:     .asciiz "\n" #Nova linha