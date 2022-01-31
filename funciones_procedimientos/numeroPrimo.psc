Funcion numPrimo <- esPrimo ( num )
	Para i <- 1 Hasta  num Con Paso 1 Hacer
		contador <- 0
		x <- 1
		Mientras x <= num Hacer
			si num % x == 0 Entonces
				contador <- contador + 1
			FinSi
			x <- x + 1
		FinMientras
		si contador == 2 Entonces
			numPrimo <- "Es Primo"
		SiNo
			numPrimo <- "No es primo"
		FinSi
	FinPara
Fin Funcion

Algoritmo numeroPrimo
	
	Escribir "Digite un número :"
	Leer num
	Escribir esPrimo(num)
FinAlgoritmo
