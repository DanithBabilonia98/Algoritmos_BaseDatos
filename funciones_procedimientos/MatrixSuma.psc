Funcion Matrix_Suma ( m)
	
	Dimension matrix1[m,m]
	Dimension matrix2[m , m]
	Dimension matrixSuma[m , m]
	
	
	//LLenanos la primera matrix con valores aleatorios
	Para i <- 1 Hasta m Con Paso 1 Hacer
		para j <- 1 Hasta m Con Paso 1 Hacer
			matrix1[i,j] <- azar(100)
		FinPara
	FinPara
	//Llenamos la siguiente matrix con otros valores aleatorios
	Para k <- 1 Hasta m Con Paso 1 Hacer
		para l <- 1 Hasta m Con Paso 1 Hacer
			matrix2[k,l]<- azar(100)
		FinPara
	FinPara
	Escribir "Matrix 1"
	Escribir ""
	Para i <-1 Hasta m Con Paso 1 Hacer
		para j <- 1 Hasta m Con Paso 1 Hacer
			Escribir Sin Saltar " ", matrix1[i,j]
		FinPara
		Escribir " "
	FinPara
	
	Escribir ""
	Escribir "Matriz 2" 
	Para i <- 1 Hasta m Con Paso 1 Hacer
		Para j <- 1 Hasta m Con Paso 1 Hacer
			Escribir Sin Saltar " ", matrix2[i,j]
		FinPara
		Escribir " "
	FinPara
	//En la tercera matriz procedemos a realizar la suma de la primera y la segunda matrix, guardando los valores resultantes en la tercera matrix
	Para p <- 1 Hasta m Con Paso 1 Hacer
		para q <- 1 Hasta m Con Paso 1 Hacer
			matrixSuma[p,q] <- matrix1[p,q] + matrix2[p,q]
		FinPara
	FinPara
	
	Escribir  " "
	Escribir "Matrix Resultante: Suma "
	Para i <- 1 Hasta  m Con Paso 1 Hacer
		Para  j <-1 Hasta m Con Paso 1 Hacer
			Escribir Sin Saltar " ", matrixSuma[i,j]
		FinPara
		Escribir " "
	FinPara
Fin Funcion

Algoritmo SumaMatrices
	Escribir "Valor (m*m) de las matrices :"
	Leer variableNum
	
	Matrix_Suma(variableNum)
	
FinAlgoritmo
