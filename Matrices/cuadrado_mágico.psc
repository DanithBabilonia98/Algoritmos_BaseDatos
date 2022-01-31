Algoritmo cuadrado_mágico
	Escribir "Ingrese un número impar mayor que n "
	leer tamaño
	Dimension matrixMagica[tamaño, tamaño]
	celda <- 1
	fila <- 1
	columna <- (tamaño/2)+ 1/2 //Mediante esta formula buscamos la mitad o el centro de la fila, su correspondiente columna
	matrixMagica[fila, columna] <- celda
	celda <- celda + 1
	Mientras celda <= tamaño^2 Hacer
		
		fila<- fila -1 //subir una fila
		si fila < 1 Entonces
			fila <- tamaño
		FinSi
		columna <- columna +1 
		
		si columna > tamaño Entonces //Validar que la columna no supere el valor del tamaño 
			columna <- 1
		FinSi
		
		si matrixMagica[fila, columna] == 0 Entonces
			matrixMagica[fila, columna] <- celda
		SiNo
			fila <- fila+ 1
			si fila > tamaño Entonces
				fila<-1
			FinSi
			matrixMagica[fila, columna] <- celda
		FinSi
		celda <- celda + 1
	FinMientras
	
	//Suma de la diagonal principal 
	sumaDiagonal <- 0
	para i <-1 Hasta tamaño Con Paso 1 Hacer
		para j<- 1 Hasta tamaño Con Paso 1 Hacer
			si j==i Entonces
				sumaDiagonal <- sumaDiagonal + matrixMagica[i,j]
			FinSi
		FinPara
	FinPara
	//Suma de la diagonnal invertida
	diagonalInvertida <- 0
	columna <- tamaño
	para i <-1 Hasta tamaño Con Paso 1 Hacer
		diagonalInvertida <- diagonalInvertida + matrixMagica[i, columna]
		columna <- columna -1
	FinPara
	//Calculamos la constante que debe sumar cada fila, columna y digaonal de la matriz
	constanteMagica <- (tamaño*(tamaño^2 + 1))/2
	Escribir "La constante mágica es :", constanteMagica
	Escribir  "La suma de la diagonal principal es :", sumaDiagonal
	escribir "La suma de la diagonal invertida es  :", diagonalInvertida
	Escribir  ""
	
	//validamos que las sumas de las diagnoales sea igual a la consntate y mostramos la matrices
	//en caso sea verdadero
	
	si diagonalInvertida == sumaDiagonal y sumaDiagonal == constanteMagica Entonces
		Escribir  "-----Cuadrado Mágico-----"
		Escribir  "----------- ",tamaño, " * ", tamaño, " ------------"
		
		Para i <-1 Hasta tamaño Con Paso 1 Hacer
			Para  j <- 1 Hasta tamaño Con Paso 1 Hacer
				espacio <- "";
				si matrixMagica[i,j] < 10 Entonces				
					espacio <- "  ";
				Sino
					si matrixMagica[i,j]< 100 Entonces					
						espacio <- " ";			
					FinSi
				FinSi
				Escribir Sin Saltar " ", espacio , matrixMagica[i,j]," ";
				
			FinPara
			Escribir "";
		FinPara
	SiNo
		Escribir "La matriz no se puede mostrar porque la matriz no es mágica"
	FinSi
	FinAlgoritmo
