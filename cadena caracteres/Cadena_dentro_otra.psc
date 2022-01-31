Algoritmo Cadena_dentro_otra
	Escribir "frase : "
	Leer  frase
	
	Escribir "palabra a buscar: "
	Leer  cad
	
	para i<-1 hasta Longitud(frase) Con Paso 1 Hacer
		si (Subcadena(frase, i, i)== ' ') Entonces
			si caracter == cad Entonces
				cont_palabra <- cont_palabra + 1
			FinSi
			caracter <- ''
		SiNo
			caracter <- caracter + Subcadena(frase,i,i)
		FinSi
		
	FinPara
	
	Escribir "Palabra :", cad , " aparece : ", cont_palabra
	
FinAlgoritmo
