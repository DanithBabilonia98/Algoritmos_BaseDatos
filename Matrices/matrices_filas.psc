Algoritmo matrices_filas
	Definir i,j como Entero
	Definir M Como Numero
	
	Escribir Sin Saltar "Cantidad de filas : "
	Leer filas
	Escribir Sin Saltar "Cantidad de columnas : "
	Leer columnas
	
	Dimension Matriz[filas,columnas];
	Para i<-1 Hasta filas Con Paso 1 Hacer
		Para j<-1 Hasta columnas Con Paso 1 
			x<-x+1
			Matriz[i,j]<-x;
		Fin Para
	Fin Para
	Para i<-1 Hasta filas Con Paso 1 Hacer
		Para j<-1 Hasta columnas Con Paso 1 Hacer
			Escribir Sin Saltar " 	 " Matriz[i,j];
		Fin Para
		Escribir " "
	Fin Para
FinAlgoritmo
