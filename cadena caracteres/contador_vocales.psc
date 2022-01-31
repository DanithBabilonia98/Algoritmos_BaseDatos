Algoritmo contador_vocales
	Definir frase, vocales Como Caracter
	
	Escribir "digite una frase : "
	Leer frase
	frase<- Minusculas(frase)
	vocales <- "aeiouáéíóúü"
	
	Para x<-1 Hasta Longitud(frase) Hacer
		Para j<- 1 Hasta Longitud(vocales) Hacer
			si Subcadena(frase, x, x )=Subcadena(vocales, j,j) Entonces
				cant_vocales <- cant_vocales + 1
				j<- Longitud(vocales)
			FinSi
			
		Fin Para
	Fin Para
	Escribir  "cantidad vocales ", cant_vocales
FinAlgoritmo
