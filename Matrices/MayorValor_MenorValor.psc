Algoritmo sin_titulo
	Definir Matriz,datos,suma Como Real
	
	Escribir Sin Saltar "Cantidad de filas : "
	Leer filas
	Escribir Sin Saltar "Cantidad de columnas : "
	Leer columnas
	
	Dimension Matriz[filas,columnas];
	
	Para i<-1 Hasta filas Con Paso 1 Hacer
		Para j<-1 Hasta columnas Con Paso 1 Hacer
			Escribir Sin Saltar"Ingrese el dato de la posición [", i,",",j,"]";
			Leer datos;
			Matriz[i,j]<-datos;
		Fin Para
	Fin Para
	Para i<-1 Hasta filas Con Paso 1 Hacer
		Para j<-1 Hasta columnas Con Paso 1 Hacer
			Escribir Sin Saltar " 	 " Matriz[i,j];
		Fin Para
		Escribir " "
	Fin Para
	//hallar el mayor valor
	mayorValor <-0
	Para i <- 1 Hasta filas Con Paso 1 Hacer
		Para j <-1 Hasta columnas Con Paso 1 Hacer
			si matriz[i,j] > mayorValor Entonces
				mayorValor <- matriz[i,j]
				posicionfila <- i 
				posicionColumna <-j
			FinSi
		FinPara
	FinPara
	Escribir "El mayor valor se encuentra en la posición ","[", posicionfila,",",posicionColumna,"]"," y es:", mayorValor
	
	//Hallar el menor valor
	
	menorValor <-matriz[1,1]
	Para i <- 1 Hasta filas Con Paso 1 Hacer
		Para j <-1 Hasta columnas Con Paso 1 Hacer
			si matriz[i,j] <= menorValor Entonces
				menorValor <- matriz[i,j]
				posicionfila2 <- i 
				posicionColumna2 <-j 
			FinSi
		FinPara
	FinPara
	Escribir "El menor valor se encuentra en la posición ","[", posicionfila2,",",posicionColumna2,"]"," y es:", menorValor
	
FinAlgoritmo
