Algoritmo numero_Perfecto
	Definir limite_superior, limite_inferior, perfecto Como Real
	
	Escribir "limite superior "
	Leer  limite_superior
	Escribir  "limite inferior "
	Leer limite_inferior
	
	perfecto <- 0
	contador <- 0
	Para x <- limite_inferior Hasta limite_superior Con Paso 1 Hacer
		perfecto <- 0
		para j <- 1 hasta trunc(x/2) Hacer
			si (x mod j) = 0 Entonces
				perfecto<- perfecto + j
			FinSi
		FinPara
		
		si perfecto = x Entonces
			Escribir "El número ", x, " es perfecto"
		FinSi
	Fin Para
	
FinAlgoritmo
