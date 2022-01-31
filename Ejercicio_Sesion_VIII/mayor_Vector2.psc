Algoritmo mayor_Vector2
	definir n Como Entero
	Escribir  "Ingrese la dimensión del vector "
	Leer n 
	Dimension vector[n]
	
	para i <- 1  Hasta n Con Paso 1 Hacer
		Escribir "Ingrese numero ", i
		Leer vector[i]
	FinPara
	
	mayor <- 0
	para x <- 1 Hasta n Con Paso 1 Hacer
		si vector[x] > mayor Entonces
			may <- vector[x]
		FinSi
	FinPara
	Imprimir "Mayor : " , may
FinAlgoritmo
