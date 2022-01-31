Algoritmo Suma_Vector
	definir n Como Entero
	Escribir  "Ingrese la dimensión del vector "
	Leer n 
	Dimension vector[n]
	para i <- 1  Hasta n Con Paso 1 Hacer
		Escribir "Ingrese numero ", i
		Leer vector[i]
	FinPara
	sum <- 0
	para i<-1 Hasta n Con Paso 1 Hacer
		sum <- sum + vector[i]
	FinPara
	
	Escribir "La suma es: ", sum
FinAlgoritmo
