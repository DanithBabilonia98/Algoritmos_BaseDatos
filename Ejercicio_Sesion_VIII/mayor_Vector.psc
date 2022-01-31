Algoritmo mayor_Vector
	definir n Como Entero
	Escribir  "Ingrese la dimensión del vector "
	Leer n 
	Dimension vector[n]
	
	para i <- 1  Hasta n Con Paso 1 Hacer
		Escribir "Ingrese numero ", i
		Leer vector[i]
	FinPara
	
	mayor <- 1
	para x <- 2 Hasta n Con Paso 1 Hacer
		si vector[x] > vector[mayor] Entonces
			may <- vector[x]
		FinSi
	FinPara
	Imprimir "Mayor : " , may
FinAlgoritmo
