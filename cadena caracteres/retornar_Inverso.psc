Algoritmo retornar_Inverso
	Definir num Como caracter
	
	Escribir "Ingrese un n�mero : "
	Leer num
	inverso <- ""
	tama�o <- Longitud(num)
	Para x <-0 Hasta Longitud(num) Hacer
		inverso <- inverso + Subcadena(num, tama�o, tama�o)
		tama�o <- tama�o -1
	Fin Para
	
	Escribir "numero inverso es :", inverso
FinAlgoritmo
