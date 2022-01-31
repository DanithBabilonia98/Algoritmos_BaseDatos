Algoritmo retornar_Inverso
	Definir num Como caracter
	
	Escribir "Ingrese un número : "
	Leer num
	inverso <- ""
	tamaño <- Longitud(num)
	Para x <-0 Hasta Longitud(num) Hacer
		inverso <- inverso + Subcadena(num, tamaño, tamaño)
		tamaño <- tamaño -1
	Fin Para
	
	Escribir "numero inverso es :", inverso
FinAlgoritmo
