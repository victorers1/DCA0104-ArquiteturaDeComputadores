	.data
num1:   .float 3.14
num2:   .float 2.71

	.text
main:
	lwc1 $f0, num1
	lwc1 $f1, num2
	
	add.s $f3, $f0, $f1