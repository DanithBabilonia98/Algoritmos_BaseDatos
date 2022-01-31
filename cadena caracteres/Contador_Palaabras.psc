Algoritmo Contador_Palaabras
	Escribir "frase : "
	Leer  frase
	
	para i<-0 hasta Longitud(frase) Con Paso 1 Hacer
		si (Subcadena(frase, i, i)== ' ') o (Subcadena(frase,i,i)== '') Entonces
			
			cont_palabra <- cont_palabra + 1
			
		FinSi
		
	FinPara
	
	Escribir "Palabras : ", cont_palabra
	
FinAlgoritmo
