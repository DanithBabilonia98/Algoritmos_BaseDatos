Funcion matrix <- CrearMatrix ( )
	Escribir "Digite el valor para crear la matrix "
	Leer n
	Dimension matrix[n , n]
	
	Para i <-1 Hasta n Con Paso 1 Hacer
		para j <- 1 Hasta n Con Paso 1 Hacer
			Escribir "Ingresese el valor para la posición ", j
			Leer dato
			matrix[i,j] <- dato
		FinPara
	FinPara
	
	Para i<- 1 Hasta n Con Paso 1 Hacer
		para j <- 1 Hasta n Con Paso 1 Hacer
			mattrix <- matrix[i,j]
			Escribir Sin Saltar" ", mattrix;
		FinPara
		Escribir ""
	FinPara
	
	Para i <-1 hasta n Con Paso 1 Hacer
		Para j <-1 Hasta n Con Paso 1 Hacer
			si(matrix[i,j] == matrix[j,i]) Entonces
				var <-Verdadero 
				//Escribir "Matrix es simétrica"
			SiNo
				var <- Falso
			FinSi
		FinPara
	FinPara
	si var = Verdadero  Entonces
		Escribir "Matrix de " n , " x ", n, " es simetrica "
	SiNo
		Escribir "no es simétrica"
	FinSi
FinFuncion


Algoritmo MatrixSimétrica
	
	matrix <- CrearMatrix()
	
FinAlgoritmo
