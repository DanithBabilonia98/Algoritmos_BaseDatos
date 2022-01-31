Algoritmo aumento_Salario
	Definir salario , salario_incremento Como Real
	
	Escribir "Ingrese el salario que usted está ganando : "
	Leer salario
	
	si salario <= 0 Entonces
		Escribir "Salario inválido"
	SiNo
		si salario < 1000000 Entonces
			salario_incremento <- salario + (salario *0.10)
			Escribir "Su nuevo salario es : ", salario_incremento
		SiNo
			Escribir "Su salario sigue siendo : ", salario
		FinSi
	
	FinSi
	
FinAlgoritmo
