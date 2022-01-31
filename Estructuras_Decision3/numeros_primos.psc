Algoritmo numeros_primos
	
	Para numero<- 1 hasta 100 Hacer
		contador <- 0
		x <- 1
		Mientras x <= numero Hacer
			si numero % x == 0 Entonces
				contador <- contador + 1
			FinSi
			x <- x + 1
		FinMientras
		si contador == 2 Entonces
			Escribir  numero
		FinSi
	FinPara
	
FinAlgoritmo
